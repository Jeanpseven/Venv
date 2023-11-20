#!/bin/bash

# Nome fixo para o ambiente virtual
venv_name="venv"

# Obtém o caminho para o diretório do script
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Caminho para o diretório onde o ambiente virtual será criado
venv_path="$script_dir/$venv_name"

# Comando para criar o ambiente virtual
python3 -m venv "$venv_path"

# Exibe instruções
echo "O ambiente virtual foi criado em $venv_path."

# Executa o comando para ativar o ambiente virtual
source "$venv_path/bin/activate"

# Exibe mensagem adicional
echo "Ambiente virtual ativado. Execute 'deactivate' para sair do ambiente."
