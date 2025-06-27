/*------------------------------------------------------------------+
| Programa: libraries.sas                                           |
+-------------------------------------------------------------------+
| Módulo: Geral                                                     |
+-------------------------------------------------------------------+
| Versão: 3.00                                                      |
+-------------------------------------------------------------------+
| Histórico de Alterações:                                          |
+-------------------------------------------------------------------+
| Data       | Responsável      | Descrição                         |
+-------------------------------------------------------------------+
| 24/06/2025 | Jessica M. Inoue | Criação da librarie Sicoob.       |
| 24/06/2025 | Jessica M. Inoue | Criação da librarie SicoobSP.     |
| 27/06/2025 | Jessica M. Inoue | Criação da librarie OC1 via Oracle|
+------------------------------------------------------------------*/

/*Cria uma libname 'sicoob', que aponta para a pasta /opt/sas/Workshop/libraries/Sicoob*/
libname sicoob base "&caminho_libs/sicoob";

/*Cria uma libname 'sicoobsp', que aponta para a pasta /opt/sas/Workshop/libraries/SicoobSP*/
libname sicoobsp base "&caminho_libs/sicoobSP";

libname oc1 oracle path='OrionStar' user='oc1' password='Student1';