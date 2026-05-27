<body>
    <?php require 'partials/header.php' ?>

    <?php if(!empty($user)): ?>
      <br> Bienvenido.  <?= $user['email']; ?>
      <!--<br>Iniciaste sesion -->
      <a href="calendar/dynamic-full-calendar.html">
        <br>
        <br>
      <!--<a href="logout.php">-->
        Reservar laboratorio
      </a>

      <a href="terms/index.php">
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
  </body>