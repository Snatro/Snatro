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
    session_start();
     define('UPLPATH', 'imgs/');
     $query = "SELECT * FROM clanak"; 
     $result = mysqli_query($dbc, $query);
     $uspjesnaPrijava='';
     if (isset($_POST['prijava'])) {
      
          $prijavaImeKorisnika = $_POST['username'];
           $prijavaLozinkaKorisnika = $_POST['lozinka'];
            $sql = "SELECT korisnicko_ime, lozinka, razina FROM korisnik WHERE korisnicko_ime = ?"; 
            $stmt = mysqli_stmt_init($dbc);
            
            if (mysqli_stmt_prepare($stmt, $sql)) {
                  mysqli_stmt_bind_param($stmt, 's', $prijavaImeKorisnika);
                   mysqli_stmt_execute($stmt);
                    mysqli_stmt_store_result($stmt);
                 }
            mysqli_stmt_bind_result($stmt, $imeKorisnika, $lozinkaKorisnika, $levelKorisnika);
            mysqli_stmt_fetch($stmt);
                   
            if (password_verify($_POST['lozinka'], $lozinkaKorisnika) && mysqli_stmt_num_rows($stmt) > 0)
            {
             $uspjesnaPrijava = true;
       
        // Provjera da li je admin 
        if($levelKorisnika == 1) {
             $admin = true;
             } 
             else 
             {
                  $admin = false;
             }
             $_SESSION['$username'] = $imeKorisnika;
              $_SESSION['$level'] = $levelKorisnika;
             } 
             else 
             {
                  $uspjesnaPrijava = false; 
                } 
     }
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
                <a class="nav-link" href="#">Administracija</a>
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
if (($uspjesnaPrijava == true && $admin == true) || (isset($_SESSION['$username'])) && $_SESSION['$level'] == 1) {
    while($row = mysqli_fetch_array($result)) {
        echo '<form enctype="multipart/form-data" action="" method="POST" class="container-fluid adminForm"> 
           <div class="form-group"> <label for="title">
           Naslov vjesti:</label>
            <input type="text"  placeholder="Unesite naslov: " name="title" id="title" class="form-control"
             value="'.$row['naslov'].'">
               </div>
                <div class="form-group">
                 <label for="about">Kratki sadržaj vijesti (do 50 znakova):</label> 
                 
                  <textarea  class="form-control" name="about" id="" cols="30" rows="10" >'.$row['sazetak'].'</textarea>
                    </div>
                    <div class="form-group">
                     <label for="content">Sadržaj vijesti:</label>
                      
                       <textarea class="form-control" name="content" id="" cols="30" rows="10" >'.$row['tekst'].'</textarea>
                         </div>
                         <div class="form-group">
                          <label for="photo">Slika:</label>
                           
                           <input class="form-control" type="file" class="input-text" 
                           id="photo" value="'.$row['slika'].'" name="photo"/> 
                           <br>
                           <img src="' . UPLPATH . $row['slika'] . '" width=100px>
                             </div>
                              <div class="form-group">
                               <label for="category">Kategorija vijesti:</label>
                              
                                 <select class="form-control" name="category" id=""  value="'.$row['kategorija'].'"> 
                                 <option value="musica">Musica</option>
                                  <option value="deportes">Deportes</option>
                                   </select> 
                                    </div>
                                    <div class="form-group">
                                     <label class="form-check-label" for="archive">Spremiti u arhivu: ';
                                     if($row['arhiva'] == 0) 
                                     { 
                                         echo '<input type="checkbox" class="form-check-input" name="archive" 
                                                id="archive"/> Arhiviraj?'; }
                                          else {
                                               echo '<input type="checkbox" class="form-check-input"
                                               name="archive" id="archive" checked/> Arhiviraj?'; 
                                            } 
                                     echo 
                                        ' </label>  </div> <div class="form-group">
                                         <input type="hidden" name="id" class="form-control" value="'.$row['id'].'">
                                          <button type="reset" value="Poništi">Poništi</button>
                                            <button type="submit" name="update" value="Prihvati"> Izmjeni</button>
                                            <button type="submit" name="delete" value="Izbriši"> Izbriši</button>
                                             </div>
                                              </form>
                                              <hr>'; 
                                                }
                                            }
                                            else if ($uspjesnaPrijava == true && $admin == false) {
                                                 echo '<p>Bok ' . $imeKorisnika . '! Uspješno ste prijavljeni, ali niste administrator.</p>';
                                            }
                                            else if (isset($_SESSION['$username']) && $_SESSION['$level'] == 0) {
                                                echo '<p>Bok ' . $_SESSION['$username'] . '! Uspješno ste prijavljeni, ali niste administrator.</p>';
                                            }
                                            else if($uspjesnaPrijava == false ){

                                            ?>
                                            <form method="POST" action="" class="container-fluid"
                                            style="min-height:350px;">
                                                <div class="form-group">
                                                <label for="logUser">Korisničko ime : </label>
                                                <input type="text" name="username" id="logUser" class="form-control"/>
                                                <span id="porukaLogUser" class="poruka"></span>
                                                <label for="logPass">Lozinka : </label>
                                                <input type="password" name="lozinka" id="logPass" class="form-control"/>
                                                <span id="porukaLogPass" class="poruka"></span>
                                                </div>
                                                <button type="submit" name="prijava" id="login" class="btn btn-primary">Prijava</button>
                                            </form>
                                            <script type="text/javascript">
                                            document.getElementById("login").onclick = function(event){
                                                var slanjeForme = true;

                                                var poljeUser = document.getElementById("logUser");
                                                var user = document.getElementById("logUser").value;

                                                var poljePass = document.getElementById("logPass");
                                                var pass = document.getElementById("logPass").value;

                                                if(user.length == 0){
                                                    slanjeForme = false;
                                                    poljeUser.style.border = "1px solid red";
                                                    document.getElementById("porukaLogUser").innerHTML="Unesite korisničko ime!<br/></br>";
                                                }
                                                else{
                                                    poljeUser.style.border = "1px solid green";
                                                    document.getElementById("porukaLogUser").innerHTML="";
                                                }
                                                if(pass.length == 0){
                                                    slanjeForme = false;
                                                    poljePass.style.border = "1px solid red"; 
                                                    document.getElementById("porukaLogPass").innerHTML="Unesite lozinku!<br/><br/>";
                                                }
                                                else{
                                                    poljePass.style.border = "1px solid green";
                                                    document.getElementById("porukaLogPass").innerHTML="";
                                                }
                                                if (slanjeForme != true)
                                                    { 
                                                        event.preventDefault(); 
                                                    }


                                            }
                                            </script>
                                            <?php
                                            }
                ?>
</section>


    <footer>

        <p>Dino Santro | <a href="mailto:dsantro@tvz.hr"> dsantro@tvz.hr </a> | 2021 </p>



    </footer>

<?php 
if(isset($_POST['delete'])){ 
    $id=$_POST['id'];
     $query = "DELETE FROM clanak WHERE id=$id "; 
    $result = mysqli_query($dbc, $query); 
}
if(isset($_POST['update'])){
     $picture = $_FILES['photo']['name'];
     $tmpPicture = $_FILES["photo"]["tmp_name"];
      $title=$_POST['title']; 
      $about=$_POST['about'];
       $content=$_POST['content'];
        $category=$_POST['category'];
         if(isset($_POST['archive'])){ 
             $archive=1;
             }else
             { $archive=0;
             } 
             $target_dir = UPLPATH.$picture;
              move_uploaded_file($tmpPicture, $target_dir);
               $id=$_POST['id'];
                $query = "UPDATE clanak SET 
                naslov='$title', sazetak='$about',
                 tekst='$content', slika='$picture',
                  kategorija='$category', arhiva='$archive'
                   WHERE id=$id "; 
$result = mysqli_query($dbc, $query); }
?>

</body>

</html>