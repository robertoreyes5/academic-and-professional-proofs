<!DOCTYPE html>
<html>
<head>
    <title>Resultado de consulta PHP</title>
</head>
<body>
    <h1>Resultado de consulta PHP</h1>
    <?php
    // Obtener los valores del formulario
    $nombre = $_POST["nombre"];
    $email = $_POST["email"];

    // Establecer la conexión a la base de datos
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "test";
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Verificar si la conexión es exitosa
    if ($conn->connect_error) {
        die("Conexión fallida: " . $conn->connect_error);
    }

    // Consulta SQL para obtener los datos de la tabla "usuarios" por nombre y correo electrónico
    $sql = "SELECT * FROM usuarios WHERE nombre LIKE '%$nombre%' AND email LIKE '%$email%'";
    $resultado = $conn->query($sql);

    // Imprimir los datos obtenidos en una tabla HTML
    echo "<table>";
    echo "<tr><th>Nombre</th><th>Email</th></tr>";
    if ($resultado->num_rows > 0) {
        while($fila = $resultado->fetch_assoc()) {
            echo "<tr><td>" . $fila["nombre"] . "</td><td>" . $fila["email"] . "</td></tr>";
        }
    } else {
        echo "0 resultados";
    }
    echo "</table>";

    // Cerrar la conexión a la base de datos
    $conn->close();
    ?>
</body>
</html>
