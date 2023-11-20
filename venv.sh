#!/bin/bash

# Solicita ao usuário inserir um nome para o ambiente virtual
read -p "Digite um nome para o ambiente virtual (ou deixe vazio para padrão 'venv'): " venv_name
venv_name=${venv_name:-venv}

# Caminho para o diretório onde o ambiente virtual será criado
venv_path=$(realpath "$venv_name")

# Comando para criar o ambiente virtual
python -m venv "$venv_path"

# Comando para ativar o ambiente virtual
if [ "$(uname)" == "Darwin" ]; then
    ativar_venv="$venv_path/bin/activate"
else
    ativar_venv="$venv_path/bin/activate"
fi

# Exibe instruções para ativar manualmente
echo "O ambiente virtual foi criado em $venv_path."
echo "Para ativar o ambiente virtual, execute: source $ativar_venv"
