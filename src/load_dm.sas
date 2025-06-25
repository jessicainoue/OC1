/*---------------------------------------------------------------+
| Programa: load_dm.sas                                          |
+----------------------------------------------------------------+
| Módulo: Carga de dados                                         |
+----------------------------------------------------------------+
| Versão: 1.00                                                   |
+----------------------------------------------------------------+
| Histórico de Alterações:                                       |
+----------------------------------------------------------------+
| Data       | Responsável      | Descrição                      |
+----------------------------------------------------------------+
| 25/06/2025 | Jessica M. Inoue | Carga da tabela DM.            |
+---------------------------------------------------------------*/

/*Chamada para iniciar o programa macrovar.sas*/
%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";

proc import datafile="&caminho/output/DM.xlsx" dbms=xlsx
	out=sicoob.vendas replace;
	sheet=vendas;
run;

proc import datafile="&caminho/output/DM.xlsx" dbms=xlsx
	out=sicoob.produtos replace;
	sheet=produtos;
run;

