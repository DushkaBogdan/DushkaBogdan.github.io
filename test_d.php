<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <title>HTML5</title>
  <link rel="stylesheet" href="styles1.css">
  
	<style type="text/css">

	</style>
  
 </head>
 <body>
 
<table id = "maintable" border = "1">
		<tr>
			<td colspan = "2">
				<center><h1>Тест на Профориентацию. Отвечайте с Умом</h1></center>
			</td>
		</tr>
		<tr>
		
			<td >
			
			
			<center> <h2>Инструкция</h2></center>
			<div id="instruction"; width: 100%;">
			<ul>
			<li>Выберите один из вариантов в каждом вопросе;</li>
			<li>Для завершения теста - нажмите на кнопку "Показать результат";</li>
			
			
			<li>Чтобы сбросить результат тестирования, нажать кнопку "Сбросить ответы";</li>
			</ul></div>
			<br>
			<hr>
	
			  <?php
include 'db_d.php';

$connection = connect();

$sql = 'SELECT id, type, q_text, ans1, ans2, ans3, a1, a2, a3 FROM question';
$stmt = $connection->prepare($sql);
$stmt->execute();

if ($stmt->rowCount()) 
{
	print_table( $stmt->fetchAll() );
}
else
{
	echo "No such nurses!!!";
}
	
	



$connection = null;


?>
			  
			</td>
			
				<td width= "30%">
					<h3>Menu</h3>
					<ul>
					<li> <a href="index.html"> Main Page</a></li>
					<li> <a href="answers/KIU.html"> Узнать о КИУ</a></li>
					<li> <a href="answers/KN.html"> Узнать о КН кафердра "ИИ"</a></li>
					<li> <a href="answers/ZI.html"> Узнать о ЗИ</a></li>
					<li> <a href="answers/BMI.html"> Узнать о БМИ</a></li>
					<li> <a href="answers/IPZ.html"> Узнать о ПИ</a></li>
				</ul>
				</td>
				
		</tr>
		<tr>
			<td id= "underground" colspan = "2">Все права принадлежат <b>ДЖ К Роулинг</b> (с) 2018</td>
		</tr>


</table>
  
 </body>
</html>