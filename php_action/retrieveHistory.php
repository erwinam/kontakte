<?php

require_once 'db_connect.php';

$output = array('data' => array());
$contactId = $_GET['contact_id'];

$sql = "SELECT * FROM kontakt WHERE id = $contactId";
$query = $connect->query($sql);

while ($row = $query->fetch_assoc()) {

	$output['data'][] = array(
		$row['id'],
		$row['aktiv_ab'],
		$row['aktiv_bis'],
		$row['kontakt_aktiv'],
		$row['kontakt_user'],
		$row['vorname'],
		$row['nachname'],
		$row['email'],
		$row['telefon']
		);

 }

// database connection close
$connect->close();

echo json_encode($output);
