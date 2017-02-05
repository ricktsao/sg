<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Example extends Backend_Controller{

	function __construct() 
	{
		parent::__construct();		
		
	}

	public function index()
	{
		
		$this->display("content_list");
	}

	public function form()
	{		
		$this->display("content_form");
	}


	
	
	public function GenerateTopMenu()
	{
		//addTopMenu 參數1:子項目名稱 ,參數2:相關action  

		$this->addTopMenu(array("index"));
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */