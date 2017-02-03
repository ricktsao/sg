<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends Backend_Controller{

	public function index()
	{

		
		$this->display("index_view");
	}

	public function testpdf()
	{	
		$time = time();
		$pdfFilePath = "./upload/tmp/testpdf_".$time .".pdf";

		$html = "<h1>富網通社區測試</h1>";
		$html .= "<table border=1><tr><td>表格＆圖檔</td><td><img width='100' src='".base_url('template\backend\images\img_logo.png')."'></td></tr></table>";

		$this->load->library('pdf');
		$mpdf = new Pdf();
		$mpdf = $this->pdf->load();
		$mpdf->useAdobeCJK = true;
		$mpdf->autoScriptToLang = true;

		//$mpdf->SetWatermarkText('富網通社區測試',0.1);
		//$mpdf->showWatermarkText = true; 
		//$mpdf->watermark_font = 'PMingLiU';		
		
		//$mpdf->SetWatermarkImage(base_url('template\backend\images\img_logo.png'));
		//$mpdf->watermarkImageAlpha = 0.081;
		//$mpdf->showWatermarkImage = true;
		
		$mpdf->SetWatermarkText('富網通社區測試');
		$mpdf->watermarkTextAlpha = 0.081;
		$mpdf->watermark_font = 'DejaVuSansCondensed';
		$mpdf->showWatermarkText = true;
		 
		//$mpdf=new \mPDF('+aCJK','A4','','',32,25,27,25,16,13); 		
		$mpdf->WriteHTML($html);
		$mpdf->Output();
	}
 	

	function utf16urlencode($str)
	{
	    $str = mb_convert_encoding($str, 'UTF-16', 'UTF-8');
	    $out = '';
	    for ($i = 0; $i < mb_strlen($str, 'UTF-16'); $i++)
	    {
	        $out .= '%u'.bin2hex(mb_substr($str, $i, 1, 'UTF-16'));
	    }
	    return $out;
	}
	
	public function generateTopMenu()
	{		
		//$this->addTopMenu("群組管理 ","");
		//$this->addTopMenu("帳號管理 ","");
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */