<!DOCTYPE html>

<html>

<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Sopitas</title>
    <?php 
    include 'connect.php';
     define('UPLPATH', 'imgs/');
     
     $kategorija=$_GET['id'];
     $query = "SELECT * FROM clanak WHERE kategorija='$kategorija'";
      $result = mysqli_query($dbc, $query);
      ?>
</head>

<body>

    <header>
        <ul class="nav justify-content-center align-items-center">
            <li class="logo nav-item">
                <img src="imgs/sopitas.png" alt="logo">
            </li>
            <li class="nav-item">
                <a class="nav-link active" href="index.php">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="kategorija.php?id=musica">Musica</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="kategorija.php?id=deportes">Deportes</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="administracija.php">Administracija</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="unos.html">Unos</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="registracija.html">Registracija </a>
            </li>
        </ul>
    </header>

    </div>

    <div class="container" style="min-height:350px;">
        <?php 
        $i = 0;
        if($kategorija == "musica")
            echo '<h2 class="musicaHeading"> MUSICA </h2>';
        
        else{
            echo '<h2 class="deportesHeading"> DEPORTES </h2>';
           $i = 1;
        }   
        ?>
        <section class="row justify-content-md-center  musica" <?php if($i == 1) echo 'style="border-top : 0.6em solid green"'; ?>>


            <div class="container">

                <div class="row">
                <?php
                  while($row = mysqli_fetch_array($result)) 
                  { 
                      echo '<article class="col-md-4">'; 
                      echo '<a href="clanak.php?id='.$row['id'].'">';
                       echo '<img src="' .UPLPATH. $row['slika'] . '" class="articleImg"';
                          echo '<h4 class="title">'; 
                           echo $row['naslov'];
                            echo '</a></h4>'; 
                            echo '<span>'.$row['datum'].'</span>';
                             echo '</article>'; 
                             }
                             ?>

                    
                 </div>
            </div>

     
         </section>
        </div>                         

    <footer>

        <p>Dino Santro | <a href="mailto:dsantro@tvz.hr"> dsantro@tvz.hr </a> | 2021 </p>



    </footer>



</body>

</html>