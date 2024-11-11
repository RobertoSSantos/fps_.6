#!/bin/bash

# Lê os dados de entrada do POST e extrai o valor do nome do usuário
read POST_DATA
USER_NAME=$(echo "$POST_DATA" | sed 's/username=\(.*\)/\1/' | sed 's/+/ /g' | sed 's/%20/ /g')

# Define o cabeçalho HTTP para indicar que o conteúdo é HTML
echo "Content-type: text/html"
echo ""

# Exibe a página HTML com a saudação personalizada
echo "<!DOCTYPE html>"
echo "<html lang='pt-br'>"
echo "<head>"
echo "    <meta charset='UTF-8'>"
echo "    <title>Saudação</title>"
echo "</head>"
echo "<body>"
echo "    <h1>Olá, ${USER_NAME}!</h1>"
echo "    <p>Seja bem-vindo(a)!</p>"
echo "</body>"
echo "</html>"
