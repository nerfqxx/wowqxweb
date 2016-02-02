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

class Noticias extends Conexion {

	public function TiempoPublicacion($fecha){

		if(empty($fecha)){
			return "No hay fecha prevista";
		}

		$periodos	= array("segundo", "minuto", "hora", "d&iacute;a", "semana", "mes", "a&ntilde;o", "d&eacute;cada");
		$longitudes	= array("60","60","24","7","4.35","12","10");
		$ahora		= time();

		$unix_fecha = strtotime( $fecha );

		/**
		 *  Comprobar la validez de la fecha
		 */
		if( empty( $unix_fecha ) )
		{
			return "Fecha Desconocida";
		}

		/**
		 *  Fecha futura o fecha pasada
		 */
		if( $ahora > $unix_fecha )
		{
			$diferencia = $ahora - $unix_fecha;
			$tiempo = "hace";
		}
		else
		{
			$diferencia = $unix_fecha - $ahora;
			$tiempo = "desde ahora, hace";
		}

		for( $j = 0; $diferencia >= $longitudes[$j] && $j < count($longitudes)-1; $j++ )
		{
			$diferencia /= $longitudes[$j];
		}

		$diferencia = round( $diferencia );

		if( $diferencia != 1 )
		{
			$periodos[$j].= "s";
		}

		return " {$tiempo} $diferencia $periodos[$j]";
	}
}