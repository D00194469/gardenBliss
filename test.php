  
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/drag.css">
  <link rel="stylesheet" href="css/graham.css">
  <link rel="stylesheet" href="css/animate.css">
 <link rel="stylesheet" href="css/media-queries.css">
  <script src="bootstrap.bundle.min.js / bootstrap.bundle.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
        
        
</head>

<br>
     <br>
     <br>

<body>
<?php
  include('includes/header.php');
  include('includes/database.php');  

    include("loginServ.php");
  ?>
 
<?php
//Selects all images, their id and userid with the tag animated
        require('includes/functions.php');
        ?>  


 <!-- Top content -->
 <div class="top-content">
            <div class="container">
            	
                <div class="row">
                    <div class="col-md-8 offset-md-2 text">
                        <h1 class="wow fadeInLeftBig"> Our Range of Plants</h1>
                        <div class="description wow fadeInLeftBig">
                        	<p>Click on a plant and you will be taken to a page full of growing guides and useful information about how to grow the plant,
                           how to care for the plant, when to harvest and problems and diseases that can affect the plant.
                         	
                        	</p>
                        </div>
                        
                    </div>
                </div>
                
            </div>            
  </div>

        <br>

        <!-- Page Content -->
        <div class="container" style="text-align: center;">

        <form method="post">
        <div class="form-group" class="ui-helper-clearfix" id="plantsInput">
                <label for="plant">Plant Search: </label>
                <input id="plantInput" class="form-control" type="text" name="plantInput">
                </div>
</form>

<br><br>

<h3>Vegetables & Herbs</h3>
          
<br><br>
<!--Carousel Wrapper-->
<div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel" data-interval='false'>

  <!--Controls
  <div class="controls-top">
    <a class="btn-floating" href="#multi-item-example" data-slide="prev"><i class="fa fa-chevron-left"></i></a>
    <a class="btn-floating" href="#multi-item-example" data-slide="next"><i class="fa fa-chevron-right"></i></a>
  </div>-->
  <!--/.Controls-->

  <!--Indicators-->
 
  <!--/.Indicators-->

  <!--Slides-->
  <div class="carousel-inner" role="listbox">

    <!--First slide-->
    <div class="carousel-item active">
      <div class="row">
      <?php foreach ($vegetables as $veg): ?>
      <div class="col-md-4 clearfix d-md-block">
    <div class="card mb-2">
      <?php $counter = 0; ?>
        <?php 
          $counter++;
    if ($counter > 3){
    break;
    }?>
            <?= ($veg['plantImage'] <> " " ? "<img class='card-img-top' src='images/{$veg['plantImage']}'/>" : "") ?>
            <div class="card-body">
              <h4 class="card-title"><?php echo ($veg['plantName']); ?></h4>
              <p class="card-text"><?php echo ($veg['plantTagline']);?></p>
              <a href="plantInfo.php?plantID=<?php echo ($veg['plantID']); ?>" class="btn btn-primary">See More</a>
            </div>
           
          </div>
        </div>
        <?php endforeach; ?> 
      </div>

    </div>
    <!--/.First slide-->


    <!--Second slide-->
   <div class="carousel-item">

      <div class="row">
      <?php foreach ($vegetables1 as $veg1): ?>
      <div class="col-md-4 clearfix d-md-block">
    <div class="card mb-2">
      <?php $counter = 0; ?>
      
        <?php 
          $counter++;
    if ($counter > 3){
    break;
    }?>
            <?= ($veg1['plantImage'] <> " " ? "<img class='card-img-top' src='images/{$veg1['plantImage']}'/>" : "") ?>
            <div class="card-body">
              <h4 class="card-title"> <?php echo ($veg1['plantName']); ?></h4>
              <p class="card-text"><?php echo ($veg1['plantTagline']);?></p>
              <a href="plantInfo.php?plantID=<?php echo ($veg1['plantID']); ?>"class="btn btn-primary">See More</a>
            </div>
           
          </div>
        </div>
        <?php endforeach; ?> 
        </div>
      </div>

    <!--/.Second slide-->

    <!--Third slide-->
    <div class="carousel-item">

<div class="row">
<?php foreach ($vegetables2 as $veg2): ?>
<div class="col-md-4 clearfix d-md-block">
<div class="card mb-2">
<?php $counter = 0; ?>

  <?php 
    $counter++;
if ($counter > 3){
break;
}?>
      <?= ($veg2['plantImage'] <> " " ? "<img class='card-img-top' src='images/{$veg2['plantImage']}'/>" : "") ?>
      <div class="card-body">
        <h4 class="card-title"><?php echo ($veg2['plantName']); ?></h4>
        <p class="card-text"><?php echo ($veg2['plantTagline']);?></p>
        <a href="plantInfo.php?plantID=<?php echo ($veg2['plantID']); ?>" class="btn btn-primary">See More</a>
      </div>
     
    </div>
  </div>
  <?php endforeach; ?> 
  </div>
</div>
 <!--/.Third slide-->

<!--4th slide-->

<div class="carousel-item">

<div class="row">
<?php foreach ($vegetables3 as $veg3): ?>
<div class="col-md-4 clearfix d-md-block">
<div class="card mb-2">
<?php $counter = 0; ?>

  <?php 
    $counter++;
if ($counter > 3){
break;
}?>
      <?= ($veg3['plantImage'] <> " " ? "<img class='card-img-top' src='images/{$veg3['plantImage']}'/>" : "") ?>
      <div class="card-body">
        <h4 class="card-title"><?php echo ($veg3['plantName']); ?></h4>
        <p class="card-text"><?php echo ($veg3['plantTagline']);?></p>
        <a href="plantInfo.php?plantID=<?php echo ($veg3['plantID']); ?>" class="btn btn-primary">See More</a>
      </div>
     
    </div>
  </div>
  <?php endforeach; ?> 
  </div>
</div>



</div>
<br><br><br>
    <!--/.Third slide-->
    <ol class="carousel-indicators">
    <li data-target="#multi-item-example" data-slide-to="0" class="active"></li>
    <li data-target="#multi-item-example" data-slide-to="1"></li>
    <li data-target="#multi-item-example" data-slide-to="2"></li>
    <li data-target="#multi-item-example" data-slide-to="3"></li>
  </ol>




  </div>
  <!--/.Slides-->
<!--/.Carousel Wrapper-->

<br><br><br>

<h3>Fruits</h3>
<br><br>
<!--Carousel Wrapper-->
<div id="multi-item-fruit" class="carousel slide carousel-multi-item" data-ride="carousel"data-interval='false'>

  <!--Controls
  <div class="controls-top">
    <a class="btn-floating" href="#multi-item-fruit" data-slide="prev"><i class="fa fa-chevron-left"></i></a>
    <a class="btn-floating" href="#multi-item-fruit" data-slide="next"><i class="fa fa-chevron-right"></i></a>
  </div>
  -->
  <!--/.Controls-->

  <!--Slides-->
  <div class="carousel-inner" role="listbox">

    <!--First slide-->
    <div class="carousel-item active">
      <div class="row">
      <?php foreach ($fruits as $fruit): ?>
      <div class="col-md-4 clearfix d-md-block d-none">
    <div class="card mb-2">
      <?php $counter = 0; ?>
        <?php 
          $counter++;
    if ($counter > 3){
    break;
    }?>
            <?= ($fruit['plantImage'] <> " " ? "<img class='card-img-top' src='images/{$fruit['plantImage']}'/>" : "") ?>
            <div class="card-body">
              <h4 class="card-title"><?php echo ($fruit['plantName']); ?></h4>
              <p class="card-text"><?php echo ($fruit['plantTagline']);?></p>
              <a  href="plantInfo.php?plantID=<?php echo ($fruit['plantID']); ?>"class="btn btn-primary">See More</a>

            </div>
           
          </div>
        </div>
        <?php endforeach; ?> 
      </div>

    </div>
    <!--/.First slide-->
    <!--Second slide-->
   <div class="carousel-item">

      <div class="row">
      <?php foreach ($fruits1 as $fruit1): ?>
      <div class="col-md-4 clearfix d-md-block">
    <div class="card mb-2">
      <?php $counter = 0; ?>
      
        <?php 
          $counter++;
    if ($counter > 3){
    break;
    }?>
            <?= ($fruit1['plantImage'] <> " " ? "<img class='card-img-top' src='images/{$fruit1['plantImage']}'/>" : "") ?>
            <div class="card-body">
              <h4 class="card-title"><?php echo ($fruit1['plantName']); ?></h4>
              <p class="card-text"><?php echo ($fruit1['plantTagline']);?></p>
              <a href="plantInfo.php?plantID=<?php echo ($fruit1['plantID']); ?> "class="btn btn-primary">See More</a>
            </div>
           
          </div>
        </div>
        <?php endforeach; ?> 
        </div>
      </div>

  
    <!--/.Second slide-->

    <!--Third slide-->
    <div class="carousel-item">

<div class="row">
<?php foreach ($fruits2 as $fruit2): ?>
<div class="col-md-4 clearfix d-md-block">
<div class="card mb-2">
<?php $counter = 0; ?>

  <?php 
    $counter++;
if ($counter > 3){
break;
}?>
      <?= ($fruit2['plantImage'] <> " " ? "<img class='card-img-top' src='images/{$fruit2['plantImage']}'/>" : "") ?>
      <div class="card-body">
        <h4 class="card-title"><?php echo ($fruit2['plantName']); ?></h4>
        <p class="card-text"><?php echo ($fruit2['plantTagline']);?></p>
        <a href="plantInfo.php?plantID=<?php echo ($fruit2['plantID']); ?>"class="btn btn-primary">See More</a>
      </div>
     
    </div>
  </div>
  <?php endforeach; ?> 
  </div>
</div>

</div>
    <!--/.Third slide-->
    <br><br><br>
 <!--Indicators-->
 <ol class="carousel-indicators">
    <li data-target="#multi-item-fruit" data-slide-to="0" class="active"></li>
    <li data-target="#multi-item-fruit" data-slide-to="1"></li>
    <li data-target="#multi-item-fruit" data-slide-to="2"></li>
  </ol>
  <!--/.Indicators-->
  </div>
  <!--/.Slides-->
<!--/.Carousel Wrapper-->

<br><br><br>

<h3>Flowers</h3>
<br><br>
<!--Carousel Wrapper-->
<div id="multi-item-flower" class="carousel slide carousel-multi-item" data-ride="carousel" data-interval='false'>

  <!--Controls
  <div class="controls-top">
    <a class="btn-floating" href="#multi-item-flower" data-slide="prev"><i class="fa fa-chevron-left"></i></a>
    <a class="btn-floating" href="#multi-item-flower" data-slide="next"><i class="fa fa-chevron-right"></i></a>
  </div>-->
  <!--/.Controls-->

  <!--Indicators-->
  <!--/.Indicators-->

  <!--Slides-->
  <div class="carousel-inner" role="listbox">

    <!--First slide-->
    <div class="carousel-item active">
      <div class="row">
      <?php foreach ($flowers as $flower): ?>
      <div class="col-md-4 clearfix d-md-block d-none">
    <div class="card mb-2">
      <?php $counter = 0; ?>
        <?php 
          $counter++;
    if ($counter > 3){
    break;
    }?>
            <?= ($flower['plantImage'] <> " " ? "<img class='card-img-top' src='images/{$flower['plantImage']}'/>" : "") ?>
            <div class="card-body">
              <h4 class="card-title"><?php echo ($flower['plantName']); ?></h4>
              <p class="card-text"><?php echo ($flower['plantTagline']);?></p>
              <a href="plantInfo.php?plantID=<?php echo ($flower['plantID']); ?>"class="btn btn-primary">See More</a>
            </div>
           
          </div>
        </div>
        <?php endforeach; ?> 
      </div>

    </div>
    <!--/.First slide-->


    <!--Second slide-->
   <div class="carousel-item">

      <div class="row">
      <?php foreach ($flowers1 as $flower1): ?>
      <div class="col-md-4 clearfix d-md-block">
    <div class="card mb-2">
      <?php $counter = 0; ?>
      
        <?php 
          $counter++;
    if ($counter > 3){
    break;
    }?>
            <?= ($flower1['plantImage'] <> " " ? "<img class='card-img-top' src='images/{$flower1['plantImage']}'/>" : "") ?>
            <div class="card-body">
              <h4 class="card-title"><?php echo ($flower1['plantName']); ?></h4>
              <p class="card-text"><?php echo ($flower1['plantTagline']);?></p>
              <a href="plantInfo.php?plantID=<?php echo ($flower1['plantID']); ?> "class="btn btn-primary">See More</a>
            </div>
           
          </div>
        </div>
        <?php endforeach; ?> 
        </div>
      </div>

  
    <!--/.Second slide-->

    <!--Third slide-->
    <div class="carousel-item">

<div class="row">
<?php foreach ($flowers2 as $flower2): ?>
<div class="col-md-4 clearfix d-md-block">
<div class="card mb-2">
<?php $counter = 0; ?>

  <?php 
    $counter++;
if ($counter > 3){
break;
}?>
      <?= ($flower2['plantImage'] <> " " ? "<img class='card-img-top' src='images/{$flower2['plantImage']}'/>" : "") ?>
      <div class="card-body">
        <h4 class="card-title"><?php echo ($flower2['plantName']); ?></a></h4>
        <p class="card-text"><?php echo ($flower2['plantTagline']);?></p>
        <a href="plantInfo.php?plantID=<?php echo ($flower2['plantID']); ?>" class="btn btn-primary">See More</a>
      </div>
     
    </div>
  </div>
  <?php endforeach; ?> 
  </div>
</div>

</div>
    <!--/.Third slide-->
    <br><br><br>
 <!--Indicators-->
 <ol class="carousel-indicators">
    <li data-target="#multi-item-flower" data-slide-to="0" class="active"></li>
    <li data-target="#multi-item-flower" data-slide-to="1"></li>
    <li data-target="#multi-item-flower" data-slide-to="2"></li>
  </ol>
  </div>
  <!--/.Slides-->

</div>

<!--/.Carousel Wrapper-->
<!-- </div>

</div>
</div>
</div> -->
  
  
<?php
include('includes/footer3.php');  
?>
<script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/jquery-migrate-3.0.0.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/retina-1.1.0.min.js"></script>
        <script src="js/waypoints.min.js"></script>
        <script src="js/scripts.js"></script>
        <script src="js/autofill.js"></script>
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
          

                </body>
                </html>
