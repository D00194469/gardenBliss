<?php
require_once ("database.php");
//countryInput from form
$plantInput = $_POST["plant"];
//select countries from db where they are like what the user is typing
if($plantInput != NULL){
    $query = "SELECT * FROM plant WHERE plant LIKE :plantName";
    $statement = $conn->prepare($query);  
    $statement->bindValue(":plantName", $plantInput."%", PDO::PARAM_STR);   
    //If 
    try{
        $statement->execute();
    } catch (PharException $e) {
        echo $e->getMessage();
        exit();
    }  
    $results = $statement->fetchAll();
    $statement->closeCursor();
    $plants = array();   
    foreach ($results as $result){      
        $plants[]=$result['plant'];
    } 
    $response = json_encode($plants);
    echo $response;
    //returns the result related to what is being typed
}