<?php

class berita extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('m_berita');
        $this->load->library('pagination');
    }
    public function index()
    {
        $data['daftarlayanan'] = $this->db->get('daftarlayanan')->result_array();
        $data['judul'] = 'Berita';
        $data['kategori'] = $this->m_berita->jumlah_kategori();
        $data['list_berita'] = $this->db->get('berita')->result_array();

        // Load Library Pagination
        $this->load->library('pagination');
        // Config
        $config['base_url'] = 'http://localhost/php/kps/berita/index';
        $config['total_rows'] = $this->m_berita->jumlah_berita();
        $config['per_page'] = 8;
        //Initialize
        $this->pagination->initialize($config);

        $keyword = $this->input->get('keyword');
        $data['start'] = $this->uri->segment(3);

        if (@$keyword) {

            $data['berita'] = $this->m_berita->get_keyword($keyword);
        } else {
            $data['berita'] = $this->m_berita->p_berita($config['per_page'], $data['start']);
        }
        $this->load->view('temp_p/header_p', $data);
        $this->load->view('berita/index', $data);
        $this->load->view('temp_p/footer_p');
    }
    public function beritasingle($id_berita)
    {

        $data['daftarlayanan'] = $this->db->get('daftarlayanan')->result_array();
        $data['kategori'] = $this->m_berita->jumlah_kategori();
        $data['list_berita'] = $this->db->get('berita')->result_array();
        $data['berita'] = $this->m_berita->get_beritaid($id_berita);
        $data['judul'] = 'Kebumen Prima Sarana';
        $this->load->view('temp_p/header_p', $data);
        $this->load->view('berita/beritasingle', $data);
        $this->load->view('temp_p/footer_p');
    }

    public function search()
    {
        $data['daftarlayanan'] = $this->db->get('daftarlayanan')->result_array();
        $data['kategori'] = $this->m_berita->jumlah_kategori();
        $data['list_berita'] = $this->db->get('berita')->result_array();
        $keyword = html_escape($keyword = $this->input->post('keyword', true));
        $data['keyword'] = $keyword;
        $data['berita'] = $this->m_berita->get_keyword($keyword);
        $data['judul'] = 'Berita Terbaru';
        $this->load->view('temp_p/header_p', $data);
        $this->load->view('berita/index', $data);
        $this->load->view('temp_p/footer_p');
    }
}
