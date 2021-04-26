<?php

    require_once('koneksi.php');

    $Nama = $_POST['Nama'];
    $Umur = $_POST['Umur'];
    $Posisi = $_POST['Posisi'];
    $Asal = $_POST['Asal'];
    $Statistik = $_POST['Statistik'];
   

    $query = "INSERT INTO pemain(Nama,Umur,Posisi,Asal,Statistik)VALUES('$Nama','$Umur','$Posisi','$Asal','$Statistik')";
    $sql    = mysqli_query($db_connect, $query);

    if ($sql){
        echo json_encode ( array('message' => 'created!') );
    }else {
        echo json_encode ( array('message' => 'error') );
    }
?>