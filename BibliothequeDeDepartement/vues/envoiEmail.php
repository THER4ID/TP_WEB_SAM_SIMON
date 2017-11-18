<!DOCTYPE html>
<head>
<link rel="stylesheet" href="./css/style.css" type="text/css" />
<title>Page d'accueil</title>
</head>
<body>
<div class="container">
<div class="row">
<?php
	include("banner.php");
	
?>
</div>
<div class="row">
    <nav class="col-md-3 col-sm-3">
            <?php
	    include("menu.php");
	     ?>
    </nav> 
    <section class="col-md-9 col-sm-9">
<form class="form-horizontal" method="Post">
<fieldset>

<!-- Form Name -->
<legend>Envoyer un Email</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-3 control-label" for="textinput">De</label>  
  <div class="col-md-6">
  <input id="expediteur" name="expediteur" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-3 control-label" for="textinput">A</label>  
  <div class="col-md-6">
        <input type="text" class="hidden" name="action" value="envoyerEmail">
  <input id="receveur" name="receveur" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-3 control-label" for="textarea">Message </label>
  <div class="col-md-6">                     
    <textarea class="form-control" id="message" name="message"></textarea>
  </div>
</div>
<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="envoyer"></label>
  <div class="col-md-6">
    <button id="envoyer" name="envoyer" class="btn btn-primary">Envoyer</button>
  </div>
</div>
</fieldset>
</form>
</section>
</div>
</br>
<div class="row">
<?php
include("footer.php");
?>
</div>
</div>
</body> 
</html>