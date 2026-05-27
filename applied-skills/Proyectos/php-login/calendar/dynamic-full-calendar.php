?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
<title>Reserva laboratorio</title>
<!-- *Note: You must have internet connection on your laptop or pc other wise below code is not working -->
<!-- CSS for full calender -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.css" rel="stylesheet" />
<!-- JS for jQuery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- JS for full calender -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.20.1/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/fullcalendar.min.js"></script>
<!-- bootstrap css and js -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<h5 align="center">Reserva de Laboratorio de Computo</h5>
			<div id="calendar"></div>
		</div>
	</div>
</div>
<!-- Start popup dialog box -->
<div class="modal fade" id="event_entry_modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
	<div class="modal-dialog modal-md" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="modalLabel">Añade tu reservación</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">X</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="img-container">
					<div class="row">
						<div class="col-sm-12">  
							<div class="form-group">
							  <label for="event_names">Numero de laboratorio</label>
							  <input type="text" name="event_names" id="event_names" class="form-control" placeholder="Ej: laboratorio 1">
							</div>
						</div>
					</div>

					<div class="modal-body">
						<div class="img-container">
							<div class="row">
								<div class="col-sm-13">  
									<div class="form-group">
									  <label for="descripcion">Descripcion breve de actividad</label>
									  <input type="text" name="descripcion" id="descripcion" class="form-control" placeholder="Ej: Práctica 7 CSS">
									</div>
								</div>
							</div>

					<div class="modal-body">
						
						<form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">
								<div class="img-container">
									<div class="row">
										<div class="col-sm-12">  
											<div class="form-group">
												<label for="nombre">Matricula:</label>
												<input type="text" name="nombre" id="nombre">
												<input type="submit" value="Consultar">

												<?php
														// Verificar si se han enviado los datos del formulario
														if ($_SERVER["REQUEST_METHOD"] == "POST") {
															// Establecer la conexión con la base de datos
															$servername = "localhost";
															$username = "root";
															$password = "";
															$dbname = "calendario_db";

															$conn = new mysqli($servername, $username, $password, $dbname);

															// Verificar la conexión
															if ($conn->connect_error) {
																die("Error al conectar a la base de datos: " . $conn->connect_error);
															}

															// Recuperar los datos del formulario
															$nombre = $_POST["nombre"];

															// Realizar la consulta a la base de datos
															$sql = "SELECT * FROM calendar_event_master WHERE event_id = '$nombre'";
															$resultado = $conn->query($sql);

															// Verificar si hay resultados
															if ($resultado->num_rows > 0) {
																// Generar la tabla HTML con los datos recuperados de la base de datos
																echo "<label for='resultado'>Resultado:</label>";
																echo "<select name='resultado' id='resultado'>";
																while($fila = $resultado->fetch_assoc()) {
																	echo "<tr><td>" . $fila["event_id"] . "</td><td>" ;
																	echo "<label for='resultado_seleccionado'>Resultado seleccionado:</label>";
																	echo "<input type='text' name='resultad o_seleccionado' id='resultado_seleccionado' value='" . $fila["event_name"] . $fila["event_start_date"] . $fila["event_end_date"] . "' readonly>";

																}
																echo "</select>";
																echo "<br>";

															} else {
																echo "No se encontraron resultados";
															}

															// Cerrar la conexión con la base de datos
															$conn->close();
														}
													?>
													<script>
														// Función para actualizar el campo de texto con el resultado seleccionado
														document.getElementById('resultado').addEventListener('change', function() {
															var resultadoSeleccionado = this.options[this.selectedIndex].text;
															document.getElementById('resultado_seleccionado').value = resultadoSeleccionado;
														});
													</script>	
											

											</div>	
										</div>
									</div>
								</div>
						</form>

					</div>							
					
					<div class="row">

						<div class="col-sm-6">  
							<div class="form-group">
							  <label for="event_start_date">Inicio de reservación</label>
							  <input type="date" name="event_start_date" id="event_start_date" class="form-control onlydatepicker" placeholder="Fecha inicial">
							 </div>
						</div>
						<div class="col-sm-6">  
							<div class="form-group">
							  <label for="event_end_date">Fin de reservación</label>
							  <input type="date" name="event_end_date" id="event_end_date" class="form-control" placeholder="Fecha termino">
							</div>
						</div>

						<div class="col-sm-6">  
							<div class="form-group">
							  <label for="event_end_date">Hora inicio </label>
							  <input type="time" name="event_end_date" id="event_end_date" class="form-control onlydatepicker" placeholder="Fecha termino">
							</div>
						</div>

						<div class="col-sm-6">  
							<div class="form-group">
							  <label for="event_end_date">Hora termino </label>
							  <input type="time" name="event_end_date" id="event_end_date" class="form-control" placeholder="Fecha termino">
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" onclick="save_event()">Guardar evento</button>
			</div>
		</div>
	</div>
</div>
<!-- End popup dialog box -->

<br>
</body>
<script>
$(document).ready(function() {
	display_events();
}); //end document.ready block

function display_events() {
	var events = new Array();
$.ajax({
    url: 'display_event.php',  
    dataType: 'json',
    success: function (response) {
         
    var result=response.data;
    $.each(result, function (i, item) {
    	events.push({
            event_id: result[i].
			,
            title: result[i].title,
            start: result[i].start,
            end: result[i].end,
            color: result[i].color,
            url: result[i].url
        }); 	
    })
	var calendar = $('#calendar').fullCalendar({
	    defaultView: 'month',
		 timeZone: 'local',
	    editable: true,
        selectable: true,
		selectHelper: true,
        select: function(start, end) {
				//alert(start);
				alert(end);
				$('#event_start_date').val(moment(start).format('YYYY-MM-DD'));
				$('#event_end_date').val(moment(end).format('YYYY-MM-DD'));
				$('#event_entry_modal').modal('show');
			},
        events: events,
	    eventRender: function(event, element, view) { 
            element.bind('click', function() {
					//alert(event.title +"id:" + event.event_id+ "id:" + event.start+ "start:" + event.end+ "end:" + event.color + "color:"+ event.url+ "url	:" );
					alert("Descripción de la actividad: \n" + event.title +"\n\nUsuario que selecciono el apartado: \n"+"\n\nFecha de inicio:\n"+event.start+"\n\nFecha de termino:\n"+event.end )
					//alert(event.end);
					//Swal.fire('¡Hola!', 'Esto es una alerta personalizada con SweetAlert', 'success');

				});
    	}
		}); //end fullCalendar block	
	  },//end success block
	  error: function (xhr, status) {
	  alert(response.msg);
	  }
	});//end ajax block	
}

function save_event()
{
var descripcion=$("#descripcion").val();
var event_start_date=$("#event_start_date").val();
var event_end_date=$("#event_end_date").val();
if(descripcion=="" || event_start_date=="" || event_end_date=="")
{
alert("Please enter all required details.");
return false;
}
$.ajax({
 url:"save_event.php",
 type:"POST",
 dataType: 'json',
 data: {descripcion:descripcion,event_start_date:event_start_date,event_end_date:event_end_date},
 success:function(response){
   $('#event_entry_modal').modal('hide');  
   if(response.status == true)
   {
	alert(response.msg);
	location.reload();
   }
   else
   {
	 alert(response.msg);
   }
  },
  error: function (xhr, status) {
  console.log('ajax error = ' + xhr.statusText);
  alert(response.msg);
  }
});    
return false;
}
</script>
</html> 