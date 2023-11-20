iimport subprocess

# Nome fixo para o ambiente virtual
venv_name = "venv"

# Caminho para o diretório onde o ambiente virtual será criado
venv_path = subprocess.check_output(["realpath", venv_name], text=True).strip()

# Comando para criar o ambiente virtual
subprocess.run(["python", "-m", "venv", venv_path])

# Comando para ativar o ambiente virtual
if platform.system() == "Darwin":
    activate_venv = f"{venv_path}/bin/activate"
else:
    activate_venv = f"{venv_path}/bin/activate"

# Exibe instruções para ativar manualmente
print(f"O ambiente virtual foi criado em {venv_path}.")
print(f"Para ativar o ambiente virtual, execute: source {activate_venv}")