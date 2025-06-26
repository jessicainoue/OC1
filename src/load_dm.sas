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

/*Chamada para iniciar o programa macrovars.sas e libraries.sas*/
%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";
/*Chamada para iniciar o programa import_data.sas*/
%include "&caminho/macro/import_data.sas";

%import_data(vendas, vendas)
%import_data(produtos, produtos)
%import_data(deptos, deptos)
%import_data(grupos, grupos)
%import_data(cores, cores)
%import_data(tamanhos, tamanhos)
%import_data(estados, estados)
%import_data(regioes, Regi�es)

/*Chamada para liberar as libs*/
%include "&caminho/src/clear_libs.sas"