<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_page_controller extends CI_Controller {

	
	public function index()
	{
		$data['title'] = "Login|Ramon Magsaysay High School";
		$this->load->view('templates/header',$data);
		$this->load->view('vthesis/login_page',$data);
		$this->load->view('templates/footer');
	}

	// public function login(){
		// $user = array(
			// 'username' => $this->input->post('username'),
			// 'password' => $this->input->post('password')
		// );
		// $this->load->model('model_login');
		// $query=$this->model_login->read();
	// }
	
	
}

?>