<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Tentangkami extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('m_tentangkami');
    }

    public function index()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $this->load->model('m_tentangkami');
        $data['visi'] = $this->m_tentangkami->get_visi();
        $data['misi'] = $this->m_tentangkami->get_misi();
        $data['title'] = 'Manajemen Tentangkami';
        $this->load->view('temp_a/adm_header', $data);
        $this->load->view('temp_a/adm_sidebar');
        $this->load->view('temp_a/adm_topbar', $data);
        $this->load->view('tentangkami/tentangkami', $data);
        $this->load->view('temp_a/adm_footer');
    }
    public function tambah()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Tambah Tentangkami';
        $this->form_validation->set_rules('visi', 'Visi', 'required');
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('tentangkami/tambah');
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->m_tentangkami->tambah_visi();
            $this->session->set_flashdata('flash', 'ditambahkan');
            redirect(base_url() . 'tentangkami/index');
        }
    }

    public function tambahmisi()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Tambah Tentangkami';
        $this->form_validation->set_rules('misi', 'Misi', 'required');
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('tentangkami/tambahmisi');
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->m_tentangkami->tambah_misi();
            $this->session->set_flashdata('flash', 'ditambahkan');
            redirect(base_url() . 'tentangkami/index');
        }
    }
}
