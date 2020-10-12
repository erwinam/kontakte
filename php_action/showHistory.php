<?php

require_once 'db_connect.php';

$output = array('success' => false, 'messages' => array());

$contactId = $_POST['contact_id'];

$output['success'] = true;

// close database connection
$connect->close();

echo json_encode($output);
