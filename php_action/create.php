<?php

require_once 'db_connect.php';
require_once 'ip_address.php';


// if form is submitted
if($_POST) {

	$validator = array('success' => false, 'messages' => array());

	$anrede = $_POST['anrede'];
	$titel = $_POST['titel'];
	$vorname = $_POST['vorname'];
	$nachname = $_POST['nachname'];
	$email = $_POST['email'];
	$telefon = $_POST['telefon'];
	$strasse = $_POST['strasse'];
	$plz = $_POST['plz'];
	$ort = $_POST['ort'];


	$sql = "INSERT INTO kontakt ( aktiv_ab, kontakt_aktiv, kontakt_user, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( CURRENT_TIMESTAMP(), TRUE, '$ip_address', '$anrede', '$titel', '$vorname', '$nachname', '$email', '$telefon', '$strasse', '$plz', '$ort' )";
	$query = $connect->query($sql);

	if($query === TRUE) {
		$validator['success'] = true;
		$validator['messages'] = "Kontakt erfolgreich hinzugef&uuml;gt";
	} else {
		$validator['success'] = false;
		$validator['messages'] = "W&auml;hrend des Speicherns des Kontaktes ist ein Fehler aufgetreten";
	}

	// close the database connection
	$connect->close();

	echo json_encode($validator);

}
