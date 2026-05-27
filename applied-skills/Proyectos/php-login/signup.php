<?php

  require 'database.php';

  $message = '';

  if (!empty($_POST['email']) && !empty($_POST['password'])) {
    $sql = "INSERT INTO users (email, password) VALUES (:email, :password)";
    $stmt = $conn->prepare($sql);
    $stmt->bindParam(':email', $_POST['email']);
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
    $stmt->bindParam(':password', $password);

    if ($stmt->execute()) {
      $message = 'Creaste un nuevo usuario';
    } else {
      $message = 'Lo sentimos, debe haber habido un problema al crear su cuenta';
    }
  }
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Crear cuenta</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
  </head>
  <body>

    <?php require 'partials/header.php' ?>

    <?php if(!empty($message)): ?>
      <p> <?= $message ?></p>
    <?php endif; ?>

    <h1>Crear Cuenta</h1>
    <span>or <a href="login.php">Inicia sesion</a></span>

    <form action="signup.php" method="POST">
      <br>
      Tipo de usuario
      <br>
      <select name="Tipo de usuario">
      <option value="estudiante">estudiante</option>
      <option value="profesor">profesor</option>
      <input name="boleta" type="text" placeholder= "Ingresa tu nombre completo">
      <input name="correo" type="text" placeholder= "Ingresa tu correo">
      <input name="boleta" type="text" placeholder= "Numero_Maquina ">
      <input name="boleta" type="text" placeholder="Digita los digitos de boleta">
      <input name="contraseña" type="password" placeholder="Digita una contraseña">
      <!--Fin de seccion de prueba-->
      <!--<input name="Confirma tu contraseña" type="password" placeholder="Confirma tu contraseña">-->
      <input type="submit" value="Enviar">
    </form>

  </body>
</html>
