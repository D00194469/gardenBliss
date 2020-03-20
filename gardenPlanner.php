<?php
require('includes/database.php');

    $queryPlant = "SELECT * FROM plant WHERE plantID = plantID LIMIT 3"; 
    $statement1 = $conn->prepare($queryPlant);
    $statement1->execute();
    $plants = $statement1->fetchAll();
    $statement1->closeCursor();
     ?>

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
<br><br>
 
</head>
  <title>Drag&Drop Garden</title>
  <?php
    include('includes/header.php');
    include('includes/functions.php');
        ?>
  
    <body>

 <!-- Top content -->
 <div class="top-content">
            <div class="container">
            	
                <div class="row">
                    <div class="col-md-8 offset-md-2 text">
                        <h1 class="wow fadeInLeftBig">Plan your ideal garden</h1>
                        <div class="description wow fadeInLeftBig">
                        	<p>We walk you through factors that can affect how your garden will grow — sunlight, shade, soil —
                                    and the balance between fruits, shrubs, flowers and vegetables
                         	
                        	</p>
                        </div>
                        
                    </div>
                </div>
                
            </div>            
        </div>
<br><br>
<div class="container">
  <h2>Garden Planner</h2>
  <div class="row">
<p>Planning and creating a new garden design can give your home a boost. Our garden planner makes it easy to plan your dream garden, it allows you to plan the layout and content of your garden easily. It also gives you the flexibility to create the best design for your  garden. with the planner you can easily add various  vegetables and move them around your allotted garden to get the perfect layout.

</p><br><br><br><br>

<!-- Feature Cards -->
<section class="d-flex bg-light" id="feature-cards">
    <div class="container d-flex justify-content-center">
        <div class="row align-items-center justify-content-center">
            <div class="col-12 align-self-center">
                <div class="row">
                    <div class="col-12 col-lg-4">
                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col mx-auto text-center">
                                    <i class="far fa-hand-pointer fa-4x"></i>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col-12 text-center">
                                        <h3>Select</h3><hr>
                                        <p class="text-secondary">Use the width and breadth grid provided to create the dimension that you want for your garden.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col mx-auto text-center">
                                    <i class="far fa-object-ungroup fa-4x"></i>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col-12 text-center">
                                        <h3>Design</h3><hr>
                                        <p class="text-secondary">Pick from the various vegetables, drag and drop it to anywhere you want on your alloted garden.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-4">
                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col mx-auto text-center">
                                    <i class="far fa-save fa-4x"></i>
                                    </div>
                                </div>
                                <div class="row mt-4">
                                    <div class="col-12 text-center">
                                        <h3>Save</h3><hr>
                                        <p class="text-secondary">fill up your garden with the vegetables and save on your profile or print it out if you are not login.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Feature Cards -->
<br>
<!-- <h2>Design your Vegetable garden</h2><br> -->
<!-- <h3>Select garden size</h3> -->
 <form role="form">
    <div class="form-group">
    <select class="form-control" id="gardenWidthDrop">
    <?php for($i=1; $i<=12; $i++){
      echo '<option class="dropdown-item" value='.$i.'>'.$i.'</option> ';

    }?>
    <!-- <option class="dropdown-item" value="1"> 1 </option> 
    <option class="dropdown-item" value="2"> 2 </option>
    <option class="dropdown-item" value="3"> 3 </option>
    <option class="dropdown-item" value="4"> 4 </option>
    <option class="dropdown-item" value="5"> 5 </option>
    <option class="dropdown-item" value="6" selected> 6 </option>
    <option class="dropdown-item" value="7"> 7 </option>
    <option class="dropdown-item" value="8"> 8 </option>
    <option class="dropdown-item" value="9"> 9 </option>
    <option class="dropdown-item" value="10">10</option>
    <option class="dropdown-item" value="11">11</option>
    <option class="dropdown-item" value="12">12</option> -->
    </select>
    </div>

    <div class="form-group">
    <select class="form-control" id="gardenHeighDrop">
    <?Php for ($j=1; $j<=5; $j++){
      echo '<option class="dropdown-item" value='.$j.'>'.$j.'</option> ';
    } ?>
    <!-- <option class="dropdown-item" value="1" >1</option>
    <option class="dropdown-item" value="2" >2</option>
    <option class="dropdown-item" value="3" selected>3</option>
    <option class="dropdown-item" value="4" >4</option>
    <option class="dropdown-item" value="5" >5</option> -->
    </select>

    </div>
  <br>
  <button type="button" class="btn btn-primary gDimBtn" >Create Grid</button><!-- onClick="gridDimensions()" -->
</form>
</div><br><br>
</div>
<!-- Vegetables Slider -->
<div class="container text-center my-3 planner">
    <div id="plantSlider" class="carousel slide w-100" data-ride="carousel" data-interval="false">
        <div class="carousel-inner w-100" role="listbox">
            <div class="carousel-item row no-gutters active">      
            <?php $counter1 = 0; ?><?php foreach ($vegGardens as $vegGarden): ?>
            <?php
            $counter1++; //increase counter number
            if ($counter1 > 4) {
            break;
            }?>
            <div class="col-3 float-left">  
            <?= ($vegGarden['plantIcon'] <> " " ? "<img draggable='true' class='plants ui-widget-content draggable' style='width:100px; margin-top:10px;' src='images/{$vegGarden['plantIcon']}'/>" : "") ?>
            </div>
            <?php endforeach; ?>
            </div> 
            
            <div class="carousel-item row no-gutters">
            <?php $counter1 = 0; ?>
            <?php foreach ($vegGardens1 as $vegGarden1): ?>
            <?php
            $counter1++; //increase counter number
            if ($counter1 > 4) {
            break;
            }
            ?>  
            <div class="col-3 float-left"> 
            <?= ($vegGarden1['plantIcon'] <> " " ? "<img draggable='true' class='plants ui-widget-content draggable' style='width:100px; margin-top:10px;' src='images/{$vegGarden1['plantIcon']}'/>" : "") ?>                                                            
            </div>  
            <?php endforeach; ?> 
            </div>
        </div>
        <a class="carousel-control-prev" href="#plantSlider" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#plantSlider" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
<!--</div>-->

<!-- Slider END -->
  <br>
  <!--Garden Planner -->
  <!--<div class="container-fluid planner">
    <div class="row">
        <div class="col-lg-3">
        <br><br>
        <table class ="table table-responsive">
                <tr class="table-primary">
                    <th>Name</th>
                    <th>Plant</th>
                </tr>
                <?php foreach ($plants as $plant) : ?>
                <tr>  
                <div style="width=200px">
                    <td><?php echo $plant['plantName']; ?></td>
                  <td><?php echo "<img class='plants ui-widget-content'  draggable='true' src='images/".$plant['plantIcon']."' />"; ?>
                </div>
                <?php endforeach; ?>
            </table>
      </div>
-->
        <div class="col-lg-12 ui-widget-header gardenPlanner">
           <!--<div>
              <div id="box"></div>
            </div>
            <div id="results"></div>
        </div>-->

        </div>
  </div>
  <!--Garden Planner End -->
    <!-- Print page -->
    <i class="fa fa-print"></i><button type="button" class="btn" onClick="printPageAppear()"> Print Page</button>
  <!-- Weather -->

 
   
<?php  include('includes/weather.php'); ?>
  </div>
  
<br>
  <?php  include('includes/footer.php'); ?>

  <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/jquery-migrate-3.0.0.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/retina-1.1.0.min.js"></script>
        <script src="js/waypoints.min.js"></script>
        <script src="js/planner.js"></script>
        <script src="js/drag-drop.js"></script>
        <script src="js/garden-size.js"></script>
        <script src="js/weatherBit.js"></script>
        <script src="js/main.js"></script>




  </body>
</html>