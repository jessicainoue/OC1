/*---------------------------------------------------------------+
| Programa: rel_VendasEstado.sas                                 |
+----------------------------------------------------------------+
| M�dulo: Relat�rios                                             |
+----------------------------------------------------------------+
| Vers�o: 1.00                                                   |
+----------------------------------------------------------------+
| Hist�rico de Altera��es:                                       |
+----------------------------------------------------------------+
| Data       | Respons�vel      | Descri��o                      |
+----------------------------------------------------------------+
| 26/06/2025 | Jessica M. Inoue |                                |
+---------------------------------------------------------------*/

/*Chamada para iniciar o programa macrovars.sas e libraries.sas*/
%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";

proc sql;
select estado,
	sum(qtdevendida) as TotalQuantidade format=comma12.,
	sum(TotalVenda) as TotalVenda format=dollarx16.2,
	sum(TotalImposto) as TotalImposto format=dollarx16.2,
	sum(TotalVenda) - sum(TotalImposto) as LucroTotal format=dollarx16.2
from sicoobSP.VendasPeriodo
group by estado
order by TotalVenda desc;
quit;

/*Chamada para liberar as libs*/
%include "&caminho/src/clear_libs.sas"