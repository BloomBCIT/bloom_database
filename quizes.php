<?php
	
	try {
		$db = new PDO("mysql:host=localhost;dbname=portfoli_bloomsocket", "portfoli_socket", "bloomSocketDB");
	} catch (PDOException $e) {
		echo $e->getMessage();
		exit;
	}

	if (!isset($_POST["question"]) || !isset($_POST["option1"]) || !isset($_POST["option2"]) || !isset($_POST["answer"]) || !isset($_POST["room"]))
	{
		echo "Missing data";
		exit;
	}

	$query = "INSERT INTO quizes (quiz_question, quiz_option1, quiz_option2, quiz_answer, quiz_room, quiz_date) VALUES (:question, :option1, :option2, :answer, :room, :quizdate)";

	$question = $_POST['question'];
	$option1 = $_POST['option1'];
	$option2 = $_POST['option2'];
	$answer = $_POST['answer'];
	$room = $_POST['room'];
	$quizdate = date("Y-m-d H:i:s", time());

	$stmt = $db->prepare($query);
	$stmt->bindParam(":question", $question);
	$stmt->bindParam(":option1", $option1);
	$stmt->bindParam(":option2", $option2);
	$stmt->bindParam(":answer", $answer);
	$stmt->bindParam(":room", $room);
	$stmt->bindParam(":quizdate", $quizdate);

	$stmt->execute();
	
	echo "A record was succssfully added.";
?>