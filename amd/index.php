<?php
//index.php

include('database_connection.php');

$tipo = '';

$query = "
	SELECT tipo FROM modelo GROUP BY tipo ORDER BY tipo ASC
";
$funcaoment = $connect->prepare($query);

$funcaoment->execute();

$result = $funcaoment->fetchAll();

foreach($result as $row)
{
	$tipo .= '<option value="'.$row["tipo"].'">'.$row["tipo"].'</option>';
}

?>
<!DOCTYPE html>
<html>
	<head>
		<title>AMD FUNÇÃO</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="jquery.lwMultiSelect.js"></script>
		<link rel="stylesheet" href="jquery.lwMultiSelect.css" />
	</head>
	<body>
		<br /><br />
		<div class="container" style="width:600px;">
			<h2 align="center">O MELHOR PROCESSADOR AMD PARA VOCÊ</h2><br /><br />
			<form method="post" id="insert_data">
				<select name="tipo" id="tipo" class="form-control action">
					<option value="">Qual o tipo de Dipositivo?</option>
					<?php echo $tipo; ?>
				</select>
				<br />
				<select name="funcao" id="funcao" class="form-control action">
					<option value="">Você precisa utilizar seu dispositivo para?</option>
				</select>
				<br />
				<select name="programa" id="programa" multiple class="form-control">
				</select>
				<br />
				<input type="hidden" name="hidden_programa" id="hidden_programa" />
				<input type="submit" name="insert" id="action" class="btn btn-info" value="Buscar Processador" />
			</form>
		</div>
	</body>
</html>

<script>
$(document).ready(function(){

	$('#programa').lwMultiSelect();

	$('.action').change(function(){
		if($(this).val() != '')
		{
			var action = $(this).attr("id");
			var query = $(this).val();
			var result = '';
			if(action == 'tipo')
			{
				result = 'funcao';
			}
			else
			{
				result = 'programa';
			}
			$.ajax({
				url:'fetch.php',
				method:"POST",
				data:{action:action, query:query},
				success:function(data)
				{
					$('#'+result).html(data);
					if(result == 'programa')
					{
						$('#programa').data('plugin_lwMultiSelect').updateList();
					}
				}
			})
		}
	});

	$('#insert_data').on('submit', function(event){
		event.preventDefault();
		if($('#tipo').val() == '')
		{
			alert("Escolha uma das alternativas");
			return false;
		}
		else if($('#funcao').val() == '')
		{
			alert("Escolha uma das alternativas");
			return false;
		}
		else if($('#programa').val() == '')
		{
			alert("Escolha uma das alternativas");
			return false;
		}
		else
		{
			$('#hidden_programa').val($('#programa').val());
			$('#action').attr('disabled', 'disabled');
			var form_data = $(this).serialize();
			$.ajax({
				url:"insert.php",
				method:"POST",
				data:form_data,
				success:function(data)
				{
					$('#action').attr("disabled", "disabled");
					if(data == 'done')
					{
						$('#programa').html('');
						$('#programa').data('plugin_lwMultiSelect').updateList();
						$('#programa').data('plugin_lwMultiSelect').removeAll();
						$('#insert_data')[0].reset();
						alert('ESTAMOS ESCOLHENDO O MELHOR PROCESSADOR PARA VOCÊ!');
						location.href="processador.php";
					}
				}
			});
		}
	});

});
</script>



