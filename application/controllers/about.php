<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class about extends CI_Controller {

	public function index()
	{
		$this->load->view('profile/header');
		$this->load->view('profile/about');
		$this->load->view('profile/services');
		$this->load->view('profile/documentation');
		$this->load->view('profile/contact');
		$this->load->view('profile/footer');
	}
}
?>