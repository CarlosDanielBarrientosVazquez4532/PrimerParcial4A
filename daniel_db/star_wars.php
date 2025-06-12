<?php
    ob_start();
    error_reporting(E_ALL);
    ini_set('display_errors', 1);
    $username = "root";
    $password = "";
    $servername = "localhost";
    $database = "star_wars";

    $conexion = new mysqli($servername, $username, $password, $database);
    if ($conexion->connect_error) {
        die("Conexión Fallida: " . $conexion->connect_error);
    }

    $sql_especie = "SELECT id, especie FROM especies";
    $result_especie = $conexion->query($sql_especie);
    $sql_planeta = "SELECT id, planeta FROM planetas";
    $result_planeta = $conexion->query($sql_planeta);
    $sql_arma = "SELECT id, arma FROM armas";
    $result_arma = $conexion->query($sql_arma);
    $sql_afiliacion = "SELECT id, afiliacion FROM afiliaciones";
    $result_afiliacion = $conexion->query($sql_afiliacion);
    $sql_ocupacion = "SELECT id, ocupacion FROM ocupaciones";
    $result_ocupacion = $conexion->query($sql_ocupacion);

    if($_SERVER["REQUEST_METHOD"]=="POST"){
        $nombre = $conexion->real_escape_string($_POST["nombre"]);
        $especie = $conexion->real_escape_string($_POST["id_especie"]);
        $planeta = $conexion->real_escape_string($_POST["id_planeta"]);
        $arma = $conexion->real_escape_string($_POST["id_arma"]);
        $afiliacion = $conexion->real_escape_string($_POST["id_afiliacion"]);
        $ocupacion = $conexion->real_escape_string($_POST["id_ocupacion"]);

        $sql_insert = "INSERT INTO personajes (nombre, id_especie, id_planeta, id_arma, id_afiliacion, id_ocupacion)
        VALUES ('$nombre', '$especie', '$planeta', '$arma', '$afiliacion', '$ocupacion')";
        
        if ($conexion->query($sql_insert) === TRUE) {
            echo "<p class='success'>Nuevo personaje agregado con éxito</p>";
            header("Location: " . $_SERVER['PHP_SELF']);
            exit();
        } else {
            echo "<p class='error'>Error al agregar el personaje: " . $conexion->error . "</p>";
        }
    }
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Star Wars - Personajes</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="archivo.css?v=1.3">
    <link rel="stylesheet" href="table.css?v=1.3">
</head>
<body>
    <nav class="navbar navbar-light navbarBg">
        <div class="container">
            <a class="navbar-brand in" href="/daniel_db/indexMAIN.html" style="color: white;">Inicio</a>

            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="nav navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="font-menu nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" style="color: white;"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Unidad 1</a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="hola dropdown-item" href="/daniel_db/dani1.php">Mostrar datos</a>
                            <a class="dropdown-item" href="/daniel_db/dani2.php">Mostrar datos</a>
                            <a class="dropdown-item" href="/daniel_db/dani3.php">Meter datos</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" style="color: white;"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Unidad 2</a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="/daniel_db/dani4.php">Cuatro</a>
                            <a class="dropdown-item" href="/daniel_db/dani5.php">Cinco</a>
                            <a class="dropdown-item" href="/daniel_db/dani6.php">Seis</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" style="color: white;"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Unidad 3</a>

                        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="/daniel_db/dani7.php">Siete</a>
                            <a class="dropdown-item" href="/daniel_db/dani8.php">Ocho</a>
                            <a class="dropdown-item" href="/daniel_db/dani9.php">Nueve</a>
                        </div>
                    </li>

                    
                </ul>
            </div>
            

        </div>
    </nav>

    <div class="jumbotron">
        <h1 style="font-family: 'VTKS EMBROIDERY', sans-serif; text-align: center; font-size: 50px; background: linear-gradient(to right, gold, white); -webkit-background-clip: text; color: transparent;">
            Agregar Personajes de Star Wars
        </h1>
    </div>

    <div class="contenedor">
        <div class="container1">
            <form method="POST">
                <div class="form-group"><label for="nombre">Nombre del personaje:</label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>

                <div class="form-group"><label for="id_especie">Especie:</label>
                    <select name="id_especie" required>
                        <option value="">Selecciona especie</option>
                        <?php while($row = $result_especie->fetch_assoc()) {
                            echo "<option value='" . $row["id"] . "'>" . $row["especie"] . "</option>";
                        } ?>
                    </select>
                </div>

                <div class="form-group"><label for="id_planeta">Planeta:</label>
                    <select name="id_planeta" required>
                        <option value="">Selecciona planeta</option>
                        <?php while($row = $result_planeta->fetch_assoc()) {
                            echo "<option value='" . $row["id"] . "'>" . $row["planeta"] . "</option>";
                        } ?>
                    </select>
                </div>

                <div class="form-group"><label for="id_arma">Arma:</label>
                    <select name="id_arma" required>
                        <option value="">Selecciona arma</option>
                        <?php while($row = $result_arma->fetch_assoc()) {
                            echo "<option value='" . $row["id"] . "'>" . $row["arma"] . "</option>";
                        } ?>
                    </select>
                </div>

                <div class="form-group"><label for="id_afiliacion">Afiliación:</label>
                    <select name="id_afiliacion" required>
                        <option value="">Selecciona afiliación</option>
                        <?php while($row = $result_afiliacion->fetch_assoc()) {
                            echo "<option value='" . $row["id"] . "'>" . $row["afiliacion"] . "</option>";
                        } ?>
                    </select>
                </div>

                <div class="form-group"><label for="id_ocupacion">Ocupación:</label>
                    <select name="id_ocupacion" required>
                        <option value="">Selecciona ocupación</option>
                        <?php while($row = $result_ocupacion->fetch_assoc()) {
                            echo "<option value='" . $row["id"] . "'>" . $row["ocupacion"] . "</option>";
                        } ?>
                    </select>
                </div>

                <div class="form-group">
                    <input type="submit" value="Agregar Personaje">
                </div>
            </form>

            <h2 style="font-family: 'Clutsy', sans-serif;">Personajes de Star Wars</h2>
            <table border="1">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Especie</th>
                    <th>Planeta</th>
                    <th>Arma</th>
                    <th>Afiliación</th>
                    <th>Ocupación</th>
                </tr>
                <?php
                $sql = "SELECT 
                p.id, 
                p.nombre, 
                e.especie, 
                pl.planeta, 
                a.arma,
                af.afiliacion, 
                o.ocupacion
                FROM personajes p
                JOIN especies e ON p.id_especie = e.id
                JOIN planetas pl ON p.id_planeta = pl.id
                JOIN armas a ON p.id_arma = a.id
                JOIN afiliaciones af ON p.id_afiliacion = af.id
                JOIN ocupaciones o ON p.id_ocupacion = o.id";

                $resultado = $conexion->query($sql);
                if ($resultado->num_rows > 0) {
                    while($row = $resultado->fetch_assoc()){
                        echo "<tr>
                        <td>{$row['id']}</td>
                        <td>{$row['nombre']}</td>
                        <td>{$row['especie']}</td>
                        <td>{$row['planeta']}</td>
                        <td>{$row['arma']}</td>
                        <td>{$row['afiliacion']}</td>
                        <td>{$row['ocupacion']}</td>
                        </tr>";
                    }
                } else {
                    echo "<tr><td colspan='9'>No hay personajes registrados</td></tr>";
                }
                ?>
            </table>
        </div>
    </div>
</body>
</html>
