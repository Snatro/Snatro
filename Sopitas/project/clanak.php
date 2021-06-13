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
     $id = $_GET['id'];
     $query = "SELECT * FROM clanak WHERE  id= '$id' ";
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
    <section class="clanak">
        <?php
        while($row = mysqli_fetch_array($result)){
        echo '
        <h1>
             '.$row['naslov'].'
        </h1>';
        echo '
        <p>   '.$row['sazetak'].' 
        </p>';
        echo'
        <span>   '.$row['datum'].' 
            </span>';    
        echo'
        <img  class="clanakImgs" src="'.UPLPATH.$row['slika'].'"> ';
        echo'
        <p>  '.$row['tekst'].'
        </p>';
        }
        ?>
    </section>
    <footer>
        <p>Dino Santro | <a href="mailto:dsantro@tvz.hr">dsantro@tvz.hr</a> | 2021</p>
    </footer>
</body>