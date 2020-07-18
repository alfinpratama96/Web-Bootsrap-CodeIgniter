<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Products extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('ModelProfil','getDB');
	}

	public function index()
	{
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

		$this->load->view('template/header');
		$this->load->view('template/about');
		$this->load->view('template/services',$data);
		$this->load->view('template/documentation');
		$this->load->view('template/contact');
		$this->load->view('template/footer');
	}

	public function editProducts(){
		if($this->session->has_userdata('user')){
		$data['products'] = $this->getDB->selectData('*','products')->result();
		
		$this->load->view('template/admin/a_header');
		$this->load->view('template/admin/a_products',$data);
		$this->load->view('template/footer');
		}else{redirect(base_url('/login'));}
	}

	public  function form_products(){
		if($this->session->has_userdata('user')){
		$this->load->view('template/admin/a_header');
		$this->load->view('template/admin/af_products');
		$this->load->view('template/footer');
		}else{redirect(base_url('/login'));}
	}

	public  function insert_products(){

		$product_name				= $this->input->post('nama_produk');
		$slug_product				= $this->input->post('kategori_produk');
		$product_description		= $this->input->post('deskripsi_produk');

		$data =  array(
					'product_name' => $product_name,
					'slug_product' => $slug_product,
					'product_description' => $product_description
				);

		$this->getDB->insertData('products',$data);
		redirect(base_url("/products/editproducts"));
	}

	public function updateProducts($id){
		$text = $this->input->post('textedit');
		$data = array(
					'isi_kategori'=>$text
				);
		$this->getDB->updateData('books',$data,$id);
		redirect(base_url('/products/editproducts'));
	}
}
?>