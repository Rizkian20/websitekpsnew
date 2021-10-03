<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Portofolio extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('m_portofolio');
    }

    public function index()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Manajemen Portofolio';

        // Load Library Pagination
        $this->load->library('pagination');
        // Config
        $config['base_url'] = 'http://localhost/php/kps/portofolio/index';
        $config['total_rows'] = $this->m_portofolio->jumlah_portofolio();
        $config['per_page'] = 5;
        //Initialize
        $this->pagination->initialize($config);

        $data['start'] = $this->uri->segment(3);
        $data['portofolio'] = $this->m_portofolio->p_portofolio($config['per_page'], $data['start']);
        $this->load->view('temp_a/adm_header', $data);
        $this->load->view('temp_a/adm_sidebar');
        $this->load->view('temp_a/adm_topbar', $data);
        $this->load->view('portofolio/portofolio', $data);
        $this->load->view('temp_a/adm_footer');
    }

    public function tambah()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Tambah portofolio';

        $this->form_validation->set_rules('kategori', 'Kategori', 'required');
        $this->form_validation->set_rules('detail', 'Detail', 'required');
        $this->form_validation->set_rules('judul', 'Judul', 'required');
        if (empty($_FILES['gambar']['name'])) {
            $this->form_validation->set_rules('gambar', 'Gambar', 'required');
        }

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('portofolio/tambah');
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->load->library('upload');
            if (!empty($_FILES['gambar']['name'])) {
                $config['upload_path']          = './assets_p/image/portofolio/';
                $config['allowed_types']        = 'gif|jpg|png|jpeg|bmp|svg';
                $config['overwrite']            = true;
                $config['max_size']             = 2048;

                $this->upload->initialize($config);
                if ($this->upload->do_upload('gambar')) {
                    $gambar = $this->upload->data();
                    $file_name = $gambar['file_name'];

                    $kategori = strtolower($this->input->post('kategori'));
                    $detail = $this->input->post('detail');
                    $judul = $this->input->post('judul');

                    $data  = [
                        "kategori_p" => $kategori,
                        "detail_p" => $detail,
                        "judul_p" => $judul,
                        "gambar_p" => $file_name,
                    ];
                    $this->db->insert('portofolio', $data);
                    $this->session->set_flashdata('flash', 'ditambahkan');
                    redirect(base_url() . 'portofolio/index');
                } else {
                    echo $this->upload->display_errors();
                    $this->session->set_flashdata('flash', 'ditambahkan');
                    redirect(base_url() . 'portofolio/index');
                }
            }
        }
    }

    public function hapus($id_portofolio)
    {
        $this->m_portofolio->hapus_portofolio($id_portofolio);
        $this->session->set_flashdata('flash', 'dihapus');
        redirect(base_url() . 'portofolio/index');
    }
}
