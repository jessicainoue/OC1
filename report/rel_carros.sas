/*---------------------------------------------------------------+
| Programa: rel_carros.sas                                       |
+----------------------------------------------------------------+
| Módulo: Relatórios                                             |
+----------------------------------------------------------------+
| Versão: 1.00                                                   |
+----------------------------------------------------------------+
| Histórico de Alterações:                                       |
+----------------------------------------------------------------+
| Data       | Responsável      | Descrição                      |
+----------------------------------------------------------------+
| 24/06/2025 | Jessica M. Inoue | Criação do relatório.          |
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
