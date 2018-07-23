<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once(APPPATH.'core/password/password.php');

 
class Users_controller extends CI_Controller {
	
	public function __construct(){
		 parent::__construct();
		 $this->load->model("users_model");
		
		
	}	
	public function index()
	{
		
	}
	
	// check if users exits and send response
	public function login(){
		
		if(isset($_GET['username']) and isset($_GET['password'])){
			$username = $_GET['username'];
			$password = $_GET['password'];	
		}
		$decrypted_pass = dec_enc('decrypt',$_GET['password']);
		$exists = $this->users_model->find_user($username,$decrypted_pass);
		
		
		
		
		if($exists){
			echo json_encode(array('response' => true));
		}
		else{ 
			echo json_encode(array('response' => false));
		}
	
	}
	//
	public function registration(){
			if(isset($_GET['password'])){
			$password = $_GET['password'];	
		}
		
			$date = date("Y-m-d H:i:s");
			$encrypted_pass = dec_enc('encrypt',$password);
			
			$user_info = array("user_date" => $date,
							   "user_type" => "0",
							   "user_username" => $_GET['username'],
							   "user_name" => $_GET['name'],
							   "user_lastname" => $_GET['lastname'],
							   "user_password" => $encrypted_pass,
							   "user_email" => $_GET['email'],
							   "user_gender" => $_GET['gender'],
							   "user_status" => "1",
							   "user_rol" => null,
							   "user_city" => $_GET['city'],
							   "user_address" => $_GET['address']);
							   
			if($this->users_model->check_if_exists($user_info['user_username'])){
				echo json_encode(array('response' => 'Username already exists'));
				exit;
			}
			else if($this->users_model->add_users($user_info)){
				 echo json_encode(array('response' => true));
				 
			}
			else{
				echo json_encode(array('response' => false));
			}
				
			
							   
	}
	
	
}
