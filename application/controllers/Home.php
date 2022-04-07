<?php

class Home extends CI_Controller
{


    public function index()
    {
        $this->load->model('m_statistik');
        $this->load->model('m_berita');
        $this->load->model('m_slideshow');
        $this->load->model('m_testimoni');
        $this->load->model('m_portofolio');
        $this->load->model('m_clients');
        $this->m_statistik->insert_count();
        $data['statistic'] = $this->m_statistik->get_resume_statistic();
        $data['slideshow'] = $this->m_slideshow->get_slideshow();
        $data['daftarlayanan'] = $this->db->get('daftarlayanan')->result_array();
        $data['kontak'] = $this->db->get('kontak')->row_array();
        $data['visi'] = $this->db->get('visi')->row_array();
        $data['misi'] = $this->db->get('misi')->result_array();
        $data['berita'] = $this->m_berita->get_berita();
        $data['testimoni'] = $this->m_testimoni->get_testimoni();
        $data['clients'] = $this->m_clients->get_clients();
        $data['kategori'] = $this->m_portofolio->get_kategori();
        $data['portofolio'] = $this->m_portofolio->get_portofolio();

        $data['judul'] = 'Kebumen Prima Sarana';
        $this->load->view('temp_p/header_p', $data);
        $this->load->view('home/index', $data);
        $this->load->view('temp_p/footer_p');
    }
    public function portfoliodetail($id_portofolio)
    {
        $this->load->model('m_portofolio');
        $data['portofolio'] = $this->m_portofolio->get_portofolioid($id_portofolio);

        $data['judul'] = 'Kebumen Prima Sarana';
        $this->load->view('home/portfoliodetail', $data);
    }
}
