<?php
//insert.php

if(isset($_POST['tipo']))
{
	include('database_connection.php');
	$query = "
	INSERT INTO modelo_dabase (tipo, funcao, programa) 
	VALUES(:tipo, :funcao, :programa)
	";
	$funcaoment = $connect->prepare($query);
	$funcaoment->execute(
		array(
			':tipo'		=>	$_POST['tipo'],
			':funcao'		=>	$_POST['funcao'],
			':programa'			=>	$_POST['hidden_programa']
		)
	);
	$result = $funcaoment->fetchAll();

	if(isset($result))
	{
		echo 'done';
	}

}

?>