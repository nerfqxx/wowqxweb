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

class Conexion {

	private $db_host = "";  // Cambiar host según sea necesario
	private $db_user = "";  // Cambiar usuario según sea necesario
	private $db_pass = "";  // Cambiar contraseña según sea necesario
	private $db_name = "";	// Cambiar nombre según sea necesario
	private $db_auth = "";	// Cambiar auth según sea necesario
	private $db_chars= "";	// Cambiar personaje según sea necesario
	private $db_world= "";	// Cambiar mundo según sea necesario

	/**
	* Establecimiento de la conexión de base de datos
	* @return manejador de conexión de base de datos
	*/
	public function Conectar(){
		$this->mysqli = new mysqli($this->db_host, $this->db_user, $this->db_pass, $this->db_name);
		// Soporte para caracteres especiales en la base de datoss
		$this->mysqli->query("SET NAMES 'utf8'");
		if (mysqli_connect_error()){
			die("Error al conectar con la base de datos (" . mysqli_connect_errno() . ") " . mysqli_connect_error());
		}
		/**
		* Devolver recurso de conexión
		*/
		return $this->mysqli;
	}

	public function Cuentas(){
		$this->mysqli = new mysqli($this->db_host, $this->db_user, $this->db_pass, $this->db_auth);
		// Soporte para caracteres especiales en la base de datoss
		$this->mysqli->query("SET NAMES 'utf8'");
		if (mysqli_connect_error()){
			die("Error al conectar con la base de datos (" . mysqli_connect_errno() . ") " . mysqli_connect_error());
		}
		/**
		* Devolver recurso de conexión
		*/
		return $this->mysqli;
	}

	public function Personajes(){
		$this->mysqli = new mysqli($this->db_host, $this->db_user, $this->db_pass, $this->db_chars);
		// Soporte para caracteres especiales en la base de datoss
		$this->mysqli->query("SET NAMES 'utf8'");
		if (mysqli_connect_error()){
			die("Error al conectar con la base de datos (" . mysqli_connect_errno() . ") " . mysqli_connect_error());
		}
		/**
		* Devolver recurso de conexión
		*/
		return $this->mysqli;
	}

	public function Mundo(){
		$this->mysqli = new mysqli($this->db_host, $this->db_user, $this->db_pass, $this->db_world);
		// Soporte para caracteres especiales en la base de datoss
		$this->mysqli->query("SET NAMES 'utf8'");
		if (mysqli_connect_error()){
			die("Error al conectar con la base de datos (" . mysqli_connect_errno() . ") " . mysqli_connect_error());
		}
		/**
		* Devolver recurso de conexión
		*/
		return $this->mysqli;
	}

	public function SQL($sqlconsulta){
		return $this->Conectar()->query($sqlconsulta);
	}

	public function CuentaSQL(){
		return $this->Cuentas()->query($sqlconsulta);
	}
	public function CharSQL(){
		return $this->Personajes()->query($sqlconsulta);
	}

	public function MundoSQL(){
		return $this->Mundo()->query($sqlconsulta);
	}
}