<?php
include "../assets/plugins/PHPExcel/Classes/PHPExcel.php";
$servidor = "localhost:27017";
include "../mongo-php-library/src/functions.php";
$conexion = new MongoDB\Driver\Manager("mongodb://$servidor");
$inputFileName = 'mb52.xls';
//  Read your Excel workbook
try {
    $inputFileType = PHPExcel_IOFactory::identify($inputFileName);
    $objReader = PHPExcel_IOFactory::createReader($inputFileType);
    $objPHPExcel = $objReader->load($inputFileName);
} catch (Exception $e) {
    die('Error loading file "' . pathinfo($inputFileName, PATHINFO_BASENAME) . '": ' . $e->getMessage());
}

//  Get worksheet dimensions
$sheet = $objPHPExcel->getSheet(0);
$highestRow = $sheet->getHighestRow();
$highestColumn = $sheet->getHighestColumn();

$en_transito = 0;
$num_parte = 0;
$rowData = $sheet->rangeToArray('A5:A' . $highestRow);
print_r($rowData);
foreach ($rowData as $row) {

    $fila = $row[0];
    
    $new_data = preg_replace("/[\t]+/", "-.", trim($fila));
    /* $n = str_replace(" ","-.",$new_data); */
    $nuevos = explode("-.", $new_data);
    $cantidad = count($nuevos);
    if ($cantidad == 0 || $cantidad == 1) {
        echo "Es un espacio ------------------------------------------------------------<br>";
    } else {

        $nuevo_array = array_filter($nuevos, function ($value) {return strlen($value) != 1;});
        
        $cantidad_elementos = count($nuevo_array);
        

        if ($cantidad_elementos == 4) {
            //es un material
            $no_parte = (string) $nuevo_array[0];
            $nn = explode('\u0000', json_encode($no_parte));
            $no_parte = implode($nn);
            $no_parte = str_replace("\"", "", $no_parte);
            $num_parte = $no_parte;
            $descripcion = $nuevo_array[3];
            $planta = $nuevo_array[7];
            $nombre_planta = $nuevo_array[8];

        }
        /* else if($cantidad_elementos == 3){
            //es un envio en transito
            $en_transito = 1;
            $sloc = str_replace("\"", "", implode(explode('\u0000', json_encode($nuevo_array[0]))));
            $es_real = strpos($sloc, ".");
            if ($es_real == false) {
                //no es un numero en trassito
            } else {
                $transito = str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[3])))));
                echo $transito;
                $bulk = new MongoDB\Driver\BulkWrite;
//mando llamar el insert
                $bulk->insert(
                    ["num_parte" => $no_parte,
                        'sloc' => $sloc,
                        'en_transito' => $en_transito,
                        'transito' => $transito,
                    ]);
                $conexion->executeBulkWrite("aptiv.mb52", $bulk);
            }
        } */ 
        else if ($cantidad_elementos == 9) {
            //es un envio en transito
            $en_transito = 1;
            $sloc = str_replace("\"", "", implode(explode('\u0000', json_encode($nuevo_array[0]))));
            $es_real = strpos($sloc, ".");
            if ($es_real == false) {
                //no es un numero en trassito
            } else {
                $transito = str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[3])))));
                echo $transito;
                $bulk = new MongoDB\Driver\BulkWrite;
//mando llamar el insert
                $bulk->insert(
                    ["num_parte" => $no_parte,
                        'sloc' => $sloc,
                        'en_transito' => $en_transito,
                        'transito' => $transito,
                    ]);
                $conexion->executeBulkWrite("aptiv.mb52", $bulk);
            }

        } else if ($cantidad_elementos == 10) {
            //son valores de sloc
            $sloc = str_replace("\"", "", implode(explode('\u0000', json_encode($nuevo_array[0]))));
            $es_real = strpos($sloc, ".");
            if ($es_real == false) {
                //no es un numero en trasito
            } else {
                $transito = str_replace("\"", "", implode(explode('\u0000', json_encode(trim($nuevo_array[4])))));
                echo $transito;
                $bulk = new MongoDB\Driver\BulkWrite;
//mando llamar el insert
                $bulk->insert(
                    ["num_parte" => $no_parte,
                        'sloc' => $sloc,
                        'en_transito' => $en_transito,
                        'transito' => "'$transito'",
                    ]);
                $conexion->executeBulkWrite("aptiv.mb52", $bulk);
            }
            $tiene_x = 0;
            $unrestricted = $nuevo_array[2];
            $unit = $nuevo_array[4];
            $transito = $nuevo_array[5];
            $inspeccion = $nuevo_array[6];
            $restricted = $nuevo_array[9];
            $blocked = $nuevo_array[10];
            $returns = $nuevo_array[11];
            $total_value = $nuevo_array[12];
            $currency = $nuevo_array[13];

            //$insertar = $conexion->query("INSERT INTO mb52(num_parte,id_sloc,en_transito,transito)VALUES($no_parte,$sloc,$en_transito,$transito)");

        } else if ($cantidad_elementos == 11) {
            $sloc = $nuevo_array[0];
            $tiene_x = 1;
            $unrestricted = $nuevo_array[2];
            $unit = $nuevo_array[4];
            $transito = $nuevo_array[5];
            $inspeccion = $nuevo_array[6];
            $restricted = $nuevo_array[9];
            $blocked = $nuevo_array[10];
            $returns = $nuevo_array[11];
            $total_value = $nuevo_array[12];
            $currency = $nuevo_array[13];

        }

    }

}
