 <?php 
    include 'connect.php'; 

    $picture = $_FILES['photo']['name'];
    $tmpPicture = $_FILES['photo']['tmp_name'];

    $title = $_POST['title']; 
    $about = $_POST['about'];

    $content = $_POST['content'];
    $category = $_POST['category']; 
    $date = date('d.m.Y.');


    if(isset($_POST['archive'])){
         $archive = 1; 
         }
    else{
      $archive = 0;
    }
    
    $target_dir = 'imgs/'.$picture;
    move_uploaded_file($tmpPicture , $target_dir);
    
    $query = "INSERT INTO clanak (datum,naslov,sazetak,tekst,slika,kategorija,arhiva)
    VALUES ('$date','$title','$about','$content','$picture','$category','$archive')";
    
    $result = mysqli_query($dbc,$query) or die ('Errorrr querying database.');
    mysqli_close($dbc);

                    ?>
    <!DOCTYPE html>
<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
    <meta charset="UTF-8">
    <title>Sopitas</title>
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
        <h1>
            <?php echo $title; ?>
        </h1>
        <p> <?php echo $about; ?>
        </p>
        <p> <?php echo $date; ?>
            </p>    
        <img  class="clanakImgs" src="imgs/<?php echo $picture; ?>"> 

        <p> <?php echo $content; ?> 
        </p>
    </section>
    <footer>
        <p>Dino Santro | <a href="mailto:dsantro@tvz.hr">dsantro@tvz.hr</a> | 2021</p>
    </footer>
</body>