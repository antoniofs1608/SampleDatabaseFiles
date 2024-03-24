/*
Recuperar senha SYS e SYSTEM no Oracle
oBS.: Para usuário criado pode ser aqui também ou conectadndo no IDA com system e fazendo por lá
https://www.youtube.com/watch?v=wB0WjpcMiaI

Recuperar senha do usário princilmente sys, system

O usuário SYS é um usuário administrativo especial que pode realizar todas as funções administrativas.
Todas as tabelas e visualizações base para o dicionário de dados do banco de dados são armazenadas no esquema SYS.
O usuário SYS é concedido o privilégio SYSDBA, que permite ao usuário realizar tarefas administrativas de alto nível, como backup e recuperação.

O usuário SYSTEM também pode realizar todas as funções administrativas, exceto algumas como backup e recuperação.
O usuário SYSTEM é usado para criar tabelas e visualizações adicionais que exibem informações administrativas e é usado para criar tabelas e visualizações internas usadas por várias opções e ferramentas do Oracle Database.
Portanto, quando você cria um novo banco de dados, você precisa definir as senhas para os usuários SYS e SYSTEM para esse banco de dados específico.


No executar do window coloque o caminho onde esta instalado o Oracle
Ex.: C:\app\anton\product\21c\dbhomeXE\bin\sqlplus.exe /NOLOG
Clicar em OK e vai abrir no cmd o sqlplus sem solicitar login e senha
No cmd para coneectar execute o comando abaixo
SQL>CONNECT / AS SYSDBA
Vai exibir a mensagem "Conectado."
Par exibir a senha execute o comando abaixo para o usuário que queira alterar a senha
SQL>ALTER USER SYSTEM IDENTIFIED BY NOVASENHA;
Vai exibir a mensagem "Usuário alterado"
*/
