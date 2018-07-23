<?php

 class Clasification_model extends CI_Model{


	function ___construct(){
		parent::__construct();
		$this->load->database();
	}


		/*Add clasifications*/
	public function Add_clasification($info){
		$day = $this->get_current_day($info['user']);

		$data = array('clasification_day' => count($day)+1,
					  'clasification_id' => NULL,
					  'clasification_user' => $this->db->escape_str($info['user']),
					  'clasification_total_people' => $this->db->escape_str($info['total_people']),
					  'clasification_date' => $this->db->escape_str($info['date']),
					  'clasificacion_plasticos_weight' => $this->db->escape_str($info['plasticos']),
					  'clasificacion_cartones_weight' => $this->db->escape_str($info['cartones']),
					  'clasificacion_madera_weight' => $this->db->escape_str($info['madera']),
					  'clasificacion_papel_weight' => $this->db->escape_str($info['papel']),
					  'clasificacion_vidrios_weight' => $this->db->escape_str($info['vidrios']),
					  'clasificacion_metales_weight' => $this->db->escape_str($info['metales']));

		$insert_result = $this->db->insert("clasifications",$data);

		if(!$insert_result){
			$error = $this->db->error();
			return $error;
			exit;
		}
		else{
			return true;
		}
	}
  	public function Get_clasification2($data_clasifications){
      $sql = "SELECT * FROM clasifications where clasification_user = ?";
      $query_result = $this->db->query($sql,$data_clasifications['user']);
  //$query_result = $this->db->get_where('clasifications', array('clasification_user' => $data_clasifications['user']));
      if(!$query_result){
        $error = $this->db->error();
        return $error;
        exit;
      }
      $row = $query_result->result_array();
      return $row;
    }
		/* Get clasifications data of a single user*/
	public function Get_clasification($data_clasifications){
		$sql = "SELECT * FROM clasifications where clasification_user = ?";
		$query_result = $this->db->query($sql,$data_clasifications['user']);
//$query_result = $this->db->get_where('clasifications', array('clasification_user' => $data_clasifications['user']));
		if(!$query_result){
			$error = $this->db->error();
			return $error;
			exit;
		}

			foreach($query_result->result_array() as $row){
			$data_result = array('clasification_name' => $row['clasification_name'],
							    'clasification_user'=>  $row['clasification_user'],
							    'clasification_weight'=>$row['clasification_weight'],
						        'clasification_date'=> $row['clasification_date'],
								'clasificacion_plasticos_weight'=> $row['clasificacion_plasticos_weight'],
								'clasificacion_metales_weight'=> $row['clasificacion_metales_weight'],
								'clasificacion_madera_weight'=> $row['clasificacion_madera_weight'],
								'clasificacion_papel_weight'=> $row['clasificacion_papel_weight'],
							    'clasificacion_cartones_weight'=> $row['clasificacion_cartones_weight'],
							    'clasificacion_vidrios_weight'=> $row['clasificacion_vidrios_weight']);
		    return $data_result;
		}

	}

	public function get_current_day($user){
		$sql = "SELECT clasification_date FROM clasifications where clasification_user = ?";
		$query_result = $this->db->query($sql,$user);

		$array = [];
		foreach ($query_result->result_array() as $row)
		{
    	$array[] = $row['clasification_date'];
		}
		return $array;
	}

	public function move_records_to_history(){
		$query = $this->db->query("CALL MoveRecordsToHistory()");
	}


}


?>
