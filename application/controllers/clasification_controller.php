<?php

   class Clasification_controller extends CI_Controller{

   	public function __construct(){
   		parent::__construct();
   		$this->load->model("clasification_model");
		$this->load->database();
   	}

    public function  reporte(){
      $this->load->view("Header");
      $this->load->view("Reporting");
      $this->load->view("Footer");
    }

   	public function Add_clasifications(){
		if(isset($_GET['user']) and isset($_GET['papeles']) and isset($_GET['cartones']) and isset($_GET['vidrios']) and isset($_GET['madera']) and isset($_GET['metal'])and isset($_GET['plasticos']) and isset($_GET['total_people'])){

			$user = $_GET['user'];
			$total_people = $_GET['total_people'];
			$papeles = $_GET['papeles'];
			$cartones = $_GET['cartones'];
			$vidrios = $_GET['vidrios'];
			$madera = $_GET['madera'];
			$metales = $_GET['metal'];
			$plasticos = $_GET['plasticos'];
			$date = date("Y-m-d H:i:s");
			$day = '1';
		}


   		$clasification_add_info = array('user' =>  $user,
   										'date' => $date,
										'plasticos' =>$plasticos,
										'madera' => $madera,
										'vidrios'=>$vidrios,
										'cartones'=>$cartones,
										'metales'=>$metales,
										'papel'=>$papeles,
										'total_people' =>  $total_people);

   			$add_clasification = $this->clasification_model->Add_clasification($clasification_add_info);

			if($add_clasification){
				echo (array('response' => true));
			}
			else{
				echo (array('response' => false));
			}

   	}
public function Get_clasification2(){

  if(isset($_GET['user'])){
    $user = array('user'=> $_GET['user']);
  }

  $get_all = $this->clasification_model->Get_clasification2($user);

  if($get_all){
      echo json_encode($get_all);
    }
    else{
      echo json_encode( $get_all);
    }
}
	public function Get_clasification(){
		if(isset($_GET['user'])){
			$user = array('user'=> $_GET['user']);
		}

		$get_all = $this->clasification_model->Get_clasification($user);

		if($get_all){
				echo json_encode(array('response' => $get_all));
			}
			else{
				echo json_encode(array('response' => $get_all));
			}
	}

	public function current_day(){
		if(isset($_GET['user'])){
			$user = array('user'=> $_GET['user']);
		}

			$day = $this->clasification_model->get_current_day($user);

			$current_day = count($day)+1;

			if($current_day > 7){
					$this->clasification_model->move_records_to_history();
			}

			echo json_encode(array('response' => $current_day));
			//var_dump(count($current_day)+1);

	}


   }


?>
