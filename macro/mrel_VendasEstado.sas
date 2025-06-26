/*---------------------------------------------------------------+
| Programa: mrel_VendasEstado.sas                                |
+----------------------------------------------------------------+
| M�dulo: Macros                                                 |
+----------------------------------------------------------------+
| Vers�o: 1.00                                                   |
+----------------------------------------------------------------+
| Hist�rico de Altera��es:                                       |
+----------------------------------------------------------------+
| Data       | Respons�vel      | Descri��o                      |
+----------------------------------------------------------------+
| 26/06/2025 | Jessica M. Inoue |                                |
+---------------------------------------------------------------*/

%macro mrel_VendasEstado(sigla);
	proc sql;
	select estado,
		sum(qtdevendida) as TotalQuantidade format=comma12.,
		sum(TotalVenda) as TotalVenda format=dollarx16.2,
		sum(TotalImposto) as TotalImposto format=dollarx16.2,
		sum(TotalVenda) - sum(TotalImposto) as LucroTotal format=dollarx16.2
	from sicoobSP.VendasPeriodo
	where sigla = "&sigla"
	group by estado
	order by TotalVenda desc;
	quit;
%mend mrel_VendasEstado;