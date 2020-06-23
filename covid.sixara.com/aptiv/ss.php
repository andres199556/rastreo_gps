<?php
$file = "sloc4.txt";
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
    if($c <=3){

    }
    else{
        array_push($array, $row);
    }
    $c++;
    
}
echo "<pre>";
print_r($array);
?>