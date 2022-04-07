<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Clients extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('username')) {
            redirect('auth');
        }
        $this->load->library('form_validation');
        $this->load->model('m_clients');
    }

    public function index()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Manajemen Clients';

        // Load Library Pagination
        $this->load->library('pagination');
        // Config
        $config['base_url'] = 'http://localhost/php/kps/clients/index';
        $config['total_rows'] = $this->m_clients->jumlah_clients();
        $config['per_page'] = 5;
        //Initialize
        $this->pagination->initialize($config);

        $data['start'] = $this->uri->segment(3);
        $data['clients'] = $this->m_clients->p_clients($config['per_page'], $data['start']);
        $this->load->view('temp_a/adm_header', $data);
        $this->load->view('temp_a/adm_sidebar');
        $this->load->view('temp_a/adm_topbar', $data);
        $this->load->view('clients/clients', $data);
        $this->load->view('temp_a/adm_footer');
    }

    public function tambah()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Tambah Clients';

        $this->form_validation->set_rules('nama_clients', 'Nama Clients', 'required');
        if (empty($_FILES['logo_clients']['name'])) {
            $this->form_validation->set_rules('logo_clients', 'Logo clients', 'required');
        }

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('clients/tambah');
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->load->library('upload');
            if (!empty($_FILES['logo_clients']['name'])) {
                $config['upload_path']          = './assets_p/image/clients/';
                $config['allowed_types']        = 'gif|jpg|png|jpeg|bmp|svg';
                $config['overwrite']            = true;
                $config['max_size']             = 2048;

                $this->upload->initialize($config);
                if ($this->upload->do_upload('logo_clients')) {
                    $logo_clients = $this->upload->data();
                    $file_name = $logo_clients['file_name'];

                    $nama_clients = $this->input->post('nama_clients');

                    $data  = [
                        "nama_clients" => $nama_clients,
                        "logo_clients" => $file_name,
                    ];
                    $this->db->insert('clients', $data);
                    $this->session->set_flashdata('flash', 'ditambahkan');
                    redirect(base_url() . 'clients/index');
                } else {
                    echo $this->upload->display_errors();
                    $this->session->set_flashdata('flash', 'ditambahkan');
                    redirect(base_url() . 'clients/index');
                }
            }
        }
    }

    public function edit($id_clients)
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Edit clients';
        $data['clients'] = $this->m_clients->get_clientsid($id_clients);

        $this->form_validation->set_rules('nama_clients', 'Nama Clients', 'required');
        if (empty($_FILES['logo_clients']['name'])) {
            $this->form_validation->set_rules('logo_clients', 'Logo Clients', 'required');
        }

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('clients/edit', $data);
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->load->library('upload');
            if (!empty($_FILES['logo_clients']['name'])) {
                $config['upload_path']          = './assets_p/image/clients/';
                $config['allowed_types']        = 'gif|jpg|png|jpeg|bmp|svg';
                $config['overwrite']            = true;
                $config['max_size']             = 2048;

                $this->upload->initialize($config);
                if ($this->upload->do_upload('logo_clients')) {
                    $logo_clients = $this->upload->data();
                    $file_name = $logo_clients['file_name'];

                    $nama_clients = $this->input->post('nama_clients');

                    $data  = [
                        "nama_clients" => $nama_clients,
                        "logo_clients" => $file_name,
                    ];
                    $this->db->where('id_clients', $this->input->post('id_clients'));
                    $this->db->update('clients', $data);
                    $this->session->set_flashdata('flash', 'diedit');
                    redirect(base_url() . 'clients/index');
                } else {
                    echo $this->upload->display_errors();
                    $this->session->set_flashdata('flash', 'diedit');
                    redirect(base_url() . 'clients/index');
                }
            }
        }
    }

    public function hapus($id_clients)
    {
        $this->m_clients->hapus_clients($id_clients);
        $this->session->set_flashdata('flash', 'dihapus');
        redirect(base_url() . 'clients/index');
    }
}
