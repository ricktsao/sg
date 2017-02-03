<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pay extends Backend_Controller {
	
	function __construct() 
	{
		parent::__construct();		
		
	}
	

	public function contentList()
	{				
		
		$data = array();		
		
		$this->display("content_view",$data);
	}
	
	
	
	
	
	
	public function GenerateTopMenu()
	{
		//addTopMenu 參數1:子項目名稱 ,參數2:相關action  

		$this->addTopMenu(array("contentList","editContent","updateContent"));
	}
	
}


/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */