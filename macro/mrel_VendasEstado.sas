/*---------------------------------------------------------------+
| Programa: mrel_VendasEstado.sas                                |
+----------------------------------------------------------------+
| Módulo: Macros                                                 |
+----------------------------------------------------------------+
| Versão: 1.00                                                   |
+----------------------------------------------------------------+
| Histórico de Alterações:                                       |
+----------------------------------------------------------------+
| Data       | Responsável      | Descrição                      |
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