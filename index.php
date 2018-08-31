<?php 
  //ini_set('display_errors', 1);
  //ini_set('display_startup_errors', 1);
  //error_reporting(E_ALL);

  $dr = $_SERVER['DOCUMENT_ROOT']."/sophocles/";
  $phpDir = $dr."php";
  $assDir = $dr."assets";
  
  
  include_once $phpDir."/functions.php";
  include_once $phpDir."/header.php";
  
?>

   
<div class="container-fluid padding-top-25">
  
  <div class="row">
    <div class="col-lg-12">stuff</div>
  </div>
</div>


<?php 
  include_once $phpDir.'/footer.php';
?>