<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Layanan extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('username')) {
            redirect('auth');
        }
        $this->load->library('form_validation');
        $this->load->model('m_layanan');
    }

    public function index()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Manajemen Layanan';
        // Load Library Pagination
        $this->load->library('pagination');
        // Config
        $config['base_url'] = 'http://localhost/php/kps/layanan/index';
        $config['total_rows'] = $this->m_layanan->jumlah_layanan();
        $config['per_page'] = 4;
        //Initialize
        $this->pagination->initialize($config);

        $data['start'] = $this->uri->segment(3);
        $data['daftarlayanan'] = $this->m_layanan->p_layanan($config['per_page'], $data['start']);

        $this->load->view('temp_a/adm_header', $data);
        $this->load->view('temp_a/adm_sidebar');
        $this->load->view('temp_a/adm_topbar', $data);
        $this->load->view('layanan/layanan', $data);
        $this->load->view('temp_a/adm_footer');
    }

    public function tambah()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Tambah Layanan';
        $this->form_validation->set_rules('layanan', 'Layanan', 'required');
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required');
        $this->form_validation->set_rules('icon_layanan', 'Icon layanan', 'required');
        if ($this->form_validation->run() == FALSE) {

            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('layanan/tambah');
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->m_layanan->tambah_layanan();
            $this->session->set_flashdata('flash', 'ditambahkan');
            redirect(base_url() . 'layanan/index');
        }
    }

    public function edit($id_layanan)
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['daftarlayanan'] = $this->m_layanan->get_layananid($id_layanan);
        $data['title'] = 'Edit Layanan';
        $this->form_validation->set_rules('layanan', 'Layanan', 'required');
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required');
        $this->form_validation->set_rules('icon_layanan', 'Icon layanan', 'required');
        if ($this->form_validation->run() == FALSE) {

            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('layanan/edit', $data);
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->m_layanan->edit_layanan();
            $this->session->set_flashdata('flash', 'diedit');
            redirect(base_url() . 'layanan/index');
        }
    }

    public function hapus($id_layanan)
    {
        $this->m_layanan->hapus_layanan($id_layanan);
        $this->session->set_flashdata('flash', 'dihapus');
        redirect(base_url() . 'layanan/index');
    }
}
