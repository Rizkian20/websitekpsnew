<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Kontak extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('m_kontak');
    }

    public function index()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $this->load->model('m_kontak');
        $data['kontak'] = $this->m_kontak->get_kontak();
        $data['title'] = 'Manajemen kontak';

        $this->load->view('temp_a/adm_header', $data);
        $this->load->view('temp_a/adm_sidebar');
        $this->load->view('temp_a/adm_topbar', $data);
        $this->load->view('kontak/kontak', $data);
        $this->load->view('temp_a/adm_footer');
    }
    public function edit($id_kontak)
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['kontak'] = $this->m_kontak->get_kontakid($id_kontak);
        $data['title'] = 'Edit kontak';
        $this->form_validation->set_rules('email', 'Email', 'required');
        $this->form_validation->set_rules('no_hp', 'Nomor HP', 'required');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required');
        if ($this->form_validation->run() == FALSE) {

            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('kontak/edit', $data);
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->m_kontak->edit_kontak();
            $this->session->set_flashdata('flash', 'diedit');
            redirect(base_url() . 'kontak/index');
        }
    }
}
