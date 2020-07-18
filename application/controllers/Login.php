<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function index()
	{
		$this->load->view('template/admin/a_header');
		$this->load->view('template/login');
		$this->load->view('template/footer');
	}
	public function masuk(){
		$this->load->library('ceklogin');
		$user = $this->input->post('user');
		$pass = $this->input->post('pass');

		if($this->ceklogin->prosess($user,$pass)== true){
			$this->session->set_userdata(array('user'=>$user));
			redirect(base_url('/Products/editProducts'));
		}else{
			$data['error'] = 'Your Account is Invalid';
			redirect(base_url('/login'));
		}
	}

	public function logout(){
		$this->session->unset_userdata('user');
		redirect(base_url('/login'));
	}

}
