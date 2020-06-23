<?php
include "../conexion/conexion.php";
$menu  ="mInicio";
/* include "../funciones/get_name_module.php"; */
include "../sesion/validar_sesion.php";
include "../sesion/validar_permiso.php";
include "../funciones/dates.php";
$nombre = $_POST["nombre"];
$paterno  =$_POST["ap_paterno"];
$materno = $_POST["ap_materno"];
$fecha_nacimiento  =$_POST["fecha_nacimiento"];
$activo = 1;
$resultado = array();
$id = $_POST["id"];
try{
    $qry = $conexion->prepare("UPDATE ejemplo_tabla SET nombre = :nombre,
    apellido_paterno = :paterno,
    apellido_materno = :materno,
    fecha_nacimiento = :fecha_nacimiento,
    id_usuario = :id_usuario
    WHERE id_registro = :id
    ");
    $qry->execute([":nombre" => $nombre,
    ':paterno' => $paterno,
    ':materno' => $materno,
    ':fecha_nacimiento' => $fecha_nacimiento,
    ':id_usuario' => $id_usuario_logueado,
    ':id' => $id
    ]);
    $resultado["resultado"] = "exito";
    $resultado["mensaje"] = "Registro actualizado correctamente!.";
}
catch(Exception $error){
    $resultado["resultado"] = "error";
    $resultado["mensaje"] = "Error: ".$error->getMessage();
}
echo json_encode($resultado);
?>