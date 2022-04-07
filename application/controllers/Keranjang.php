<?php

class Keranjang extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('m_keranjang');
        $this->load->library('pagination');
    }

    public function index()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['judul'] = 'Keranjang';
        $data['daftarlayanan'] = $this->db->get('daftarlayanan')->result_array();
        // Load Library Pagination
        // $this->load->library('pagination');
        // Config
        $config['base_url'] = 'http://localhost/php/kps/keranjang/index';
        $config['total_rows'] = $this->m_keranjang->jumlah_kat_barang();
        $config['per_page'] = 20;
        //Initialize
        $this->pagination->initialize($config);
        $keyword = $this->input->get('keyword');
        $data['start'] = $this->uri->segment(3);
        if (@$keyword) {
            $data['list_kategori'] = $this->m_keranjang->get_keyword_kategori($keyword);
        } else {
            $data['list_kategori'] = $this->m_keranjang->p_kat_barang($config['per_page'], $data['start']);
        }
        $this->load->view('temp_p/header_p', $data);
        $this->load->view('keranjang/index', $data);
        $this->load->view('temp_p/footer_p');
    }

    public function detail($id = null)
    {
        $data['daftarlayanan'] = $this->db->get('daftarlayanan')->result_array();
        $data['judul'] = 'keranjang';
        // $data['keranjang'] = $this->m_keranjang->getbarangbykategori();
        $config['base_url'] = 'http://localhost/php/kps/keranjang/detail/' . $id;
        $config['total_rows'] = $this->m_keranjang->jumlah_data_barang($id);
        $config['per_page'] = 20;
        //Initialize
        $this->pagination->initialize($config);

        $data['start'] = $this->uri->segment(4);
        $data['barang'] = $this->m_keranjang->p_data_barang($config['per_page'], $data['start'], $id);
        $data['list_kategori'] = $this->m_keranjang->p_kat_barang($config['per_page'], $data['start']);
        $this->load->view('temp_p/header_p', $data);
        $this->load->view('keranjang/detail', $data);
        $this->load->view('temp_p/footer_p');
    }
    public function searchkategori()
    {
        $data['daftarlayanan'] = $this->db->get('daftarlayanan')->result_array();
        // $data['kategori'] = $this->m_keranjang->jumlah_kategori();
        // $data['list_kategori'] = $this->db->get('kat_barang')->result_array();
        $keyword = html_escape($keyword = $this->input->post('keyword', true));

        $config['base_url'] = 'http://localhost/php/kps/keranjang/searchkategori';
        $config['total_rows'] = $this->m_keranjang->jumlah_kat_barang($keyword);
        $config['per_page'] = 20;
        //Initialize
        $this->pagination->initialize($config);;
        $data['start'] = $this->uri->segment(3);
        $data['keyword'] = $keyword;

        // $data['list_kategori'] = $this->m_keranjang->get_keyword_kategori($keyword);
        $data['list_kategori'] = $this->m_keranjang->p_kat_barang($config['per_page'], $data['start'], $keyword);
        $data['judul'] = 'keranjang Terbaru';

        $this->load->view('temp_p/header_p', $data);
        $this->load->view('keranjang/index', $data);
        $this->load->view('temp_p/footer_p');
    }

    public function tambahbarang()
    {
        // $this->load->model('m_portofolio');
        // $data['portofolio'] = $this->m_portofolio->get_portofolioid($id_portofolio);

        $data['judul'] = 'Keranjang';
        $this->load->view('keranjang/tambahbarang');
    }
}
