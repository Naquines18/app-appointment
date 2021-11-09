<?php
require_once '../../src/config.php';


if(isset($_POST['estab_name']) && isset($_POST['estab_mobile']) && isset($_POST['estab_desc'])){
    
    //sanitize inputs
    $name     = mysqli_real_escape_string($conn, $_POST["estab_name"]);
    $desc     = mysqli_real_escape_string($conn, $_POST["estab_desc"]);
    $mobile   = mysqli_real_escape_string($conn, $_POST["estab_mobile"]);

    $stmt = $conn->prepare("INSERT INTO `establishments`(`establishments_name`, `establishments_desc`, `establishments_mobile`) VALUES (?,?,?)");
    $stmt->bind_param("sss",$name,$desc,$mobile);
    if($stmt->execute() == TRUE){
        header("location: ../establishments.php?message=Establishment has been added.");
    }
    $stmt->close();
    $conn->close();


}

