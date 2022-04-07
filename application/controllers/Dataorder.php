<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dataorder extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (empty($this->session->userdata('username'))) {
            redirect('auth');
        }
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Manajemen Data Order Barang';

        $this->load->view('temp_a/adm_header', $data);
        $this->load->view('temp_a/adm_sidebar');
        $this->load->view('temp_a/adm_topbar', $data);
        $this->load->view('dataorder/dataorder');
        $this->load->view('temp_a/adm_footer');
    }
}
