<?php
class Ceklogin{

	public function prosess($user,$pass){
		if ($user=='admin' && $pass=='admin'){
			return true;
		}else{
			return false;
		}  
	}
}
?>