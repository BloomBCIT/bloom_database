<?php
	
	try {
		$db = new PDO("mysql:host=localhost;dbname=portfoli_bloomsocket", "portfoli_socket", "bloomSocketDB");
	} catch (PDOException $e) {
		echo $e->getMessage();
		exit;
	}

	if (!isset($_POST["playername"]) || !isset($_POST["score"]))
	{
		echo "Missing data";
		exit;
	}

	$query = "INSERT INTO games (game_playername, game_score, game_date) VALUES (:playername, :score, :gamedate)";

	$playerName = $_POST['playername'];
	$score = $_POST['score'];
	$gamedate = date("Y-m-d H:i:s", time());

	$stmt = $db->prepare($query);
	$stmt->bindParam(":playername", $playerName);
	$stmt->bindParam(":score", $score);
	$stmt->bindParam(":gamedate", $gamedate);
	$stmt->execute();

	echo "A record was succssfully added.";
?>