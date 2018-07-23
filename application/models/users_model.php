<?php 

	class Users_model extends CI_model{
		
		public function __construct(){
				parent::__construct();
				$this->load->database();
				
		}
		 
		/* check if user exists */
		public function find_user($username,$password){
			$query = "SELECT user_username FROM users WHERE user_username = ? AND user_password = ? AND user_status = ?";
			$query_result = $this->db->query($query,array($username,$password,1));
			
			if($query_result->num_rows() > 0) {
				return TRUE;
			}
			else{
				$error = $this->db->error();
				echo $error['message'];
				return false;
				exit;
			}
			
			
		}
		
		public function check_if_exists($username){
			$query = "SELECT * FROM users WHERE user_username = ?";
			$query_result = $this->db->query($query,$username);
			
			if($query_result->num_rows() > 0)
			{
				return true;
			}
			else{
				$error = $this->db->error();
				echo $error['message'];
				return false;
				
			}
			
		}
		/* add users */
		public function add_users($data){
			
			$user_data = array(
				'user_id' => NULL,
				'user_date' => $this->db->escape_str($data['user_date']),
				'user_type' => $this->db->escape_str($data['user_type']),
				'user_username' => $this->db->escape_str($data['user_username']),
				'user_name' => $this->db->escape_str($data['user_name']),
				'user_lastname' => $this->db->escape_str($data['user_lastname']),
				'user_password' => $this->db->escape_str($data['user_password']),
				'user_email' => $this->db->escape_str($data['user_email']),
				'user_gender' => $this->db->escape_str($data['user_gender']),
				'user_status' => $this->db->escape_str($data['user_status']),
				'user_rol' => $this->db->escape_str($data['user_rol']),
				'user_city' => $this->db->escape_str($data['user_city']),
				'user_address' => $this->db->escape_str($data['user_address'])
			);
			$result = $this->db->insert('users', $user_data);
			
			if($result){
				return true;
			}
			else{
				$error = $this->db->error(); // Has keys 'code' and 'message'
				return $error['message'];
			}
			
		}
		
		
		
		
	}






?>