.PHONY: help install activate pre-commit setup-pre-commit pre-commit-autoupdate tests coverage clean

help: ## Display this help message
	@grep -E '^[a-zA-Z_-]+:.*?## ' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "} ; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

install: ## Install dependencies
	uv sync

pre-commit: ## Run pre-commit
	uv run pre-commit run --all-files

setup-pre-commit: ## Setup pre-commit
	uv run pre-commit install --hook-type commit-msg --hook-type pre-push

pre-commit-autoupdate: ## Update pre-commit hooks
	uv run pre-commit autoupdate

tests: ## Run tests
	uv run pytest

coverage: ## Run tests with coverage
	uv run pytest --cov=. --cov-report=html

clean: ## Clean build artifacts and caches
	rm -rf .mypy_cache .pytest_cache __pycache__ packages/*/__pycache__ \
		packages/*/*.egg-info dist build *.egg-info .ruff_cache .coverage \
		htmlcov
