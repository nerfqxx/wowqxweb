<?php
/**
* Copyright (C) '2016' Server WoW <>
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

// Enlace Autor
 if (!isset($_SESSION)) session_start();
/**
 * CMS Wow Version
 *
 * @var string
 *
 */
define('CMS_VERSION', '0.0.1');
// Enlace Autor
define('URLAUTOR','');
// Activar Desarrollo del proyecto
define('ENTORNO_DESARROLLO', false);
// Barra separadora
define('DS', DIRECTORY_SEPARATOR);
//Archivos Estaticos del Proyecto
define('ESTATICO', URLBASE.'estatico'.DS);
// Directorio Root del Proyecto
define('__ROOT__', dirname(dirname(__FILE__)));
// Directorio del Sistema del Proyecto
define('SISTEMA', __ROOT__.DS.'sistema'.DS);
// Directorio de las Clases del Proyecto
define('CLASE', SISTEMA.DS.'clase'.DS);
// Directorio de los modulos del Proyecto
define('MODULO', SISTEMA.DS.'modulo'.DS.'');
// Prevenir que la mayoria de navegadores no puedan manejar con javascript a través del atributo "HttpOnly"
ini_set('session.cookie_httponly', 1);
// Utilizar únicamente cookies para la propagación del identificador de sesión.
ini_set('session.use_only_cookies', 1);
// Establecer la zona horaria predeterminada UTC.
date_default_timezone_set(HORARIO);

// Directorios Importantes NO EDITAR DE AQUI EN ADELANTE
require_once (SISTEMA.'metodo.php');
require_once (SISTEMA.'clase.php');
require_once (SISTEMA.'OOP.php');
require_once (SISTEMA.'Tema.Apps.php');
