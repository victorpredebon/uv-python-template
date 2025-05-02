# uv-python-template

## Documentação

Este é um template para projetos Python que utiliza o gerenciador de pacotes UV.

### Pré-requisitos

- Python 3.13 ou superior
- UV instalado (`pip install uv`)

### Como usar este template

1. Crie e ative um ambiente virtual e instale as dependências:
   ```bash
   make install
   source .venv/bin/activate  # No Linux/macOS
   # ou
   .venv\Scripts\activate  # No Windows
   ```

2. Configure o pre-commit:
   ```bash
   make setup-pre-commit
   ```

3. Caso não tenha a versão correta do Python, use o uv para instalar a versão correta.
```bash
uv python install 3.13
```

### Estrutura do projeto

```
.
├── .github/workflows/  # Configurações de CI
├── src/               # Código fonte
├── pyproject.toml     # Configuração do projeto
├── .pre-commit-config.yaml  # Configuração do pre-commit
├── Makefile           # Comandos úteis
└── LICENSE            # Licença MIT
```

### Comandos úteis

O Makefile inclui comandos úteis para desenvolvimento:

```bash
make help                  # Exibe mensagens de ajuda
make install               # Instala dependências
make pre-commit            # Executa pre-commit em todos os arquivos
make setup-pre-commit      # Configura pre-commit
make pre-commit-autoupdate # Atualiza hooks do pre-commit
make tests                 # Executa testes
make coverage              # Executa testes com cobertura
make clean                 # Limpa artefatos de build e caches
```

### Licença

Este projeto está licenciado sob os termos da [Licença MIT](LICENSE).
