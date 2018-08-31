<?php 
  //ini_set('display_errors', 1);
  //ini_set('display_startup_errors', 1);
  //error_reporting(E_ALL);

  $dr = $_SERVER['DOCUMENT_ROOT']."/sophocles/";
  $phpDir = $dr."php";
  
  
  include_once $phpDir."/functions.php";
  include_once $phpDir."/header.php";
  include_once $phpDir."/books.php";
  
     
  
?>

<div class="container-fluid padding-top-70">
  <!--<div class="sidenav margin-top-55">
    <div class="sidenav-tab text-right">
      <span class="sideNavCloser"><i class="fa fa-angle-double-left" aria-hidden="true"></i></span>
    </div>

  </div>-->
  <div class="row">
    <!--<div class="col-lg-12">
      <span class="sideNavOpener"><i class="fa fa-angle-double-right" aria-hidden="true"></i></span>
    </div>-->
  </div>
  <div class="row">
    <?php
      $books = new books();
      $books->getBooks(1,$link);
      //pr($books->getBookCards($books));
      echo $books->getBookCards($books);
    ?>
    
    
    
    
  </div>
</div>

<?php 
  include_once $phpDir.'/footer.php';
?>