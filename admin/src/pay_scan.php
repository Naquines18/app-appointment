<?php

require '../../src/config.php';

// check if the qr code value is set
if(isset($_POST['payment_user'])){
    // variable payment 
    $payment = $_POST['payment_user'];

    // select all the data from money_accumulated table
    $getMoney = mysqli_query($conn,"SELECT * FROM money_accumulated WHERE id='1'");
    // fetch all the data
    $getMoneyRow = mysqli_fetch_array($getMoney);

    $money_count = $getMoneyRow['money'];

    // update money_accumulated with plus 100 
    $pay = mysqli_query($conn,"UPDATE money_accumulated SET money = $money_count+100 WHERE id= '1' ");
    // if the query is true else false 
    if($pay == true){

          $selectUser = mysqli_query($conn,"SELECT * FROM qrcodes INNER JOIN client ON qrcodes.qr_user_id = client.client_id INNER JOIN client_profile ON client_profile.client_id = client.client_id WHERE qrcodes.id_no = '$payment' LIMIT 1");
          $row = mysqli_fetch_assoc($selectUser);
          
          $fullname = $row['client_firstname']." ". $row['client_lastname'];
          $qr_id    = $row['id_no'];
          $phone    = $row['client_profile_phone'];
          $address  = $row['client_profile_address'];


          $insertPaymentLog = mysqli_query($conn,"INSERT INTO `money_report`(`fullname`, `amount_payed`, `id_no`, `address`, `phone`, `date_payed`) VALUES ('$fullname','100','$qr_id','$address','$phone',CURRENT_TIME())");


          switch ($insertPaymentLog) {
               case true:
                    header("location: ../pay?success");
                    break;
               case false:
                    header("location: ../pay?failed12");
                    break;
               
               default:
               header("location: ../pay?no_action");
                    break;
          }
         
    }else{
         header("location: ../pay?failed");
    }
}