<?php

class Katalog extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('m_katalog');
        $this->load->library('pagination');
    }

    public function index()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['judul'] = 'Katalog';
        $data['daftarlayanan'] = $this->db->get('daftarlayanan')->result_array();

        $config['base_url'] = 'http://localhost/php/kps/katalog/index';
        $config['total_rows'] = $this->m_katalog->jumlah_kat_barang();
        $config['per_page'] = 20;
        //Initialize
        $this->pagination->initialize($config);
        $keyword = $this->input->get('keyword');
        $data['start'] = $this->uri->segment(3);
        if (@$keyword) {
            $data['list_kategori'] = $this->m_katalog->get_keyword_kategori($keyword);
        } else {
            $data['list_kategori'] = $this->m_katalog->p_kat_barang($config['per_page'], $data['start']);
        }
        $this->load->view('temp_p/header_p', $data);
        $this->load->view('katalog/index', $data);
        $this->load->view('temp_p/footer_p');
    }
    public function detail($id = null)
    {
        $data['daftarlayanan'] = $this->db->get('daftarlayanan')->result_array();
        $data['judul'] = 'katalog';
        $config['base_url'] = 'http://localhost/php/kps/katalog/detail/' . $id;
        $config['total_rows'] = $this->m_katalog->jumlah_data_barang($id);
        $config['per_page'] = 20;
        //Initialize
        $this->pagination->initialize($config);

        $data['start'] = $this->uri->segment(4);
        $data['barang'] = $this->m_katalog->p_data_barang($config['per_page'], $data['start'], $id);
        $data['list_kategori'] = $this->m_katalog->p_kat_barang($config['per_page'], $data['start']);
        $this->load->view('temp_p/header_p', $data);
        $this->load->view('katalog/detail', $data);
        $this->load->view('temp_p/footer_p');
    }
    public function searchkategori()
    {
        $data['daftarlayanan'] = $this->db->get('daftarlayanan')->result_array();
        $keyword = html_escape($keyword = $this->input->post('keyword', true));

        $config['base_url'] = 'http://localhost/php/kps/katalog/searchkategori';
        $config['total_rows'] = $this->m_katalog->jumlah_kat_barang($keyword);
        $config['per_page'] = 20;
        //Initialize
        $this->pagination->initialize($config);;
        $data['start'] = $this->uri->segment(3);
        $data['keyword'] = $keyword;

        $data['list_kategori'] = $this->m_katalog->p_kat_barang($config['per_page'], $data['start'], $keyword);
        $data['judul'] = 'katalog Terbaru';

        $this->load->view('temp_p/header_p', $data);
        $this->load->view('katalog/index', $data);
        $this->load->view('temp_p/footer_p');
    }
}
