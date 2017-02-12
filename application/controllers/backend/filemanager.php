<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class FileManager extends Backend_Controller
{
    
    function __construct()
    {
        parent::__construct();
        
    }
    
    
    public function index()
    {
       $data=[];
       $data['templateUrl']=$this->config->item('template_backend_path')."/";

       $url  = $this->config->item('backend_name').'/'.$this->router->fetch_class().'/elfinder_template';
      
       $this->load->view( $url,$data);
    }
    
    public function elfinder()
    {
        
        
        $opts = array(
            // 'debug' => true, 
            'roots' => array(
                array(
                    'driver' => 'LocalFileSystem',
                    'path' => set_realpath('upload/storage'),
                    'URL' => site_url('upload/storage') . '/',
                    // more elFinder options here
                    'imgLib' => 'gd',
                    'tmbPath' => 'thumbnails',
                    'dirMode' => 0755, // new dirs mode (default 0755)
                    'fileMode' => 0644, // new files mode (default 0644)
                    'attributes' => array(
                        array( // hide anything else
                            'pattern' => '/.quarantine/',
                            'hidden' => true
                        ),
                        array( // hide anything else
                            'pattern' => '/thumbnails/',
                            'hidden' => true
                        )
                    )                    
                )
            )
        );
        
        $this->load->library('elfinder_lib', $opts);
        
        //$data = array();		
        
        //$this->display("content_view",$data);
    }
    
    
    
    
    
    
    
    
    public function GenerateTopMenu()
    {
        //addTopMenu 參數1:子項目名稱 ,參數2:相關action  
        
        $this->addTopMenu(array(
            "index"
        ));
    }
    
}


/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
