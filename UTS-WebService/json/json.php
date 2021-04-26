<?php

    require_once('koneksi.php');

    $query = "SELECT * FROM pemain";
    $sql    = mysqli_query($db_connect, $query);

    if ($sql){
        $result = array();
        while ($row = mysqli_fetch_array($sql)){
            array_push ($result,array(
                'id' => $row ['id'],
                'Nama' => $row['Nama'],
                'Umur' => $row['Umur'],
                'Posisi' => $row['Posisi'],
                'Asal' => $row['Asal'],
                'statistik' => $row['statistik'],
                'release_at' => $row['release_at'],
            ) );
        }
        
    
    echo json_encode ( array('Arsenal Player' => $result) );
    }
?>