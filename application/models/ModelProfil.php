<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ModelProfil extends CI_Model {
	public function selectData($kolom,$tabel){
		$this->db->select($kolom);
		$this->db->from($tabel);
		return $this->db->get();
	}

	public function updateData($tabel,$data,$id){
		$this->db->where('id',$id);
		$this->db->update($tabel,$data);
	}
	public function insertData($tabel,$data){
		$this->db->insert($tabel,$data);
		// $insertId = $this->db->insert_id();
		// return $insertId;
	}

	public function updateDataImage($tabel,$data,$id){
		$_id =  $this->db->get_where($tabel,['id'=>$id])->row();
		if($_id->nama_image !== null && $tabel=='upload_image'){
			unlink('./assets/img/'.$_id->nama_image);

			$this->db->where('id',$id);
			$this->db->update($tabel,$data);
		}else{
			$this->db->where('id',$id);
			$this->db->update($tabel,$data);
		}
	}
}
