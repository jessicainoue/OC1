/*---------------------------------------------------------------+
| Programa: load_dm.sas                                          |
+----------------------------------------------------------------+
| M�dulo: Carga de dados                                         |
+----------------------------------------------------------------+
| Vers�o: 1.00                                                   |
+----------------------------------------------------------------+
| Hist�rico de Altera��es:                                       |
+----------------------------------------------------------------+
| Data       | Respons�vel      | Descri��o                      |
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

/* A tabela estava carregando linhas vazias (missing). Utilizado where para carregar apenas os dados com registro */
proc import datafile="&caminho/output/DM.xlsx" dbms=xlsx
	out=sicoob.produtos(where=(CodProduto <> .)) replace;
	sheet=produtos;
run;

proc import datafile="&caminho/output/DM.xlsx" dbms=xlsx
	out=sicoob.deptos replace;
	sheet=deptos;
run;

proc import datafile="&caminho/output/DM.xlsx" dbms=xlsx
	out=sicoob.grupos replace;
	sheet=grupos;
run;

proc import datafile="&caminho/output/DM.xlsx" dbms=xlsx
	out=sicoob.cores replace;
	sheet=cores;
run;

proc import datafile="&caminho/output/DM.xlsx" dbms=xlsx
	out=sicoob.tamanhos replace;
	sheet=tamanhos;
run;

proc import datafile="&caminho/output/DM.xlsx" dbms=xlsx
	out=sicoob.estados replace;
	sheet=estados;
run;

proc import datafile="&caminho/output/DM.xlsx" dbms=xlsx
	out=sicoob.regioes replace;
	sheet="Regi�es";
run;

/*Chamada para liberar as libs*/
%include "&caminho/src/clear_libs.sas"