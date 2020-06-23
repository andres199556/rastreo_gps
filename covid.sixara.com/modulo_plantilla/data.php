<?php
include "../conexion/conexion.php";
$menu  ="mInicio"; /* esto es provisional, ya que mediante la función get_name_module.php se extra
el nombre del módulo actual para verificar si el usuario tiene permiso de acceso */
/* include "../funciones/get_name_module.php"; */
include "../sesion/validar_sesion.php";
include "../sesion/validar_permiso.php";
include "../funciones/dates.php";
$resultado = array();
$resultado["data"] = array();
$buscar = $conexion->query("SELECT id_registro,CONCAT(nombre,' ',apellido_paterno,' ',apellido_materno) as nombre,
fecha_nacimiento,
activo
FROM ejemplo_tabla
ORDER BY id_registro ASC");
$n = 0; #contador
while($row = $buscar->fetch(PDO::FETCH_ASSOC)){
    $n++;
    $id = $row["id_registro"];
    $nombre = $row["nombre"];
    $fecha_nacimiento = $row["fecha_nacimiento"];
    $activo = $row["activo"];
    $estado = ($activo == 1) ? "<a href='javascript:estado($id,$activo);' class='btn btn-success btn-sm'>Activo</a>":"<a href='javascript:estado($id,$activo);' class='btn btn-danger btn-sm'>Desactivado</a>";
    $editar = ($activo == 1) ? "<a href='editar.php?id=$id' class='btn btn-default btn-sm text-info'><i class='fa fa-edit'></i> Editar</a>":"<button class='btn btn-default' disabled title='No se puede editar el registro mientras se encuentre deshabilitado'><i class='fa fa-edit'></i> Editar</button>";
    $array_provisional = array(
        "$n",
        $nombre,
        $fecha_nacimiento,
        $estado,
        $editar
    );
    array_push($resultado["data"],$array_provisional);
}
echo json_encode($resultado,JSON_UNESCAPED_UNICODE);
?>