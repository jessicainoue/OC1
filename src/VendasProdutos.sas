/*---------------------------------------------------------------+
| Programa: VendasProdutos.sas                                   |
+----------------------------------------------------------------+
| Módulo: Preparação de Dados                                    |
+----------------------------------------------------------------+
| Versão: 1.00                                                   |
+----------------------------------------------------------------+
| Histórico de Alterações:                                       |
+----------------------------------------------------------------+
| Data       | Responsável      | Descrição                      |
+----------------------------------------------------------------+
| 25/06/2025 | Jessica M. Inoue | Cruza a qtde de vendas com o   |
|                               |  valor do produto.             |
+---------------------------------------------------------------*/

proc sort data=sicoob.vendas out=work.vendas_produto;
	by CodProduto;
run;

proc sort data=sicoob.produtos out=work.produtos_produto;
	by CodProduto;
run;

data sicoobSP.VendasProduto;
	merge work.vendas_produto work.produtos_produto;
	by CodProduto;
run;