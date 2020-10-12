<?php

require_once 'db_connect.php';
require_once 'ip_address.php';

$output = array('success' => false, 'messages' => array());

$id = $_POST['contact_id'];

$sql1 = "SELECT * FROM kontakt WHERE id = $id AND kontakt_aktiv = TRUE;";
$query1 = $connect->query($sql1);
//only one contact active
$result = $query1->fetch_assoc();

$anrede = $result['anrede'];
$titel = $result['titel'];
$vorname = $result['vorname'];
$nachname = $result['nachname'];
$email = $result['email'];
$telefon = $result['telefon'];
$strasse = $result['strasse'];
$plz = $result['plz'];
$ort = $result['ort'];

//$sql = "DELETE FROM kontakt WHERE id = {$id}";
//save history
$sql2 = "INSERT INTO kontakt ( id, aktiv_ab, aktiv_bis, kontakt_aktiv, kontakt_user, anrede, titel, vorname, nachname, email, telefon, strasse, plz, ort ) VALUES ( $id, CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), FALSE, '$ip_address', '$anrede', '$titel', '$vorname', '$nachname', '$email', '$telefon', '$strasse', '$plz', '$ort' );";
$sql3 = "UPDATE kontakt SET aktiv_bis = CURRENT_TIMESTAMP(), kontakt_aktiv = FALSE WHERE id = $id AND kontakt_aktiv = TRUE; ";


$query2 = $connect->query($sql2);
$query3 = $connect->query($sql3);

// && ($query2 === TRUE) && ($query3 === TRUE)

if(($query1 === FALSE) || ($query2 === FALSE) || ($query3 === FALSE)) {
	$output['success'] = false;
} else {
	$output['success'] = true;
	$output['messages'] = 'Der Kontakt mit der ID ' . $id . ' wurde erfolgreich entfernt';
}
if($query1 === FALSE) {
	$output['messages'] = 'Beim Entfernen des Kontaktes mit der ID ' . $id . ' ist ein Fehler aufgetreten (Query 1)';
} else if ($query2 === FALSE) {
	$output['messages'] = 'Beim Entfernen des Kontaktes mit der ID ' . $id . ' ist ein Fehler aufgetreten (Query 2)';
} else if ($query3 === FALSE) {
	$output['messages'] = 'Beim Entfernen des Kontaktes mit der ID ' . $id . ' ist ein Fehler aufgetreten (Query 3)';
}


// close database connection
$connect->close();

echo json_encode($output);
