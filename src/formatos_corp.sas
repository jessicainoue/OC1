/*---------------------------------------------------------------+
| Programa: formatos_corp.sas                                    |
+----------------------------------------------------------------+
| M�dulo: Geral                                                  |
+----------------------------------------------------------------+
| Vers�o: 1.00                                                   |
+----------------------------------------------------------------+
| Hist�rico de Altera��es:                                       |
+----------------------------------------------------------------+
| Data       | Respons�vel      | Descri��o                      |
+----------------------------------------------------------------+
| 27/06/2025 | Jessica M. Inoue |                                |
+---------------------------------------------------------------*/

proc format;
	value tamanho
		1 = 'Pequeno'
		2 = 'M�dio'
		3 = 'Grande'
		4 = 'Extra-Grande';
run;