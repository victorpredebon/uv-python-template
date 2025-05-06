# UV Python Template

A modern and efficient template for Python projects using the UV package manager.

## 🚀 Features

- **Fast**: Development environment configured with UV, the ultra-fast Python package manager
- **Ready to use**: Pre-configured project structure with best practices
- **Code quality**: Complete linting and formatting setup with Ruff
- **Static typing**: Type checking with MyPy
- **Automated testing**: Pytest configuration integrated with pre-commit
- **CI/CD**: Ready-to-use GitHub Actions workflows
- **Automated Releases**: Standardized release process with semantic versioning

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

## 📦 Release Process

This project uses an automated release process based on conventional commits:

1. All releases must be created from the `main` branch only
2. Releases are triggered manually through GitHub Actions
3. The version number is automatically determined based on commit messages:
   - `fix:` commits trigger a PATCH version increment (0.0.x)
   - `feat:` commits trigger a MINOR version increment (0.x.0)
   - Commits with `BREAKING CHANGE:` in the body trigger a MAJOR version increment (x.0.0)

### Creating a Release

1. Ensure all your changes are merged to the `main` branch
2. Go to the GitHub repository's "Actions" tab
3. Select the "Release" workflow
4. Click "Run workflow" and select the `main` branch
5. Click "Run workflow" to start the release process

The workflow will automatically:
- Determine the next version based on commit messages
- Update the version in the project files
- Generate/update the CHANGELOG.md file
- Create a git tag
- Create a GitHub release with the changelog

### License

This project is licensed under the terms of the [MIT License](LICENSE).
