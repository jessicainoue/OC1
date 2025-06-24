/*---------------------------------------------------------------+
| Programa: libraries.sas                                        |
+----------------------------------------------------------------+
| Módulo: Geral                                                  |
+----------------------------------------------------------------+
| Versão: 1.00                                                   |
+----------------------------------------------------------------+
| Histórico de Alterações:                                       |
+----------------------------------------------------------------+
| Data       | Responsável      | Descrição                      |
+----------------------------------------------------------------+
| 24/06/2025 | Jessica M. Inoue | Criação da librarie Sicoob.    |
| 24/06/2025 | Jessica M. Inoue | Criação da librarie SicoobSP.  |
+---------------------------------------------------------------*/

/*Cria uma libname 'sicoob', que aponta para a pasta /opt/sas/Workshop/libraries/Sicoob*/
libname sicoob base "&caminho_libs/Sicoob";

/*Cria uma libname 'sicoobsp', que aponta para a pasta /opt/sas/Workshop/libraries/SicoobSP*/
libname sicoobsp base "&caminho_libs/SicoobSP";