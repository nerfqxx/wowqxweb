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

class Enlace {

	public function LimpiaCadenaTexto($limpiar) {

		$chars = array(
			'?' => 'S', '?' => 's', '�' => 'Dj','?' => 'Z', '?' => 'z', '�' => 'A', '�' => 'A', '�' => 'A', '�' => 'A', '�' => 'A',
			'�' => 'A', '�' => 'A', '�' => 'C', '�' => 'E', '�' => 'E', '�' => 'E', '�' => 'E', '�' => 'I', '�' => 'I', '�' => 'I',
			'�' => 'I', '�' => 'N', '�' => 'O', '�' => 'O', '�' => 'O', '�' => 'O', '�' => 'O', '�' => 'O', '�' => 'U', '�' => 'U',
			'�' => 'U', '�' => 'U', '�' => 'Y', '�' => 'B', '�' => 'Ss','�' => 'a', '�' => 'a', '�' => 'a', '�' => 'a', '�' => 'a',
			'�' => 'a', '�' => 'a', '�' => 'c', '�' => 'e', '�' => 'e', '�' => 'e', '�' => 'e', '�' => 'i', '�' => 'i', '�' => 'i',
			'�' => 'i', '�' => 'o', '�' => 'n', '�' => 'o', '�' => 'o', '�' => 'o', '�' => 'o', '�' => 'o', '�' => 'o', '�' => 'u',
			'�' => 'u', '�' => 'u', '�' => 'y', '�' => 'y', '�' => 'b', '�' => 'y', '�' => 'f', ',' => '',  '.' => '',  ':' => '',
			';' => '',  '_' => '',  '<' => '',  '>' => '',  '\\'=> '',  '�' => '',  '�' => '',  '!' => '',  '|' => '',  '"' => '',
			'@' => '',  '�' => '',  '#' => '',  '$' => '',  '~' => '',  '%' => '',  '�' => '',  '&' => '',  '�' => '',  '/' => '',
			'(' => '',  ')' => '',  '=' => '',  '?' => '',  '\''=> '',  '�' => '',  '�' => '',  '`' => '',  '+' => '',  '�' => '',
			'�' => '',  '^' => '',  '*' => '',  '�' => '',  '�' => '',  '[' => '',  ']' => '',  '{' => '',  '}' => '',  '? '=> '-',
		);
		$limpiar = str_replace('&', '-and-', $limpiar);
		$limpiar = str_replace('.', '', $limpiar);
		$limpiar = strtolower(strtr($limpiar, $chars));
		$limpiar = str_replace(' ', '-', $limpiar);
		$limpiar = str_replace('--', '-', $limpiar);
		$limpiar = str_replace('--', '-', $limpiar);
		$limpiar = preg_replace('/[^\w\d_ -]/si', '', $limpiar);

		return trim($limpiar);

	}
}
