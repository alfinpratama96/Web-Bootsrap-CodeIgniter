<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('ModelProfil','getDB');
	}
	public function index()
	{

	}
	public function editContact(){
		if($this->session->has_userdata('user')){
		$data['images'] = $this->getDB->selectData('*','upload_image')->result();

		$data['contacts'] = $this->getDB->selectData('*','contacts')->result();
		
		$this->load->view('template/admin/a_header');
		$this->load->view('template/admin/a_contact',$data);
		$this->load->view('template/footer');
	}else{redirect(base_url('/login'));}
	}

	public  function insert_contact(){
		$name				= $this->input->post('nama_lengkap');
		$email				= $this->input->post('email');
		$messages		= $this->input->post('pesan');

		$data =  array(
					'name' => $name,
					'email' => $email,
					'messages' => $messages
				);

		$this->getDB->insertData('contacts',$data);
		redirect(base_url());

	}
}
?>