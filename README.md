# UV Python Template

A modern and efficient template for Python projects using the UV package manager.

## 🚀 Features

- **Fast**: Development environment configured with UV, the ultra-fast Python package manager
- **Ready to use**: Pre-configured project structure with best practices
- **Code quality**: Complete linting and formatting setup with Ruff
- **Static typing**: Type checking with MyPy
- **Automated testing**: Pytest configuration integrated with pre-commit
- **CI/CD**: Ready-to-use GitHub Actions workflows

## 🛠️ Included Tools

- **UV**: Ultra-fast Python package manager and virtual environment tool
- **Ruff**: All-in-one Python linter and formatter
- **MyPy**: Static type checker
- **Pytest**: Testing framework
- **Pre-commit**: Git hooks to ensure code quality
- **Commitizen**: Standardized commit messages

## 🔧 Quick Start

### Prerequisites

- Python 3.13 or higher
- UV installed (`pip install uv`)

### How to use this template

1. Create and activate a virtual environment and install dependencies:
   ```bash
   make install
   source .venv/bin/activate  # On Linux/macOS
   # or
   .venv\Scripts\activate  # On Windows
   ```

2. Set up pre-commit:
   ```bash
   make setup-pre-commit
   ```

3. If you don't have the correct Python version, use uv to install it:
```bash
uv python install 3.13
```

### Project Structure

```
.
├── .github/workflows/  # CI configurations
├── src/               # Source code
├── pyproject.toml     # Project configuration
├── .pre-commit-config.yaml  # Pre-commit configuration
├── Makefile           # Useful commands
└── LICENSE            # MIT License
```

### Useful Commands

The Makefile includes useful commands for development:

```bash
make help                  # Display help messages
make install               # Install dependencies
make pre-commit            # Run pre-commit on all files
make setup-pre-commit      # Set up pre-commit
make pre-commit-autoupdate # Update pre-commit hooks
make tests                 # Run tests
make coverage              # Run tests with coverage
make clean                 # Clean build artifacts and caches
```

### License

This project is licensed under the terms of the [MIT License](LICENSE).
