/*---------------------------------------------------------------+
| Programa: rel_VendasProduto.sas                                |
+----------------------------------------------------------------+
| M�dulo: Relat�rios                                            |
+----------------------------------------------------------------+
| Vers�o: 1.00                                                   |
+----------------------------------------------------------------+
| Hist�rico de Altera��es:                                       |
+----------------------------------------------------------------+
| Data       | Respons�vel      | Descri��o                      |
+----------------------------------------------------------------+
| 25/06/2025 | Jessica M. Inoue | Cria o relat�rio de vendas,    |
|                               |  cruzando o Pre�o Unit�rio com |
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
