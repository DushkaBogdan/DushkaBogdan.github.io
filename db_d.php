<?php
error_reporting(0);
function connect () {
	$db_driver="mysql";
	$host = "localhost";
	$database = "spec_test1";
	$dsn = "$db_driver:host=$host;
	dbname=$database";
	$user = "root";
	$password = "";
	$options = array(PDO::ATTR_PERSISTENT => true, PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8');

	try {
		$dbh = new PDO ($dsn, $user, $password, $options);	
	} catch (PDOException $e) {
		echo "Error!:" .$e->getMessage()."<br/>";die(); 
	}

	return $dbh;
}

function show_the_truth($KIY, $AI, $BMI, $ZI, $PI)
{
	$arr = array
	(
   	 'Совместимость с Компьютерной Инженерией:'=>$KIY,
	 'Совместимость с Искуственным Интелектом:'=>$AI,
	 'Совместимость с БиоМедИнженерией:'=>$BMI,
	 'Совместимость с Защитой Информации:'=>$ZI,
	 'Совместимость с Программной Инженерией:'=>$PI
	); //Массив с парами данных "подпись"=>"значение"
 require_once('SimplePlot.php'); //Подключить скрипт
 $plot = new SimplePlot($arr); //Создать диаграмму
 $plot->show(); //И показать её
}

function print_table( $table ) {
		
		echo "<form method = 'get'>";
	foreach ( $table as $row ) {
		echo "<ol> <div type='text' size='1' value='' name='T1'/><b>"; echo $row['q_text']; echo "</b><br/>";
		echo "<input type='radio' value= '"; echo $row['a1']; echo "' name='rdi[";echo $row['id']; echo "]' />"; echo $row['ans1']; echo"<br />";
		echo "<input type='radio' value= '"; echo $row['a2']; echo "' name='rdi[";echo $row['id']; echo "]' />"; echo $row['ans2']; echo"<br />";
		echo "<input type='radio' value= '"; echo $row['a3']; echo "' name='rdi[";echo $row['id']; echo "]' />"; echo $row['ans3']; echo"<br />";
		
		//echo $row['type']; echo "\n";
		
		echo "<br/></ol>";
		
	}
		echo "<center>";
		echo "<INPUT type='submit' value='Показать результат' name='submit'/>&nbsp;&nbsp;&nbsp;&nbsp; ";
		echo "<INPUT type='reset' value='Сбросить ответы'/> ";   
		echo "</center>";		
		echo "</form>";
		
		
		$counter_KIY = 0;
		$counter_AI = 0;
		$counter_BMI = 0;
		$counter_ZI = 0;
		$counter_PI = 0;
		
		
		$rdi = $_GET['rdi'];
		
		while (list($key,$val) = @each($rdi))
		{
			if ($key >0 && $key <5)
				$counter_KIY += $val;
			if ($key >4 && $key <9)
				$counter_AI += $val;
			if ($key >8 && $key <13)
				$counter_BMI += $val;
			if ($key >12 && $key <17)
				$counter_ZI += $val;
			if ($key >16 && $key <21)
				$counter_PI += $val;
				
		}
		if(isset($_GET['submit']))
		{
		   show_the_truth($counter_KIY, $counter_AI, $counter_BMI, $counter_ZI, $counter_PI);
		} 
		//echo "наше значение KIY - $counter_KIY ; наше значение AI - $counter_AI ; наше значение BMI - $counter_BMI<br>\n";
		//echo "наше значение ZI - $counter_ZI ; наше значение PI - $counter_PI ;<br>\n";
		
}

 

?>
