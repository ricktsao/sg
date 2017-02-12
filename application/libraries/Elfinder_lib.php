<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

include_once FCPATH.DIRECTORY_SEPARATOR.'template/backend/lib/elFinder-2.1.21/php/elFinderConnector.class.php';
include_once FCPATH.DIRECTORY_SEPARATOR.'template/backend/lib/elFinder-2.1.21/php/elFinder.class.php';
include_once FCPATH.DIRECTORY_SEPARATOR.'template/backend/lib/elFinder-2.1.21/php/elFinderVolumeDriver.class.php';
include_once FCPATH.DIRECTORY_SEPARATOR.'template/backend/lib/elFinder-2.1.21/php/elFinderVolumeLocalFileSystem.class.php';

class Elfinder_lib 
{
  public function __construct($opts) 
  {
    $connector = new elFinderConnector(new elFinder($opts));
   
    $connector->run();
  }
}