<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Slideshow extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        if (!$this->session->userdata('username')) {
            redirect('auth');
        }
        $this->load->library('form_validation');
        $this->load->model('m_slideshow');
    }

    public function index()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Manajemen slideshow';

        // Load Library Pagination
        $this->load->library('pagination');
        // Config
        $config['base_url'] = site_url('slideshow/index');
        $config['total_rows'] = $this->m_slideshow->jumlah_slideshow();
        $config['per_page'] = 5;
        //Initialize
        $this->pagination->initialize($config);

        $data['start'] = $this->uri->segment(3);
        $data['slideshow'] = $this->m_slideshow->p_slideshow($config['per_page'], $data['start']);
        $this->load->view('temp_a/adm_header', $data);
        $this->load->view('temp_a/adm_sidebar');
        $this->load->view('temp_a/adm_topbar', $data);
        $this->load->view('slideshow/slideshow', $data);
        $this->load->view('temp_a/adm_footer');
    }

    public function tambah()
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['title'] = 'Tambah Slideshow';

        $this->form_validation->set_rules('judul', 'Judul', 'required');
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required');
        if (empty($_FILES['g_slideshow']['name'])) {
            $this->form_validation->set_rules('gambar', 'Gambar', 'required');
        }

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('slideshow/tambah');
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->load->library('upload');
            if (!empty($_FILES['g_slideshow']['name'])) {
                $config['upload_path']          = './assets_p/image/slideshow/';
                $config['allowed_types']        = 'gif|jpg|png|jpeg|bmp|svg';
                $config['overwrite']            = true;
                $config['max_size']             = 2048;

                $this->upload->initialize($config);
                if ($this->upload->do_upload('g_slideshow')) {
                    $gambar = $this->upload->data();
                    $file_name = $gambar['file_name'];

                    $judul = $this->input->post('judul');
                    $deskripsi = $this->input->post('deskripsi');

                    $data  = [
                        "j_slideshow" => $judul,
                        "d_slideshow" => $deskripsi,
                        "g_slideshow" => $file_name,
                    ];
                    $this->db->insert('slideshow', $data);
                    $this->session->set_flashdata('flash', 'ditambahkan');
                    redirect(base_url() . 'slideshow/index');
                } else {
                    echo $this->upload->display_errors();
                    $this->session->set_flashdata('flash', 'ditambahkan');
                    redirect(base_url() . 'slideshow/index');
                }
            }
        }
    }

    public function edit($id_slideshow)
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['slideshow'] = $this->m_slideshow->get_slideshowid($id_slideshow);
        $data['title'] = 'Edit Slideshow';

        $this->form_validation->set_rules('judul', 'Judul', 'required');
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required');
        if (empty($_FILES['g_slideshow']['name'])) {
            $this->form_validation->set_rules('g_slideshow', 'Gambar', 'required');
        }

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('temp_a/adm_header', $data);
            $this->load->view('temp_a/adm_sidebar');
            $this->load->view('temp_a/adm_topbar', $data);
            $this->load->view('slideshow/edit', $data);
            $this->load->view('temp_a/adm_footer');
        } else {
            $this->load->library('upload');
            if (!empty($_FILES['g_slideshow']['name'])) {
                $config['upload_path']          = './assets_p/image/slideshow/';
                $config['allowed_types']        = 'gif|jpg|png|jpeg|bmp|svg';
                $config['overwrite']            = true;
                $config['max_size']             = 2048;

                $this->upload->initialize($config);
                if ($this->upload->do_upload('g_slideshow')) {
                    $gambar = $this->upload->data();
                    $file_name = $gambar['file_name'];

                    $judul = $this->input->post('judul');
                    $deskripsi = $this->input->post('deskripsi');

                    $data  = [
                        "j_slideshow" => $judul,
                        "d_slideshow" => $deskripsi,
                        "g_slideshow" => $file_name,
                    ];
                    $this->db->where('id_slideshow', $this->input->post('id_slideshow'));
                    $this->db->update('slideshow', $data);
                    $this->session->set_flashdata('flash', 'diedit');
                    redirect(base_url() . 'slideshow/index');
                } else {
                    echo $this->upload->display_errors();
                }
            }
        }
    }

    public function detail($id_slideshow)
    {
        $data['admin'] = $this->db->get_where('admin', ['username' => $this->session->userdata('username')])->row_array();
        $data['slideshow'] = $this->m_slideshow->get_slideshowid($id_slideshow);
        $data['title'] = 'Detail Slideshow';
        $this->form_validation->set_rules('judul', 'Judul', 'required');
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required');
        $this->form_validation->set_rules('gambar', 'Gambar', 'required');
        $this->form_validation->set_rules('kategori', 'Kategori', 'required');
        $this->load->view('temp_a/adm_header', $data);
        $this->load->view('temp_a/adm_sidebar');
        $this->load->view('temp_a/adm_topbar', $data);
        $this->load->view('slideshow/detail', $data);
        $this->load->view('temp_a/adm_footer');
    }


    public function hapus($id_slideshow)
    {
        $this->m_slideshow->hapus_slideshow($id_slideshow);
        $this->session->set_flashdata('flash', 'dihapus');
        redirect(base_url() . 'slideshow/index');
    }
}
