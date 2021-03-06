<?php
	
	try {
		$db = new PDO("mysql:host=localhost;dbname=portfoli_bloomsocket", "portfoli_socket", "bloomSocketDB");
	} catch (PDOException $e) {
		echo $e->getMessage();
		exit;
	}

	if (!isset($_POST["room"]) || !isset($_POST["resultanswer"]) || !isset($_POST["resultmessage"]))
	{
		echo "Missing data";
		exit;
	}

	$query = "INSERT INTO quiz_results (quiz_room, quiz_result_answer, quiz_result_message, quiz_result_date) VALUES (:room, :resultanswer, :resultmessage, :resultdate)";

	$room = $_POST['room'];
	$resultanswer = $_POST['resultanswer'];
	$resultmessage = $_POST['resultmessage'];
	$resultdate = date("Y-m-d H:i:s", time());

	$stmt = $db->prepare($query);
	$stmt->bindParam(":room", $room);
	$stmt->bindParam(":resultanswer", $resultanswer);
	$stmt->bindParam(":resultmessage", $resultmessage);
	$stmt->bindParam(":resultdate", $resultdate);

	$stmt->execute();
	
	echo "A record was succssfully added.";
?>