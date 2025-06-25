/*---------------------------------------------------------------+
| Programa: rel_VendasProduto.sas                                |
+----------------------------------------------------------------+
| Módulo: Relatórios                                            |
+----------------------------------------------------------------+
| Versão: 1.00                                                   |
+----------------------------------------------------------------+
| Histórico de Alterações:                                       |
+----------------------------------------------------------------+
| Data       | Responsável      | Descrição                      |
+----------------------------------------------------------------+
| 25/06/2025 | Jessica M. Inoue | Cria o relatório de vendas,    |
|                               |  cruzando o Preço Unitário com |
|                               |  a Quantidade Vendida.         |
+---------------------------------------------------------------*/

/*Chamada para iniciar o programa macrovar.sas*/
%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";

data vendasproduto;
	set sicoobsp.vendasproduto;
	TotalVenda = QtdeVendida*PrecoUnitario;
run;

proc print data=vendasproduto;
	var CodProduto Descricao DataVenda QtdeVendida PrecoUnitario TotalVenda;
run;

/*Chamada para liberar as libs*/
%include "&caminho/src/clear_libs.sas"
