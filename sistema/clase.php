<?php
/**
* Copyright (C) '2015' MoneyAPP <http://www.qualtivacr.com>
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
**/

/*
|--------------------------------------------------------------------------|
| Carga automática Clases
|--------------------------------------------------------------------------|
*/
function __autoload($className) {
	if (file_exists(SISTEMA.'clase' . DS . strtolower($className) . '.clase.php')):
		require_once(SISTEMA.'clase' . DS . strtolower($className) . '.clase.php');
	endif;
}
//Instanciar Clases
$db			= new Conexion();
$usuario	= new Usuario();
$enlace		= new Enlace();
$SistemaApp	= new Sistema();
$noticia	= new Noticias();
// Ejecutar Algunas Clases
$SistemaApp->ReportarError();
?>