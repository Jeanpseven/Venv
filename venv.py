import os
import subprocess
import platform

# Solicita ao usuário inserir um nome para o ambiente virtual
venv_name = input("Digite um nome para o ambiente virtual (ou deixe vazio para padrão 'venv'): ").strip()

# Define um nome padrão se nenhum for fornecido
if not venv_name:
    venv_name = "venv"

# Caminho para o diretório onde o ambiente virtual será criado
venv_path = os.path.join(os.getcwd(), venv_name)

# Comando para criar o ambiente virtual
criar_venv = f"python -m venv {venv_path}"

# Executa o comando para criar o ambiente virtual
subprocess.run(criar_venv, shell=True)

# Comando para ativar o ambiente virtual
if platform.system() == "Windows":
    ativar_venv = os.path.join(venv_path, "Scripts", "activate")
else:
    ativar_venv = os.path.join(venv_path, "bin", "activate")

# Exibe instruções para ativar manualmente
print(f"O ambiente virtual foi criado em {venv_path}.")
print(f"Para ativar o ambiente virtual, execute: source {ativar_venv}")
