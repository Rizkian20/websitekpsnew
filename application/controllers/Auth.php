<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
    }


    public function index()
    {
        $this->form_validation->set_rules('username', 'Username', 'trim|required');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');

        if ($this->form_validation->run() == false) {
            $data['title'] = 'Login Admin';
            $this->load->view('temp_a/auth_header', $data);
            $this->load->view('auth/login');
            $this->load->view('temp_a/auth_footer');
        } else {
            $this->_login();
        }
    }

    private function _login()
    {
        $username = html_escape($username = $this->input->post('username', true));
        $password = html_escape($password = $this->input->post('password', true));
        $password1 = md5($password);
        $admin = $this->db->get_where('admin', ['username' => $username])->row_array();

        if ($admin) {
            if ($password1 == $admin['password']) {
                $data = [
                    'username' => $admin['username'],
                ];
                $this->session->set_userdata($data);
                echo $this->session->set_userdata($data);
                redirect('admin');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                Password salah!
                </div>');
                redirect('auth');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
            Admin belum terdaftar!
            </div>');
            redirect('auth');
        }
    }

    public function logout()
    {
        $this->session->unset_userdata('username');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Logout admin berhasil!
            </div>');
        redirect('auth');
    }
}
