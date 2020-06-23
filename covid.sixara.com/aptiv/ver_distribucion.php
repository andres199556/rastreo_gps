<?php
include "../conexion/conexion.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    
    <link rel="stylesheet" href="../assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/plugins/datatables/media/css/dataTables.bootstrap4.css">
  

    <title>Monitoreo</title>
</head>
<body>
<br>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h4 class="text-center">Distribución de inventario</h4>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="table-responsive">
                <table class="table table-hover table-striped table-bordered color-table success-table">
                    <thead class="">
                        <tr class="success-table">
                        <th class="text-center">#</th>
                            <th class="text-center">Código</th>
                            <th class="text-center">N° parte</th>
                            <th class="text-center">Sloc2</th>
                            <th class="text-center">Sloc3</th>
                            <th class="text-center">RCV</th>
                            <th class="text-center">Sloc4</th>
                            <th class="text-center">Total</th>
                            <th class="text-center">Sloc9</th>
                            <th class="text-center">Transito</th>
                            <th class="text-center">Not received</th>
                            <th class="text-center" style="background:#dc3545!important">sloc10</th>
                            <th class="text-center" style="background:#dc3545!important">Sloc11</th>
                            
                            <th class="text-center" style="background:#007bff!important">Total</th>
                        </tr>
                    </thead>
                    <tbody id="registros">
                    <?php
                    $buscar = $conexion->query("SELECT * FROM distribucion_inventario WHERE fecha_pivote = '2020-03-04'");
                    $n =0 ;
                    while($row = $buscar->fetch(PDO::FETCH_ASSOC)){
                        $n++;
                        $total = $row["total"] + $row["RCV"] + $row["not_received"];
                        $sloc3 = ($row["sloc3"] != "0") ? "<b><strong>".$row["sloc3"]."</strong></b>":$row["sloc3"];
                        $sloc4 = ($row["sloc4"] != "0") ? "<b><strong>".$row["sloc4"]."</strong></b>":$row["sloc4"];
                        $sloc9 = ($row["sloc9"] != "0") ? "<b><strong>".$row["sloc9"]."</strong></b>":$row["sloc9"];
                        $total_r = ($row["total"] != "0") ? "<b><strong>".$row["total"]."</strong></b>":$row["total"];
                        $not_received = ($row["not_received"] != "0") ? "<b><strong>".$row["not_received"]."</strong></b>":$row["not_received"];
                        $transito = ($row["transito"] != "0") ? "<b><strong>".$row["transito"]."</strong></b>":$row["transito"];
                        $total = ($total != "0") ? "<b></strong>".$total."</strong></b>":$total;
                        ?>
                        <tr>
                        <td class="text-center"><?php echo $n;?></td>
                            <td class="text-center"><?php echo $row['codigo_real'];?></td>
                            <td class="text-center"><?php echo $row['num_parte'];?></td>
                            <td class="text-center"><?php echo $row['sloc2'];?></td>
                            <td class="text-center"><?php echo $sloc3;?></td>
                            <td class="text-center"><?php echo $row['RCV'];?></td>
                            <td class="text-center"><?php echo $sloc4;?></td>
                            <td class="text-center"><?php echo $total_r;?></td>
                            <td class="text-center"><?php echo $sloc9;?></td>
                            <td class="text-center"><?php echo $transito;?></td>
                            <td class="text-center"><?php echo $not_received;?></td>
                            <td class="text-center"><?php echo $row['sloc10'];?></td>
                            <td class="text-center"><?php echo $row['sloc11'];?></td>
                            <td class="text-center"><?php echo $total;?></td>
                        </tr>
                        <?php
                    }
                    ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script src="../assets/plugins/jquery/jquery.min.js"></script>

    <script src="../assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="../assets/plugins/datatables/datatables.min.js"></script>
    
</body>
</html>