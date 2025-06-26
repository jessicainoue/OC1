/*---------------------------------------------------------------+
| Programa: trans_VendasPeriodo.sas                              |
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
| 26/06/2025 | Jessica M. Inoue | Altera o Merge DataStep por um |
|                               |  Join ProcSql.                 |
+---------------------------------------------------------------*/

/*Chamada para iniciar o programa macrovars.sas e libraries.sas*/
%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";

proc sql;
create table sicoobSP.VendasPeriodo as
select a.CodProduto,
	b.Descricao,
	b.CodGrupo,
	c.Descricao as Grupo,
	b.CodDepto,
	d.Descricao as Depto,
	a.CodCor,
	e.Descricao as Cor,
	a.CodTamanho,
	f.Descricao as Tamanho,
	a.CodEstado,
	g.Sigla,
	g.Nome as Estado,
	h.Nome as Regiao,
	a.DataVenda,
	a.QtdeVendida,
	b.PrecoUnitario,
	(a.QtdeVendida*b.PrecoUnitario) as TotalVenda,
	g.PercImposto,
	(a.QtdeVendida*b.PrecoUnitario*g.PercImposto) as TotalImposto
from sicoob.vendas as a
	inner join sicoob.produtos as b on (a.CodProduto = b.CodProduto)
	inner join sicoob.grupos as c on (b.CodGrupo = c.CodGrupo)
	inner join sicoob.deptos as d on (b.CodDepto = d.CodDepto)
	inner join sicoob.cores as e on (a.CodCor = e.CodCor)
	inner join sicoob.tamanhos as f on (a.CodTamanho = f.CodTamanho)
	inner join sicoob.estados as g on (a.CodEstado = g.CodEstado)
	inner join sicoob.regioes as h on (g.CodRegiao = h.CodRegiao);
quit;

/*Chamada para liberar as libs*/
%include "&caminho/src/clear_libs.sas"