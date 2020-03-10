<?php
// Initialize the session
session_start();

// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>

<html>
<head>
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Home</title>

    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

</head>




<body>
    <header style="
    background: linear-gradient(rgba(0,0,100,0.5),rgba(0,0,100,0.5)),url(../assets/img/webshop.png);
    background-size: cover;
    background-position: center;
    height: 100vh;">
        <nav>

            <a href="index.php"><img class="logo" src="assets/img/logo.png"></a>

            <div class="menu">
                              <ul>
                                  <li><a href="index.php">Home</a></li>
                                  

                                  <?php




                                  // Check if the user is logged in, if not then redirect him to login page
                                  if(!isset($_SESSION["loggedin"])){
                                    echo "<li><a href='view/login.php'>Log in</a></li>";

                                  }



                                  if(isset($_SESSION["loggedin"])){
                                    echo "<li><a href='account.php'>Mijn Account</a></li>";
                                    echo "<li><a href='src/logout.php'>Log uit</a></li>";

                                  }
                                  ?>

                              </ul>
            </div>
        </nav>
        <?php

        if(isset($_SESSION["loggedin"])){
          echo "<h1>Hallo " . htmlspecialchars($_SESSION["username"]) . ",<br> Uw account!!</h1>";

        }
        ?>
        

    </header>

    <div class="content">
          <h2>Hallo, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Uw account</h2>
      <p>
          <a href="reset-password.php" class="btn btn-warning">Wijzig uw wachtwoord</a>
          <a href="logout.php" class="btn btn-danger">Log uit </a>
      </p>

    </div>

    

   <div class="copyright">
      &copy; Webshop - Copyright 2020
    </div>


<script type="text/javascript">
        $(window).on("scroll", function() {
            if($(window).scrollTop()) {
                $('nav').addClass('red');
            }

            else {
               $('nav').removeClass('red');
            }
        })
    </script>
</body>
</html>
