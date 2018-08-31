<?php
  require_once $phpDir."/db.php";
  require_once $phpDir."/site.php";
  require_once $phpDir."/nav.php";
  
  $help = new help();
  $help->getHelp($link);
  //pr($help);
  pr($help->help);

  //$link->close();
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <base href="http://localhost:8888/sophocles/" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.5.9/css/mdb.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Alfa+Slab+One|Audiowide|Fredericka+the+Great|Metamorphous|Special+Elite|Wallpoet" rel="stylesheet">
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">  
    <link rel="stylesheet" href="css/site.css"/>
    
    <script type="text/javascript">var help = '<?php echo $help->help?>';</script>

    <title><?php echo $site->name?></title>
  </head>
  <body>
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark stylish-color-dark">
  <a class="navbar-brand" href="./"><img src="assets/<?php echo $site->brand_image?>"/> <h2><?php echo $site->name?></h2></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav mr-auto">
      
      <?php echo $nav ?>

 </ul>
  </div>
</nav>