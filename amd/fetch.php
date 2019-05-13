<?php
//fetch.php

if(isset($_POST['action']))
{
	include('database_connection.php');

	$output = '';

	if($_POST["action"] == 'tipo')
	{
		$query = "
		SELECT funcao FROM modelo 
		WHERE tipo = :tipo 
		GROUP BY funcao
		";
		$funcaoment = $connect->prepare($query);
		$funcaoment->execute(
			array(
				':tipo'		=>	$_POST["query"]
			)
		);
		$result = $funcaoment->fetchAll();
		$output .= '<option value="">Escolha uma das alternativas</option>';
		foreach($result as $row)
		{
			$output .= '<option value="'.$row["funcao"].'">'.$row["funcao"].'</option>';
		}
	}
	if($_POST["action"] == 'funcao')
	{
		$query = "
		SELECT programa FROM modelo 
		WHERE funcao = :funcao
		";
		$funcaoment = $connect->prepare($query);
		$funcaoment->execute(
			array(
				':funcao'		=>	$_POST["query"]
			)
		);
		$result = $funcaoment->fetchAll();
		foreach($result as $row)
		{
			$output .= '<option value="'.$row["programa"].'">'.$row["programa"].'</option>';
		}


	}
	echo $output;
}

?>