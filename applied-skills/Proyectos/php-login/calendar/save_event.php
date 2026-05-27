<?php                
require 'database_connection.php'; 
require 'C:\xampp\htdocs\php-login\database.php'; 
$event_name = $_POST['descripcion'];
$event_start_date = date("y-m-d", strtotime($_POST['event_start_date'])); 
$event_end_date = date("y-m-d", strtotime($_POST['event_end_date'])); 
			
$insert_query = "insert into `calendar_event_master`(`event_name`,`event_start_date`,`event_end_date`) values ('".$event_name."','".$event_start_date."','".$event_end_date."')";             
if(mysqli_query($con, $insert_query))
{
	$data = array(
                'status' => true,
                'msg' => 'El evento se añadio !'
            );
}
else
{
	$data = array(
                'status' => false,
                'msg' => 'Lo sentimos, el evento no se añadio.'				
            );
}
echo json_encode($data);	


?>
