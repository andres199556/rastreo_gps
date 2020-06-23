<?php
include "../assets/plugins/PHPExcel/Classes/PHPExcel.php";
$servidor = "localhost:27017";
$fecha_hora = "2020-03-05 20:06:11";
include "../mongo-php-library/src/functions.php";
$conexion = new MongoDB\Driver\Manager("mongodb://$servidor");
$cmd = new MongoDB\Driver\Command([
    // build the 'distinct' command
    'distinct' => 'mb52', // specify the collection name
    'key' => 'sloc' // specify the field for which we want to get the distinct values
]);
$cursor = $conexion->executeCommand('aptiv', $cmd); // retrieve the results
$scents = current($cursor->toArray())->values; // get the distinct values as an array

//command ara los numeros de parte
$query = ['fecha_hora' => $fecha_hora]; // your typical MongoDB query

$command = new MongoDB\Driver\Command([
    'distinct' => 'mb52',
    'key' => 'num_parte',
    'query' => $query
]);
$datos = $conexion->executeCommand('aptiv', $command); // retrieve the results
$numeros = current($datos->toArray())->values; // get the distinct values as an array
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <table border=1>
    <thead>
        <th class="text-center">N° parte</th>
        <?php
        foreach($scents as $sloc){
            if($sloc == "0.000"){
                $sloc = "En transito";
            }
            else{

            }
            ?>
            <th class="text-center"><?php echo $sloc;?></th>
            <?php
        }
        ?>
        <th class="text-center">Total</th>
    </thead>
    <tbody>
    <?php
    foreach($numeros as $num_parte){
        ?>
        <tr>
            <td class="text-center"><?php echo $num_parte;?></td>
            
        </tr>
        <?php
    }
    ?>
    </tbody>
    </table>
</body>
</html>