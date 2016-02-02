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
 
class Usuario extends Conexion {

	public function Encriptacion($Usuario, $Contrasena){
		$Salt 		= './$%@&0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz$%#';
		$UserFilter	= strtoupper($Usuario);
		$User		= filter_var($UserFilter, FILTER_SANITIZE_STRING);
		$PassFilter	= strtoupper($Contrasena);
		$Pass		= filter_var($PassFilter, FILTER_SANITIZE_STRING);
		$Signo		= ':';
		$PassHash	= $User.$Signo.$Pass;
		$Password 	= hash('sha256', $Salt.$PassHash);
		return $Password;
	}
}
