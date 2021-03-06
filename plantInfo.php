<?php
    ob_start();
?>
<?php
include('includes/database.php');
include("loginServ.php");

if (!isset($_SESSION['userID'])) {
  $user = 0;
} else {
  $user = $_SESSION['userID'];
}

//Form Query
$plant_id = $_GET['plantID'];
$queryPlant = "SELECT * FROM plant WHERE plantID = $plant_id";
$statement1 = $conn->prepare($queryPlant);
$statement1->execute();
$plant = $statement1->fetch(PDO::FETCH_ASSOC);
$statement1->closeCursor();

$queryInfo = "SELECT * FROM plantinginfo WHERE plantID = $plant_id";
$statement2 = $conn->prepare($queryInfo);
$statement2->execute();
$plantsInfo = $statement2->fetchAll();
$statement2->closeCursor();

$queryExist = "SELECT COUNT(*) FROM userfavourites WHERE plantID = $plant_id AND userID = $user";
$statement6 = $conn->prepare($queryExist);
$statement6->bindValue(':plantID', $plant_id);
$statement6->bindValue(':userID', $user);
$statement6->execute();
$num = $statement6->fetchColumn();
// $statement6->closeCursor(); 

$queryFav = "SELECT * FROM userfavourites WHERE plantID = $plant_id AND userID = $user";
$statement5 = $conn->prepare($queryFav);
$statement5->execute();
$plantsFav = $statement5->fetch(PDO::FETCH_ASSOC);
$statement5->closeCursor();

if (isset($_POST['addToFav'])) {
  $user_id = $_SESSION['userID'];
  $plant_id = htmlspecialchars(!empty($_POST['plant_id']) ? trim($_POST['plant_id']) : null);
  
  $addToFav = "INSERT INTO userfavourites (plantID, userID) VALUES (:plantid, :userid)";
  $stmt1 = $conn->prepare($addToFav);
  $stmt1->bindValue(':plantid', $plant_id);
  $stmt1->bindValue(':userid', $user_id);
  $result = $stmt1->execute();
  echo "<meta http-equiv='refresh' content='0'>";
}

if (isset($_POST['removeFav'])) {
  $user_id = $_SESSION['userID'];
  $plant_id = htmlspecialchars(!empty($_POST['plant_id']) ? trim($_POST['plant_id']) : null);
  $removeFav = "DELETE FROM userfavourites WHERE plantID = $plant_id AND userID = $user";
  $stmt2 = $conn->prepare($removeFav);
  $stmt2->bindValue(':user_id', $user_id);
  $stmt2->bindValue(':plant_id', $plant_id);
  $result = $stmt2->execute();
  echo "<meta http-equiv='refresh' content='0'>";
}
$currentPlantType = $plant['type'];

$queryPlantType = "SELECT plantImage, plantName FROM plant WHERE type='$currentPlantType'";
$statement3 = $conn->prepare($queryPlantType);
$statement3->execute();
$plantsType = $statement3->fetchAll();
$statement3->closeCursor();
?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Plants Information</title>
  <link href="css/graham.scss" rel="stylesheet">
  <link href="css/bootstrap.css" rel="stylesheet">
  <link rel="icon" type="image/x-icon" href="images/logo-w-text.png" />
</head>
<?php
if (!isset($_SESSION['userID'])) {
  include('includes/header.php');
} else {
  include('includes/header2.php');
}
?>
<body>
  <br><br><br>
  <div class="top-content">
    <div class="container">
      <div class="row">
      <div class='bar'>
        <div class="col-md-8 offset-md-2 text">
          <h1 class="wow fadeInLeftBig">How- To Start a Garden</h1>
          <div class="description wow fadeInLeftBig">
            <p>We walk you through factors that can affect how your garden will grow — sunlight, shade, soil —
              and the balance between fruits, shrubs, flowers and vegetables

            </p>
          </div>
        </div>
      </div>
      </div>
    </div>
  </div>
  <br><br>

  <div class="container">
    <div class="row row1">
      <div class="col-sm-5">
        <?php echo "<img class='image1 img-fluid' src='images/" . $plant['plantImage'] . "' />"; ?>
      </div>
      <div class="col-sm-5">
        <h3 class="plantName"><?php echo $plant['plantName']; ?></h3>
        <p><?php echo $plant['description']; ?></p>
        <form method="post">
          <input type="hidden" name="user_id" value="<?php echo $user; ?>" />
          <input type="hidden" name="plant_id" value="<?php echo $plant['plantID']; ?>" />
          <?php
          if (empty($num)) : ?>
            <button id="add" value="Add to Favourites" <?php if (empty($user)) { ?> disabled <?php  } ?> class="btn btn-primary" type="submit" name="addToFav">Add to Favourites</button>
          <?php else : ?>
            <button id="myButton" value="Favourited" <?php if (empty($user)) { ?> disabled <?php  } ?> class="btn btn-primary button" type="submit" name="removeFav"><span>Favourited</span></button>
          <?php endif ?>
          <?php if (empty($user)) : ?>
            <span>You must be logged in to favourite</span>
          <?php endif ?>
        </form>
        
      </div>

        <?php if(empty($plantInfo['infoImage'])) : ?>
          <?php foreach ($plantsInfo as $plantInfo) : ?>
          <div class="col-sm-2">    
        <h3  class="plantName"><?php echo $plant["plantName"];?> QR</h3>
        <?= ($plantInfo["infoImage"] <> " " ? "<img class='card-img-top' alt='' style='width:100%; height:auto;' src='qr/{$plantInfo['infoImage']}'/>" : "") ?>
        <?php endforeach ?>
        </div>
        <?php endif; ?>

    </div>
  </div>
  <br><br>
  <div class="container">
    <h3 class="plantName">Planting Information</h3>
    <br>
    <!--Display harvest table -->
    <div style="overflow-x:auto;">
      <table class="table">
        <thead>
          <tr>
            <th scope="col">Month</th>
            <th scope="col">Jan</th>
            <th scope="col">Feb</th>
            <th scope="col">Mar</th>
            <th scope="col">Apr</th>
            <th scope="col">May</th>
            <th scope="col">Jun</th>
            <th scope="col">Jul</th>
            <th scope="col">Aug</th>
            <th scope="col">Sep</th>
            <th scope="col">Oct</th>
            <th scope="col">Nov</th>
            <th scope="col">Dec</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">Plant</th>
            <script id="season" data-name="<?php echo $plant['season']; ?>" src="table.js"></script>

            <?php for ($i = 0; $i <= 11; $i++) {
              echo "<td id=" . $i . "></td>";
            } ?>

          </tr>
          <tr>
            <th scope="row">Harvest</th>
            <script id="harvest" data-name="<?php echo $plant['Harvesting']; ?>" src="table.js"></script>
            <?php for ($j = 12; $j <= 23; $j++) {
              echo "<td id=" . $j . "></td>";
            } ?>
          </tr>
        </tbody>
      </table>
    </div>
  </div><br>
  <!-- Harvest table end -->
  <div class="container">
    <br>
    <div class="row display-flex">
      <div class="col polaroid">
      <h3>Soil Type</h3>
        <?php
        if ($plant['soil'] == "Sandy") {
          echo "<img class='icons img-fluid' src='icons/sandy_soil.svg'>";
        } else {
          echo "<img class='icons img-fluid' src='icons/loomy_soil.svg'>";
        }
        ?>
        <div class="ctnbtm">
          <h4 class="func"><?php echo $plant['soil']; ?></h4>
        </div>

      </div>
      <div class="col polaroid">
      <h3>Placement</h3>
        <?php
        if ($plant['placement'] == "Shade") {
          echo "<img class='icons img-fluid' src='icons/shade.svg'>";
        } else {
          echo "<img class='icons img-fluid' src='icons/sun.svg'>";
        }
        ?>
        <div class="ctnbtm">
          <h4 class="func"><?php echo $plant['placement']; ?></h4>
        </div>

      </div>
      <div class="col polaroid">
        <h3>Depth</h3>
        <img class="icons img-fluid" src='icons/depth.svg'>
        <div class="ctnbtm">
          <h4 class="func"><?php echo $plant['depth']; ?></h4>
        </div>
      </div>

      <div class="col polaroid">
      <h3>Distance</h3>
        <img class="icons img-fluid" src='icons/distance.svg'>
        <div class="ctnbtm">
          <h4 class="func"><?php echo $plant['distance']; ?></h4>
        </div>

      </div>


    </div>
  </div>

  <br><br>
  <div class="container-fluid">
    <div class="container pad">
      <?php foreach ($plantsInfo as $plantInfo) : ?>
        <div class="row row1">
          <div class="col-sm-6">
            <h3 class="plantName">How to plant</h3>
            <ol class="list">
              <li><?php echo $plantInfo['step1']; ?></li>
              <li><?php echo $plantInfo['step2']; ?></li>
              <li><?php echo $plantInfo['step3']; ?></li>
              <li><?php echo $plantInfo['step4']; ?></li>
            </ol>
          </div>
          <div class="col-sm-6">
            <?php echo "<img class='image1' src='images/plant2.jpg" . "' />"; ?>
          </div>
        </div>
    </div>
  </div>
  <br><br>
  <div class="container">
    <div class="row display-flex">
      <div class="col-sm-4">
        <h4 class="info">Watering</h4>
        <p class="titles"><?php echo $plant['watering']; ?></p>
      </div>
      <div class="col-sm-4 vert">
        <h4 class="info">Aftercare</h4>
        <p><?php echo $plantInfo['aftercare'] ?></p>
      </div>
      <div class="col-sm-4 vert">
        <h4 class="info">Problems</h4>
        <p><?php echo $plantInfo['problems'] ?></p>
      </div>
    </div>
  </div>
  <br><br>
  <h3 class="plantName">Similar Plants to <?php echo $plant['plantName'] ?></h3>
<?php endforeach; ?>

<div class="container">
  <div class="row">
    <?php
    foreach ($plantsType as $plantType) :
      echo ' <div class="col-md-4 col-xs-6">
                <img src="images/' . $plantType["plantImage"] . '" class="img-responsive img-thumbnail">
                <h4 style="text-align: center;"><a>' . $plantType["plantName"] . ' </a></h4>
            </div>';
    ?>
    <?php endforeach; ?>
  </div>
</div>
<br>
<script>
  document.getElementById("favourites").onsubmit = function() {
    location.reload(true);
  }
</script>
</div>
<?php
include('includes/footer.php');
?>
</body>
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Contact Form JavaScript -->
<script src="js/jqBootstrapValidation.js"></script>
<script src="js/contact_me.js"></script>

<!-- Custom scripts for this template -->
<script src="js/freelancer.min.js"></script>
<script src="js/table.js"></script>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/jquery-migrate-3.0.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="js/jquery.backstretch.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/retina-1.1.0.min.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/scripts.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.1.0.min.js"></script> -->

</html>
<?php 
  ob_end_flush();
  ?>