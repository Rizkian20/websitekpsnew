<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Beritaadmin extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('m_beritaadmin');
        $this->load->helper(array('form', 'url'));
    }

    public function index()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Manajemen Berita';
        // Load Library Pagination
        $this->load->library('pagination');
        // Config
        $config['base_url'] = 'http://localhost/php/kps/beritaadmin/index';
        $config['total_rows'] = $this->m_beritaadmin->jumlah_berita();
        $config['per_page'] = 4;
        //Initialize
        $this->pagination->initialize($config);

        $data['start'] = $this->uri->segment(3);
        $data['berita'] = $this->m_beritaadmin->p_berita($config['per_page'], $data['start']);

        $this->load->view('temp_a/adm_header', $data);
        $this->load->view('temp_a/adm_sidebar');
        $this->load->view('temp_a/adm_topbar', $data);
        $this->load->view('beritaadmin/berita', $data);
        $this->load->view('temp_a/adm_footer');
    }

    public function tambah()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Tambah Berita';
        $this->form_validation->set_rules('judul', 'Judul', 'required');
        $this->form_validation->set_rules('isi', 'Isi', 'required');
        $this->form_validation->set_rules('penulis', 'Penulis', 'required');
        $this->form_validation->set_rules('kategori', 'Kategori', 'required');
        $this->form_validation->set_rules('tglpost', 'Tanggal Post', 'required');
        if (empty($_FILES['g_berita']['name'])) {
            $this->form_validation->set_rules('g_berita', 'Gambar berita', 'required');
        }

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('beritaadmin/tambah');
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->load->library('upload');
            if (!empty($_FILES['g_berita']['name'])) {
                $config['upload_path']          = './assets_p/image/berita/';
                $config['allowed_types']        = 'gif|jpg|png|jpeg|bmp|svg';
                $config['overwrite']            = true;
                $config['max_size']             = 2048;

                $this->upload->initialize($config);
                if ($this->upload->do_upload('g_berita')) {
                    $gambar = $this->upload->data();
                    $file_name = $gambar['file_name'];

                    $judul = $this->input->post('judul');
                    $isi = $this->input->post('isi');
                    $kategori = $this->input->post('kategori');
                    $tglpost = $this->input->post('tglpost');
                    $penulis = $this->input->post('penulis');

                    $data  = [
                        'judul' => $judul,
                        'isi' => $isi,
                        'kategori' => $kategori,
                        'penulis' => $penulis,
                        'tglpost' => $tglpost,
                        'g_berita' => $file_name,
                    ];
                    $this->db->insert('berita', $data);
                    $this->session->set_flashdata('flash', 'ditambahkan');
                    redirect(base_url() . 'beritaadmin/index');
                } else {
                    echo $this->upload->display_errors();
                }
            }
        }
    }

    public function edit($id_berita)
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();

        $data['berita'] = $this->m_beritaadmin->get_beritaid($id_berita);

        $data['title'] = 'Edit Berita';
        $this->form_validation->set_rules('judul', 'Judul', 'required');
        $this->form_validation->set_rules('isi', 'Isi', 'required');
        $this->form_validation->set_rules('penulis', 'Penulis', 'required');
        $this->form_validation->set_rules('kategori', 'Kategori', 'required');
        $this->form_validation->set_rules('tglpost', 'Tanggal Post', 'required');
        if (empty($_FILES['g_berita']['name'])) {
            $this->form_validation->set_rules('g_berita', 'Gambar berita', 'required');
        }

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('beritaadmin/edit', $data);
            $this->load->view('temp_a/adm_footer');
        } else {

            $this->load->library('upload');
            if (!empty($_FILES['g_berita']['name'])) {

                $config['upload_path']          = './assets_p/image/berita/';
                $config['allowed_types']        = 'gif|jpg|png|jpeg|bmp|svg';
                $config['overwrite']            = true;
                $config['max_size']             = 2048;

                $this->upload->initialize($config);
                if ($this->upload->do_upload('g_berita')) {

                    $gambar = $this->upload->data();
                    $file_name = $gambar['file_name'];

                    $judul = $this->input->post('judul');
                    $isi = $this->input->post('isi');
                    $kategori = $this->input->post('kategori');
                    $tglpost = $this->input->post('tglpost');
                    $penulis = $this->input->post('penulis');

                    $data  = [
                        'judul' => $judul,
                        'isi' => $isi,
                        'kategori' => $kategori,
                        'penulis' => $penulis,
                        'tglpost' => $tglpost,
                        'g_berita' => $file_name,
                    ];
                    $this->db->where('id_berita', $this->input->post('id_berita'));
                    $this->db->update('berita', $data);
                    $this->session->set_flashdata('flash', 'diedit');
                    redirect(base_url() . 'beritaadmin/index');
                } else {
                    echo $this->upload->display_errors();
                }
            }
        }
    }

    public function detail($id_berita)
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['berita'] = $this->m_beritaadmin->get_beritaid($id_berita);
        $data['title'] = 'Detail Berita';
        $this->form_validation->set_rules('judul', 'Judul', 'required');
        $this->form_validation->set_rules('isi', 'Isi', 'required');
        $this->form_validation->set_rules('penulis', 'Penulis', 'required');
        $this->form_validation->set_rules('g_berita', 'Gambar berita', 'required');
        $this->load->view('temp_a/adm_header', $data);
        $this->load->view('temp_a/adm_sidebar');
        $this->load->view('temp_a/adm_topbar', $data);
        $this->load->view('beritaadmin/detail', $data);
        $this->load->view('temp_a/adm_footer');
    }
    public function hapus($id_berita)
    {
        $this->m_beritaadmin->hapus_berita($id_berita);
        $this->session->set_flashdata('flash', 'dihapus');
        redirect(base_url() . 'beritaadmin/index');
    }
}
