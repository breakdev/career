<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Apply extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('Career_model');
    }

    public function index()
    {
		$this->load->view('apply', array('error' => ' ' ));
    }

    public function apply_form($id){
    	$rcd=$this->Career_model->ambil_data_id($id);
    	$data=array(
			'id_position'	=> set_value('id_position',$rcd->id_position),
			'position_name'	=> set_value('position_name',$rcd->position_name),
			'description'	=> set_value('description',$rcd->description),
			'requirement'	=> set_value('requirement',$rcd->requirement),
			'action' 		=> site_url('Apply/aksi_upload'),
			'button'		=>'Apply',
			'error' 		=>' '
			);
		$this->load->view('apply',$data);
    } 

    public function aksi_upload(){
		$config['upload_path']          = './berkas/';
		$config['allowed_types']        = 'gif|jpg|png';
		$config['max_size']             = 100;
		$config['max_width']            = 1024;
		$config['max_height']           = 768;
 
		$this->load->library('upload', $config);
 
		if (!$this->upload->do_upload('cv')){
			$error = array('error' => $this->upload->display_errors());
			$this->load->view('apply', $error);
		}else{
			$data = array('upload_data' => $this->upload->data());
			$this->load->view('v_upload_sukses', $data);
		}
	}
}

/* End of file Workflows.php */
/* Location: ./application/controllers/Workflows.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2017-04-15 00:43:10 */
/* http://harviacode.com */