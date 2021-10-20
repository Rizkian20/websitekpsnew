<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Tentangkami extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('username')) {
            redirect('auth');
        }
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
    public function tambah_visi()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Tambah Visi';
        $this->form_validation->set_rules('visi', 'Visi', 'required');
        if ($this->form_validation->run() == FALSE) {

            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('tentangkami/tambah_visi');
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->m_tentangkami->tambah_visi();
            $this->session->set_flashdata('flash', 'ditambahkan');
            redirect(base_url() . 'tentangkami/index');
        }
    }

    public function edit_visi($id_visi)
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['visi'] = $this->m_tentangkami->get_visiid($id_visi);
        $data['title'] = 'Edit Visi';
        $this->form_validation->set_rules('visi', 'Visi', 'required');

        if ($this->form_validation->run() == FALSE) {

            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('tentangkami/edit_visi', $data);
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->m_tentangkami->edit_visi();
            $this->session->set_flashdata('flash', 'diedit');
            redirect(base_url() . 'tentangkami/index');
        }
    }

    public function hapus_visi($id_visi)
    {
        $this->m_tentangkami->hapus_visi($id_visi);
        $this->session->set_flashdata('flash', 'dihapus');
        redirect(base_url() . 'tentangkami/index');
    }



    public function tambah_misi()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Tambah Tentangkami';
        $this->form_validation->set_rules('misi', 'Misi', 'required');
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('tentangkami/tambah_misi');
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->m_tentangkami->tambah_misi();
            $this->session->set_flashdata('flash', 'ditambahkan');
            redirect(base_url() . 'tentangkami/index');
        }
    }

    public function edit_misi($id_misi)
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['misi'] = $this->m_tentangkami->get_misiid($id_misi);
        $data['title'] = 'Edit Misi';
        $this->form_validation->set_rules('misi', 'misi', 'required');

        if ($this->form_validation->run() == FALSE) {

            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('tentangkami/edit_misi', $data);
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->m_tentangkami->edit_misi();
            $this->session->set_flashdata('flash', 'diedit');
            redirect(base_url() . 'tentangkami/index');
        }
    }

    public function hapus_misi($id_misi)
    {
        $this->m_tentangkami->hapus_misi($id_misi);
        $this->session->set_flashdata('flash', 'dihapus');
        redirect(base_url() . 'tentangkami/index');
    }
}
