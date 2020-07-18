<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Services extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('ModelProfil','getDB');
	}

	public function index()
	{
		$dataProduk['produk'] = $this->getDB->selectData('*','products')->result();
		$dataImages['images'] = $this->getDB->selectData('*','upload_image')->result();
		$hasil = $this->getDB->selectData('*','books')->result();
		$i=0;
		foreach ($hasil as $value) {
			$isi_kategori[$i++] = $value->isi_kategori;
		}
		$data = array(
					'sosial' => $isi_kategori[0],
					'training' => $isi_kategori[1],
					'suport' => $isi_kategori[2]
				);
		// var_dump($dataProduk);exit();
		$this->load->view('template/header',$dataProduk);
		$this->load->view('template/about');
		$this->load->view('template/services',$data);
		$this->load->view('template/documentation',$dataImages);
		$this->load->view('template/contact');
		$this->load->view('template/footer');
	}

	public function editservice(){
		if($this->session->has_userdata('user')){
		$hasil = $this->getDB->selectData('*','books')->result();
		$i=0;
		foreach ($hasil as $value) {
			$isi_kategori[$i++] = $value->isi_kategori;
		}
		$data = array(
					'sosial' => $isi_kategori[0],
					'training' => $isi_kategori[1],
					'suport' => $isi_kategori[2]
				);
		// var_dump($data);exit();
		
		$this->load->view('template/admin/a_header');
		$this->load->view('template/admin/a_books',$data);
		$this->load->view('template/footer');
		}else{redirect(base_url('/login'));}
	}

	public function updateBooks($id){
		$text = $this->input->post('textedit');
		$data = array(
					'isi_kategori'=>$text
				);
		$this->getDB->updateData('books',$data,$id);
		redirect(base_url('/services/editservice'));
	}

	public function tampildeskripsi(){
		$this->load->view('template/admin/a_header');
		$this->load->view('template/tampildeskripsi');
		$this->load->view('template/footer');
	}
		public function tampilatk(){
		$this->load->view('template/admin/a_header');
		$this->load->view('template/tampilatk');
		$this->load->view('template/footer');
	}
		public function tampilart(){
		$this->load->view('template/admin/a_header');
		$this->load->view('template/tampilart');
		$this->load->view('template/footer');
	}

}
?>