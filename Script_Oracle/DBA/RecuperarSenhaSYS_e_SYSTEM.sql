/*
Recuperar senha SYS e SYSTEM no Oracle
oBS.: Para usu�rio criado pode ser aqui tamb�m ou conectadndo no IDA com system e fazendo por l�
https://www.youtube.com/watch?v=wB0WjpcMiaI

Recuperar senha do us�rio princilmente sys, system

O usu�rio SYS � um usu�rio administrativo especial que pode realizar todas as fun��es administrativas.
Todas as tabelas e visualiza��es base para o dicion�rio de dados do banco de dados s�o armazenadas no esquema SYS.
O usu�rio SYS � concedido o privil�gio SYSDBA, que permite ao usu�rio realizar tarefas administrativas de alto n�vel, como backup e recupera��o.

O usu�rio SYSTEM tamb�m pode realizar todas as fun��es administrativas, exceto algumas como backup e recupera��o.
O usu�rio SYSTEM � usado para criar tabelas e visualiza��es adicionais que exibem informa��es administrativas e � usado para criar tabelas e visualiza��es internas usadas por v�rias op��es e ferramentas do Oracle Database.
Portanto, quando voc� cria um novo banco de dados, voc� precisa definir as senhas para os usu�rios SYS e SYSTEM para esse banco de dados espec�fico.


No executar do window coloque o caminho onde esta instalado o Oracle
Ex.: C:\app\anton\product\21c\dbhomeXE\bin\sqlplus.exe /NOLOG
Clicar em OK e vai abrir no cmd o sqlplus sem solicitar login e senha
No cmd para coneectar execute o comando abaixo
SQL>CONNECT / AS SYSDBA
Vai exibir a mensagem "Conectado."
Par exibir a senha execute o comando abaixo para o usu�rio que queira alterar a senha
SQL>ALTER USER SYSTEM IDENTIFIED BY NOVASENHA;
Vai exibir a mensagem "Usu�rio alterado"
*/
