<?php
  session_start();

  require 'database.php';

  if (isset($_SESSION['user_id'])) {
    $records = $conn->prepare('SELECT id, email, password FROM users WHERE id = :id');
    $records->bindParam(':id', $_SESSION['user_id']);
    $records->execute();
    $results = $records->fetch(PDO::FETCH_ASSOC);

    $user = null;

    if (count($results) > 0) {
      $user = $results;
    }
  }
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Welcome to you WebApp</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="styles/index.css">

    <a href="logout.php" class="boton-derecha">Cerrar sesión</a>

</head>

<body>

    <section>

        <div>
            <img src="images/ipn.png" alt="logo ipn" class="logo">
            <h1>LABORATORIOS DE COMPUTO UPIIT</h1>
        </div>

        <?php require 'partials/header.php' ?>

        <?php if(!empty($user)): ?>

          <br> Bienvenido.  <?= $user['email']; ?>
          <!--<br>Iniciaste sesion -->

          <a href="terms/rules_v2.php">
            <br>
            <br>
          <!--<a href="logout.php">-->
            Terminos y Condiciones
          </a>
          
        <?php else: ?>
          <h1>Please Login or SignUp</h1>

          <a href="login.php">Login</a> or
          <a href="signup.php">SignUp</a>
        <?php endif; ?>

    </section>
</body>

</html>
