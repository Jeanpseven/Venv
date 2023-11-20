#!/bin/bash

# Nome fixo para o ambiente virtual
venv_name="venv"

# Caminho para o diretório onde o ambiente virtual será criado
venv_path=$(realpath "$venv_name")

# Comando para criar o ambiente virtual
python -m venv "$venv_path"

# Comando para ativar o ambiente virtual
if [ "$(uname)" == "Darwin" ]; then
    activate_venv="$venv_path/bin/activate"
else
    activate_venv="$venv_path/bin/activate"
fi

# Ativa automaticamente o ambiente virtual
source "$activate_venv"

# Exibe instruções
echo "O ambiente virtual foi criado e ativado em $venv_path."
