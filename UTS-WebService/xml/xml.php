<?php

Header('Content-type: text/xml');
//koneksi ke database
$connection = mysqli_connect("localhost", "root", "", "arsenal") or die("Error " . mysqli_error($connection));
$xml = new SimpleXMLElement('<xml/>');

$sql = "SELECT * FROM pemain";
$result = mysqli_query($connection, $sql) or die("Error " . mysqli_error($connection));

//membuat array
while ($row = mysqli_fetch_assoc($result)) {

    $track = $xml->addChild('pemain');
    $track->addChild('id', $row['id']);
    $track->addChild('Nama', $row['Nama']);
    $track->addChild('Umur', $row['Umur']);
    $track->addChild('Posisi', $row['Posisi']);
    $track->addChild('Asal', $row['Asal']);
    $track->addChild('Statistik', $row['Statistik']);
   
}

print($xml->asXML());
//tutup koneksi ke database
mysqli_close($connection);
?>
