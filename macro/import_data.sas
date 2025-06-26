/*---------------------------------------------------------------+
| Programa: import_data.sas                                      |
+----------------------------------------------------------------+
| Módulo: Macros                                                 |
+----------------------------------------------------------------+
| Versão: 1.00                                                   |
+----------------------------------------------------------------+
| Histórico de Alterações:                                       |
+----------------------------------------------------------------+
| Data       | Responsável      | Descrição                      |
+----------------------------------------------------------------+
| 26/06/2025 | Jessica M. Inoue | Cria a macro de import.        |
+---------------------------------------------------------------*/

%macro import_data(tabela, planilha);
proc import datafile="&caminho/output/DM.xlsx" dbms=xlsx
	out=sicoob.&tabela replace;
	sheet="&planilha";
run;
%mend import_data;
