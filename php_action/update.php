<?php

require_once 'db_connect.php';
require_once 'ip_address.php';

// if form is submitted
if($_POST) {

	$validator = array('success' => false, 'messages' => array());


	$id = $_POST['contact_id'];
	$anrede = $_POST['editAnrede'];
	$titel = $_POST['editTitel'];
	$vorname = $_POST['editVorname'];
	$nachname = $_POST['editNachname'];
	$email = $_POST['editEmail'];
	$telefon = $_POST['editTelefon'];
	$strasse = $_POST['editStrasse'];
	$plz = $_POST['editPlz'];
	$ort = $_POST['editOrt'];

  // save history
	$sql1 = "UPDATE kontakt SET aktiv_bis = CURRENT_TIMESTAMP(), kontakt_aktiv = FALSE WHERE id = $id AND kontakt_aktiv = TRUE; ";
  $sql2 = "INSERT INTO kontakt ( id, aktiv_ab, kontakt_aktiv, kontakt_user, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( $id, CURRENT_TIMESTAMP(), TRUE, '$ip_address', '$anrede', '$titel', '$vorname', '$nachname', '$email', '$telefon', '$strasse', '$plz', '$ort' );";
	//$sql = "UPDATE kontakt SET anrede = '$anrede', titel = '$titel', vorname = '$vorname', nachname = '$nachname', email = '$email', telefon = '$telefon', strasse = '$strasse', plz = '$plz', ort = '$ort' WHERE id = $id";

	$query1 = $connect->query($sql1);
	$query2 = $connect->query($sql2);

	if(($query1 === TRUE) && ($query2 === TRUE)) {
		$validator['success'] = true;
		$validator['messages'] = "Die Aktualisierung des Kontaktes mit der ID " . $id . " war erfolgreich";
	} else {
		$validator['success'] = false;
		$validator['messages'] = "W&auml;hrend der Aktualisierung des Kontaktes mit der ID " . $id . " ist ein Fehler aufgetreten";
	}

	// close the database connection
	$connect->close();

	echo json_encode($validator);

}
