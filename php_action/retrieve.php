<?php

require_once 'db_connect.php';

$output = array('data' => array());

$sql = "SELECT * FROM kontakt WHERE kontakt_aktiv=TRUE"; // historical contacts are not shown
$query = $connect->query($sql);

$x = 1; // IDs in presented table beginning with 1

while ($row = $query->fetch_assoc()) {

	$actionButton = '
	<div class="btn-group">
	  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    Administrieren <span class="caret"></span>
	  </button>
	  <ul class="dropdown-menu">
	    <li><a type="button" data-toggle="modal" data-target="#editContactModal" onclick="editContact('.$row['id'].')"> <span class="glyphicon glyphicon-edit"></span> &Auml;ndern</a></li>
			<li><a type="button" data-toggle="modal" data-target="#showHistoryModal" onclick="showHistory('.$row['id'].')"> <span class="glyphicon glyphicon-list-alt"></span> Historie zeigen</a></li>
			<li><a type="button" data-toggle="modal" data-target="#removeContactModal" onclick="removeContact('.$row['id'].')"> <span class="glyphicon glyphicon-trash"></span> L&ouml;schen</a></li>
	  </ul>
	</div>
		';

	$output['data'][] = array(
		//	$x,							// Show IDs beginning with 1
		$row['id'],
		$row['anrede'],
		$row['titel'],
		$row['vorname'],
		$row['nachname'],
		$row['email'],
		$row['telefon'],
		$row['strasse'],
		$row['plz'],
		$row['ort'],
		$actionButton
	);

	$x++;
 }

// database connection close
$connect->close();

echo json_encode($output);
