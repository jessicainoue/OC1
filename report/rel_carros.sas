/*---------------------------------------------------------------+
| Programa: rel_carros.sas                                       |
+----------------------------------------------------------------+
| M�dulo: Relat�rios                                             |
+----------------------------------------------------------------+
| Vers�o: 1.00                                                   |
+----------------------------------------------------------------+
| Hist�rico de Altera��es:                                       |
+----------------------------------------------------------------+
| Data       | Respons�vel      | Descri��o                      |
+----------------------------------------------------------------+
| 24/06/2025 | Jessica M. Inoue | Cria��o do relat�rio.          |
+---------------------------------------------------------------*/

/*Chamada para iniciar o programa macrovar.sas*/
%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
/*Chamada da macro '&caminho'*/
%include "&caminho/src/libraries.sas";

proc print data=sicoob.carros;
	where origin='USA';
run;

proc print data=sicoobSP.carros123;
	where origin='Europe';
run;
