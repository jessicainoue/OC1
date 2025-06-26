/*---------------------------------------------------------------+
| Programa: limites_imposto.sas                                  |
+----------------------------------------------------------------+
| M�dulo: Fiscal                                                 |
+----------------------------------------------------------------+
| Vers�o: 1.00                                                   |
+----------------------------------------------------------------+
| Hist�rico de Altera��es:                                       |
+----------------------------------------------------------------+
| Data       | Respons�vel      | Descri��o                      |
+----------------------------------------------------------------+
| 26/06/2025 | Jessica M. Inoue |                                |
+---------------------------------------------------------------*/

%macro EstadoMaiorImposto;
proc sql;
	select max(percImposto) into :max_pi
	from sicoob.estados;

	select sigla into :est_max_pi
	from sicoob.estados
	where percImposto = &max_pi;
run;
%mend EstadoMaiorImposto;

%macro EstadoMenorImposto;
proc sql;
	select min(percImposto) into :min_pi
	from sicoob.estados;

	select sigla into :est_min_pi
	from sicoob.estados
	where percImposto = &min_pi;
run;
%mend EstadoMenorImposto;

%global est_max_pi est_min_pi;