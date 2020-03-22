<?php 
include('includes/database.php');
include("loginServ.php");

$user = $_SESSION['userID'];

$queryFav = "SELECT * FROM userfavourites WHERE plantID = $plant_id AND userID = $user";
$statement5 = $conn->prepare($queryFav);
$statement5->execute();
$plantsFav = $statement5->fetchAll();
$statement5->closeCursor(); 
foreach ($plantsFav as $plantFav)
if($plantFav['userID'] == $user && $plantFav['plantID'] == $plant_id){
  
}
else{
  if(isset($_POST['addToFav'])){
    $user_id = htmlspecialchars(!empty($_POST['user_id']) ? trim($_POST['user_id']) : null);
    $plant_id = htmlspecialchars(!empty($_POST['plant_id']) ? trim($_POST['plant_id']) : null);
    $addToFav = "INSERT INTO userfavourites (plantID, userID) VALUES (:plant_id, :user_id)";
      $stmt1 = $conn->prepare($addToFav);
      $stmt1->bindValue(':user_id', $user_id);
      $stmt1->bindValue(':plant_id', $plant_id);
      $result = $stmt1->execute();
  }
}?>