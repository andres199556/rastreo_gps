<?php
$mb52 = "mb52.txt";
$zvt11 = "zvt11.txt";
include "../mongo-php-library/src/functions.php";
function save_mb52($file){
    $fecha_hora = date("Y-m-d H:i:s");
    $servidor = "localhost:27017";

$conexion = new MongoDB\Driver\Manager("mongodb://$servidor");
    $fopen = fopen($file, r);

$fread = fread($fopen, filesize($file));

fclose($fopen);

$remove = "\n";

$split = explode($remove, $fread);

$array[] = null;
$tab = "\t";

foreach ($split as $string) {
    $row = explode($tab, $string);
    array_push($array, $row);
}
foreach ($array as $fila) {
    
    $cantidad = count($fila);
    if ($cantidad == 0 || $cantidad == 1) {
        
    } else {

        $nuevo_array = array_filter($fila, function ($value) {return strlen($value) != 1;});
        $cantidad_elementos = count($nuevo_array);
        

        if ($cantidad_elementos == 4) {
            //es un material
            $no_parte = (string) $nuevo_array[1];
            $descripcion = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[4]))))));
            $planta = $nuevo_array[8];
            $nombre_planta = $nuevo_array[9];
            $nn = explode('\u0000', json_encode($no_parte));
            $no_parte = implode($nn);
            $no_parte = str_replace("\"", "", $no_parte);
            $num_parte = $no_parte;

        }
        else if ($cantidad_elementos == 9) {
            
            //es un envio en transito
            $en_transito = 1;
            $sloc = trim(str_replace("\"", "", implode(explode('\u0000', json_encode($nuevo_array[3])))));
            $es_real = strpos($sloc, ".");
            if ($es_real == false) {
                //no es un numero en trassito
            } else {
                $transito = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[6]))))));
                $bulk = new MongoDB\Driver\BulkWrite;
//mando llamar el insert
                $bulk->insert(
                    ["num_parte" => $no_parte,
                    "descripcion" => $descripcion,
                        'sloc' => $sloc,
                        'en_transito' => $en_transito,
                        'transito' => $transito,
                        "fecha_hora" => $fecha_hora

                    ]);
                $conexion->executeBulkWrite("aptiv.mb52", $bulk);
            }

        } else if ($cantidad_elementos == 10) {
            //son valores de sloc
            $sloc = trim(str_replace("\"", "", implode(explode('\u0000', json_encode($nuevo_array[1])))));
            
            $tiene_x = 0;
            $unrestricted = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[3]))))));
            $unit = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[5]))))));;
            $transito = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[6]))))));;
            $inspeccion = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[7]))))));;
            $restricted = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[10]))))));;
            $blocked = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[11]))))));;
            $returns = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[12]))))));;
            $total_value = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[13]))))));;
            $currency = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[14]))))));;
            $bulk = new MongoDB\Driver\BulkWrite;
            $bulk->insert(
                ["num_parte" => $no_parte,
                "descripcion" => $descripcion,
                    'sloc' => $sloc,
                    'en_transito' => 0,
                    'transito' => 0,
                    "unrestricted" => $unrestricted,
                    "unit" => $unit,
                    "inspeccion" => $inspeccion,
                    "restricted" => $restricted,
                    "blocked" => $blocked,
                    "returns" => $returns,
                    "total_value" => $total_value,
                    "currency" => $currency,
                    "fecha_hora" => $fecha_hora
                ]);
            $conexion->executeBulkWrite("aptiv.mb52", $bulk);


        } else if ($cantidad_elementos == 11) {
            $sloc = trim(str_replace("\"", "", implode(explode('\u0000', json_encode($nuevo_array[1])))));
            
            $tiene_x = 1;
            $unrestricted = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[3]))))));
            $unit = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[5]))))));;
            $transito = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[6]))))));;
            $inspeccion = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[7]))))));;
            $restricted = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[10]))))));;
            $blocked = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[11]))))));;
            $returns = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[12]))))));;
            $total_value = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[13]))))));;
            $currency = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[14]))))));;
            $bulk = new MongoDB\Driver\BulkWrite;
            $bulk->insert(
                ["num_parte" => $no_parte,
                "descripcion" => $descripcion,
                    'sloc' => $sloc,
                    'en_transito' => 0,
                    'transito' => 0,
                    "unrestricted" => $unrestricted,
                    "unit" => $unit,
                    "inspeccion" => $inspeccion,
                    "restricted" => $restricted,
                    "blocked" => $blocked,
                    "returns" => $returns,
                    "total_value" => $total_value,
                    "currency" => $currency,
                    "fecha_hora" => $fecha_hora
                ]);
                $conexion->executeBulkWrite("aptiv.mb52", $bulk);
        }

    }

}
}

function save_zvt11($file){
    $fecha_hora = date("Y-m-d H:i:s");
    $servidor = "localhost:27017";

$conexion = new MongoDB\Driver\Manager("mongodb://$servidor");
    $fopen = fopen($file, r);

$fread = fread($fopen, filesize($file));

fclose($fopen);

$remove = "\n";

$split = explode($remove, $fread);

$array[] = null;
$tab = "\t";
$c = 0;
foreach ($split as $string) {
    $row = explode($tab, $string);
    if($c <=10){

    }
    else{
        array_push($array, $row);
    }
    $c++;
    
}
$n = 0;
foreach($array as $row){
    if($n == 0){

    }
    else{
        $fecha = str_replace("\"","",trim(str_replace("\/", "-", implode(explode('\u0000', json_encode(trim($row[5])))))));
        $no_parte = trim(str_replace("\"", "", implode(explode('\u0000', json_encode(trim($row[12]))))));
        $bulk = new MongoDB\Driver\BulkWrite;
            $bulk->insert(
                ["num_parte" => $no_parte,
                "fecha_embarque" => $fecha,
                    "fecha_hora" => $fecha_hora
                ]);
                $conexion->executeBulkWrite("aptiv.zvt11", $bulk);
    }
    $n++;
}
echo "</pre>";
}

save_mb52($mb52);
save_zvt11($zvt11);