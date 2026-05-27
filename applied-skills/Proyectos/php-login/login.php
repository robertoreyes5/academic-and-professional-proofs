<?php

  session_start();

  if (isset($_SESSION['user_id'])) {
    header('Location: /php-login');
    exit;
  }
  require 'database.php';

  if (!empty($_POST['email']) && !empty($_POST['password'])) {
    $records = $conn->prepare('SELECT id, email, password FROM users WHERE email = :email');
    $records->bindParam(':email', $_POST['email']);
    $records->execute();
    $results = $records->fetch(PDO::FETCH_ASSOC);

    $message = '';

    if (count($results) > 0 && password_verify($_POST['password'], $results['password'])) {
      $_SESSION['user_id'] = $results['id'];
      header("Location: /php-login");
    } else {
      $message ='Lo siento las credenciales no coinciden';
    }
  }

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Login</title>
    <a href="signup.php" class="create">crear cuenta</a>

    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="styles/login.css">
</head>

<body>
    <?php require 'partials/header.php' ?>

    <?php if(!empty($message)): ?>
    <p>
        <?= $message ?>
    </p>
    <?php endif; ?>

    <h1>Inicia sesion</h1>
    <!--  <span>or <a href="signup.php">SignUp</a></span> -->

    <form action="login.php" method="POST">
        <p>Correo:</p>
        <input name="email" type="text" placeholder="Ingresa tu correo">
        <p>Contraseña:</p>
        <input name="password" type="password" placeholder="Ingresa tu contraseña">
        <input type="submit" value="Submit">
    </form>
</body>

</html>