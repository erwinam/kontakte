<?php

require_once 'db_connect.php';

$contactId = $_POST['contact_id'];

$sql = "SELECT * FROM kontakt WHERE id = $contactId AND kontakt_aktiv = TRUE";
$query = $connect->query($sql);
$result = $query->fetch_assoc();

$connect->close();

echo json_encode($result);
