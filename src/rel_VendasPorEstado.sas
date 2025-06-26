/*---------------------------------------------------------------+
| Programa: rel_VendasPorEstado.sas                              |
+----------------------------------------------------------------+
| Módulo: Relatórios                                             |
+----------------------------------------------------------------+
| Versão: 1.00                                                   |
+----------------------------------------------------------------+
| Histórico de Alterações:                                       |
+----------------------------------------------------------------+
| Data       | Responsável      | Descrição                      |
+----------------------------------------------------------------+
| 26/06/2025 | Jessica M. Inoue |                                |
+---------------------------------------------------------------*/

/*Chamada para iniciar o programa macrovars.sas e libraries.sas*/
%include "/opt/sas/Workshop/Git/OC1/macro/macrovars.sas";
%include "&caminho/src/libraries.sas";
/*Chamada para iniciar os programas de macro*/
%include "&caminho/macro/limites_imposto.sas";
%include "&caminho/macro/mrel_VendasEstado.sas";


%EstadoMenorImposto
%EstadoMaiorImposto

%mrel_VendasEstado(&est_min_pi)
%mrel_VendasEstado(&est_max_pi)

%mrel_VendasEstado(PR)