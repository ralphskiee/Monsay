<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_model extends CI_Model {




function can_login($id_number , $password)
{
	$this->db->where('id_number', $id_number);
	$this->db->where('password', $password);
	$query = $this->db->get('type');
	if($query->num_rows() > 0)
	{	
		return true;
	}
	else
	{
		return false;
	}
}
}
/* End of file login_model.php */
/* Location: ./application/models/login_model.php */