<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Testimoni extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('username')) {
            redirect('auth');
        }
        $this->load->library('form_validation');
        $this->load->model('m_testimoni');
    }

    public function index()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Manajemen Testimoni';

        // Load Library Pagination
        $this->load->library('pagination');
        // Config
        $config['base_url'] = site_url('testimoni/index');
        $config['total_rows'] = $this->m_testimoni->jumlah_testimoni();
        $config['per_page'] = 5;
        //Initialize
        $this->pagination->initialize($config);

        $data['start'] = $this->uri->segment(3);
        $data['testimoni'] = $this->m_testimoni->p_testimoni($config['per_page'], $data['start']);
        $this->load->view('temp_a/adm_header', $data);
        $this->load->view('temp_a/adm_sidebar');
        $this->load->view('temp_a/adm_topbar', $data);
        $this->load->view('testimoni/testimoni', $data);
        $this->load->view('temp_a/adm_footer');
    }

    public function tambah()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Tambah Testimoni';

        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('pekerjaan', 'Pekerjaan', 'required');
        $this->form_validation->set_rules('isi', 'Isi', 'required');;
        if (empty($_FILES['foto']['name'])) {
            $this->form_validation->set_rules('foto', 'Gambar berita', 'required');
        }

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('testimoni/tambah');
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->load->library('upload');
            if (!empty($_FILES['foto']['name'])) {
                $config['upload_path']          = './assets_p/image/testimoni/';
                $config['allowed_types']        = 'gif|jpg|png|jpeg|bmp|svg';
                $config['overwrite']            = true;
                $config['max_size']             = 2048;

                $this->upload->initialize($config);
                if ($this->upload->do_upload('foto')) {
                    $gambar = $this->upload->data();
                    $file_name = $gambar['file_name'];

                    $nama = $this->input->post('nama');
                    $pekerjaan = $this->input->post('pekerjaan');
                    $isi = $this->input->post('isi');

                    $data  = [
                        "nama" => $nama,
                        "pekerjaan" => $pekerjaan,
                        "isi" => $isi,
                        "foto" => $file_name,
                    ];
                    $this->db->insert('testimoni', $data);
                    $this->session->set_flashdata('flash', 'ditambahkan');
                    redirect(base_url() . 'testimoni/index');
                } else {
                    echo $this->upload->display_errors();
                    $this->session->set_flashdata('flash', 'ditambahkan');
                    redirect(base_url() . 'testimoni/index');
                }
            }
        }
    }

    public function edit($id_testimoni)
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Edit Testimoni';
        $data['testimoni'] = $this->m_testimoni->get_testimoniid($id_testimoni);
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('pekerjaan', 'Pekerjaan', 'required');
        $this->form_validation->set_rules('isi', 'Isi', 'required');;
        if (empty($_FILES['foto']['name'])) {
            $this->form_validation->set_rules('foto', 'Gambar berita', 'required');
        }

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('testimoni/edit', $data);
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->load->library('upload');
            if (!empty($_FILES['foto']['name'])) {
                $config['upload_path']          = './assets_p/image/testimoni/';
                $config['allowed_types']        = 'gif|jpg|png|jpeg|bmp|svg';
                $config['overwrite']            = true;
                $config['max_size']             = 2048;

                $this->upload->initialize($config);
                if ($this->upload->do_upload('foto')) {
                    $gambar = $this->upload->data();
                    $file_name = $gambar['file_name'];

                    $nama = $this->input->post('nama');
                    $pekerjaan = $this->input->post('pekerjaan');
                    $isi = $this->input->post('isi');

                    $data  = [
                        "nama" => $nama,
                        "pekerjaan" => $pekerjaan,
                        "isi" => $isi,
                        "foto" => $file_name,
                    ];
                    $this->db->where('id_testimoni', $this->input->post('id_testimoni'));
                    $this->db->update('testimoni', $data);
                    $this->session->set_flashdata('flash', 'diedit');
                    redirect(base_url() . 'testimoni/index');
                } else {
                    echo $this->upload->display_errors();
                    $this->session->set_flashdata('flash', 'diedit');
                    redirect(base_url() . 'testimoni/index');
                }
            }
        }
    }

    public function hapus($id_testimoni)
    {
        $this->m_testimoni->hapus_testimoni($id_testimoni);
        $this->session->set_flashdata('flash', 'dihapus');
        redirect(base_url() . 'testimoni/index');
    }
}
