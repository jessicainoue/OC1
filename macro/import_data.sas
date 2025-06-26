/*---------------------------------------------------------------+
| Programa: import_data.sas                                      |
+----------------------------------------------------------------+
| M�dulo: Macros                                                 |
+----------------------------------------------------------------+
| Vers�o: 1.00                                                   |
+----------------------------------------------------------------+
| Hist�rico de Altera��es:                                       |
+----------------------------------------------------------------+
| Data       | Respons�vel      | Descri��o                      |
+----------------------------------------------------------------+
| 26/06/2025 | Jessica M. Inoue | Cria a macro de import.        |
+---------------------------------------------------------------*/

%macro import_data(tabela, planilha);
proc import datafile="&caminho/output/DM.xlsx" dbms=xlsx
	out=sicoob.&tabela replace;
	sheet="&planilha";
run;
%mend import_data;
