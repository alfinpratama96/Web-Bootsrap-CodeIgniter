<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Documentation extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('ModelProfil','getDB');
	}
	public function index()
	{

	}
	public function editdoc(){
		if($this->session->has_userdata('user')){
		$data['images'] = $this->getDB->selectData('*','upload_image')->result();

		$this->load->view('template/admin/a_header');
		$this->load->view('template/admin/a_documentation',$data);
		$this->load->view('template/footer');
		}else{redirect(base_url('/login'));}
	}

	public function updateDoc($id){
		$text = $this->input->post('textedit');
		$data = array(
					'isi_kategori'=>$text
				);
		$this->getDB->updateData('books',$data,$id);
		redirect(base_url('/documentation/editdoc'));
	}

	public  function insert_gallery($id){
		$config['upload_path']			= './assets/img/';
		$config['allowed_types']		= 'gif|jpg|png|jpeg';
		$config['max_size']				= 5000;
		$config['file_name']			= date('m-d-Y h_i_s');

		$this->load->library('upload', $config);
		
		if ( ! $this->upload->do_upload('file_name'))
		{
			$error = array('error' => $this->upload->display_errors());

		 	redirect(base_url("/documentation/editdoc"));
		}
		else
		{
			$data_upload	= array('upload_data' => $this->upload->data());
			// var_dump($data_upload);exit();
			foreach ($data_upload as $key ) {
				$getData_image = array(
										'nama_image' => $key['file_name'],
										'format_image' => $key['file_ext'],
										'size_image' => $key['file_size'],
										'resolusi_image' => $key['image_size_str'] 
									);
			}
			
			$this->getDB->updateDataImage('upload_image',$getData_image,$id);
			redirect(base_url("/documentation/editdoc"));
		}

	}
}
?>