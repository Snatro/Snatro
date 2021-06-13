    <?php
        include 'connect.php';
        
        $ime = $_POST['ime'];
        $prezime = $_POST['prezime'];
        $username = $_POST['username'];
        $pass = $_POST['pass'];
        $hash_pass = password_hash($pass,CRYPT_BLOWFISH);
        $razina = 0;
        if($username == "administrator")
            $razina = 1;
        $registriraniKorisnik = '';

        $sql = "SELECT korisnicko_ime FROM korisnik WHERE korisnicko_ime = ?";
        $stmt = mysqli_stmt_init($dbc);
        if(mysqli_stmt_prepare($stmt,$sql)){
            mysqli_stmt_bind_param($stmt, 's', $username);
             mysqli_stmt_execute($stmt);
              mysqli_stmt_store_result($stmt);
             }
             if(mysqli_stmt_num_rows($stmt) > 0)
             {
                  $msg='Korisničko ime već postoji!';
                 }
        else{
            $sql = "INSERT INTO korisnik(ime,prezime,korisnicko_ime,lozinka,razina) 
            VALUES (?,?,?,?,?)";
            if(mysqli_stmt_prepare($stmt,$sql)){
                mysqli_stmt_bind_param($stmt, 'ssssi',$ime,$prezime, $username, $hash_pass, $razina);
                 mysqli_stmt_execute($stmt);
                $registriraniKorisnik = true;
                }
            }
            mysqli_close($dbc);
        
        if($registriraniKorisnik == true)
            echo '<a href="index.php"> Korisnik je uspješno registriran! Odite na naslovnicu </a>';
        else{
            echo '<a href="registracija.html">Registracija nije protekla uspješno, molimo vas pokušajte ponovno.</a>';
        }
    ?>
    