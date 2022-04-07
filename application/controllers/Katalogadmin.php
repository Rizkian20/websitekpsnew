<?php

class Katalogadmin extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('username')) {
            redirect('auth');
        }
        $this->load->library('form_validation');
        $this->load->model('m_katalogadmin');
        $this->load->library('pagination');
    }

    public function index()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Manajemen Katalog Barang';
        // Load Library Pagination
        $this->load->library('pagination');
        // Config
        $config['base_url'] = 'http://localhost/php/kps/katalogadmin/index';
        $config['total_rows'] = $this->m_katalogadmin->jumlah_kat_barang();
        $config['per_page'] = 20;
        //Initialize
        $this->pagination->initialize($config);

        $data['start'] = $this->uri->segment(3);
        $data['list_kategori'] = $this->m_katalogadmin->p_kat_barang($config['per_page'], $data['start']);

        $this->load->view('temp_a/adm_header', $data);
        $this->load->view('temp_a/adm_sidebar');
        $this->load->view('temp_a/adm_topbar', $data);
        $this->load->view('katalogadmin/katalog', $data);
        $this->load->view('temp_a/adm_footer');
    }
    public function tambahkategori()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Tambah Kategori';
        $this->form_validation->set_rules('nomor', 'No', 'required');
        $this->form_validation->set_rules('kategori', 'Kategori', 'required');
        if ($this->form_validation->run() == FALSE) {

            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('katalogadmin/tambahkategori');
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->m_katalogadmin->tambahkategori();
            $this->session->set_flashdata('flash', 'ditambahkan');
            redirect(base_url() . 'katalogadmin/index');
        }
    }
    public function editkategori($id_kat_barang)
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['kategori'] = $this->m_katalogadmin->get_kategoribyid($id_kat_barang);
        $data['title'] = 'Edit Kategori';
        $this->form_validation->set_rules('id_kat_barang', 'No', 'required');
        $this->form_validation->set_rules('kat_barang', 'Kategori', 'required');
        if ($this->form_validation->run() == FALSE) {

            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('katalogadmin/editkategori');
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->m_katalogadmin->editkategori();
            $this->session->set_flashdata('flash', 'diedit');
            redirect(base_url() . 'katalogadmin/index');
        }
    }

    public function tambahbarang($id = null)
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Tambah Barang';
        $data['kategori'] = $this->m_katalogadmin->get_kategori();
        $this->form_validation->set_rules('nama_barang', 'Nama Barang', 'required');
        $this->form_validation->set_rules('id_kat_barang', 'Id Kategori Barang', 'required');
        $this->form_validation->set_rules('harga_barang', 'Harga Barang', 'required');
        if ($this->form_validation->run() == FALSE) {

            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('katalogadmin/tambahbarang', $data);
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->m_katalogadmin->tambahbarang();
            $this->session->set_flashdata('flash', 'ditambahkan');
            redirect(base_url() . 'katalogadmin/detailkategori/' . $id); //???
        }
    }
    public function editbarang($id_barang)
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Edit Barang';
        $data['data_barang'] = $this->m_katalogadmin->get_barangbyid($id_barang);
        $data['kategori'] = $this->m_katalogadmin->get_kategori();
        $this->form_validation->set_rules('nama_barang', 'Nama Barang', 'required');
        $this->form_validation->set_rules('id_kat_barang', 'Id Kategori Barang', 'required');
        $this->form_validation->set_rules('harga_barang', 'Harga Barang', 'required');
        if ($this->form_validation->run() == FALSE) {

            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('katalogadmin/editbarang', $data);
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->m_katalogadmin->editbarang();
            $this->session->set_flashdata('flash', 'diedit');
            redirect(base_url() . 'katalogadmin/detailkategori');
        }
    }
    public function detailkategori($id   = null)
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Data Barang';

        $config['base_url'] = 'http://localhost/php/kps/katalogadmin/detailkategori/' . $id;
        $config['total_rows'] = $this->m_katalogadmin->jumlah_data_barang($id);
        $config['per_page'] = 20;
        //Initialize
        $this->pagination->initialize($config);

        $data['start'] = $this->uri->segment(4);
        $data['barang'] = $this->m_katalogadmin->p_data_barang($config['per_page'], $data['start'], $id);


        $this->load->view('temp_a/adm_header', $data);
        $this->load->view('temp_a/adm_sidebar');
        $this->load->view('temp_a/adm_topbar', $data);
        $this->load->view('katalogadmin/detailkategori', $data);
        $this->load->view('temp_a/adm_footer');
    }

    public function searchkategori()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $keyword = html_escape($keyword = $this->input->post('keyword', true));

        $config['base_url'] = 'http://localhost/php/kps/katalogadmin/searchkategori';
        $config['total_rows'] = $this->m_katalogadmin->jumlah_kat_barang($keyword);
        $config['per_page'] = 20;
        //Initialize
        $this->pagination->initialize($config);;
        $data['start'] = $this->uri->segment(3);
        $data['keyword'] = $keyword;

        $data['list_kategori'] = $this->m_katalogadmin->p_kat_barang($config['per_page'], $data['start'], $keyword);
        $data['title'] = 'Katalog Barang';

        $this->load->view('temp_a/adm_header', $data);
        $this->load->view('temp_a/adm_sidebar');
        $this->load->view('temp_a/adm_topbar', $data);
        $this->load->view('katalogadmin/katalog', $data);
        $this->load->view('temp_a/adm_footer');
    }

    public function hapuskategori($id_kat_barang)
    {
        $this->m_katalogadmin->hapuskategori($id_kat_barang);
        $this->session->set_flashdata('flash', 'dihapus');
        redirect(base_url() . 'katalogadmin/index');
    }

    public function hapusbarang($id_barang, $id_kat_barang)
    {
        $this->m_katalogadmin->hapusbarang($id_barang);
        $this->session->set_flashdata('flash', 'dihapus');
        redirect(base_url() . 'katalogadmin/detailkategori/' . $id_kat_barang);
    }
}
