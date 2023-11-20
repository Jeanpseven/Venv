#!/bin/bash

# Comando para criar o ambiente virtual
python3 -m venv venv

# Executa o comando para ativar o ambiente virtual
source venv/bin/activate

# Exibe mensagem adicional
echo "Ambiente virtual ativado. Execute 'deactivate' para sair do ambiente."
