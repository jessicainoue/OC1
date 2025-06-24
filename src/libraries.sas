/*---------------------------------------------------------------+
| Programa: libraries.sas                                        |
+----------------------------------------------------------------+
| M�dulo: Geral                                                  |
+----------------------------------------------------------------+
| Vers�o: 1.00                                                   |
+----------------------------------------------------------------+
| Hist�rico de Altera��es:                                       |
+----------------------------------------------------------------+
| Data       | Respons�vel      | Descri��o                      |
+----------------------------------------------------------------+
| 24/06/2025 | Jessica M. Inoue | Cria��o da librarie Sicoob.    |
| 24/06/2025 | Jessica M. Inoue | Cria��o da librarie SicoobSP.  |
+---------------------------------------------------------------*/

/*Cria uma libname 'sicoob', que aponta para a pasta /opt/sas/Workshop/libraries/Sicoob*/
libname sicoob base "&caminho_libs/Sicoob";

/*Cria uma libname 'sicoobsp', que aponta para a pasta /opt/sas/Workshop/libraries/SicoobSP*/
libname sicoobsp base "&caminho_libs/SicoobSP";