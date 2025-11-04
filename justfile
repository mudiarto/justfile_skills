# justfile - Command runner template
# https://github.com/casey/just

# Default recipe to display help information
default:
    @just --list

# Display this help message
help:
    @echo "Available commands:"
    @just --list

# Install project dependencies
install:
    @echo "Installing dependencies..."
    # Add your dependency installation commands here
    # Example: npm install, pip install -r requirements.txt, etc.

# Build the project
build:
    @echo "Building project..."
    # Add your build commands here
    # Example: npm run build, cargo build, go build, etc.

# Run tests
test:
    @echo "Running tests..."
    # Add your test commands here
    # Example: npm test, pytest, cargo test, go test, etc.

# Run linter
lint:
    @echo "Running linter..."
    # Add your linting commands here
    # Example: eslint ., pylint src/, cargo clippy, etc.

# Format code
format:
    @echo "Formatting code..."
    # Add your formatting commands here
    # Example: prettier --write ., black ., cargo fmt, etc.

# Clean build artifacts
clean:
    @echo "Cleaning build artifacts..."
    # Add your clean commands here
    # Example: rm -rf dist/, rm -rf build/, cargo clean, etc.

# Run the development server
dev:
    @echo "Starting development server..."
    # Add your dev server commands here
    # Example: npm run dev, python manage.py runserver, etc.

# Run the production server
run:
    @echo "Running application..."
    # Add your run commands here
    # Example: node dist/index.js, python main.py, ./binary, etc.

# Watch for changes and rebuild
watch:
    @echo "Watching for changes..."
    # Add your watch commands here
    # Example: npm run watch, cargo watch -x build, etc.

# Run all checks (lint, test, build)
check: lint test build
    @echo "All checks passed!"

# Setup the project (install dependencies and build)
setup: install build
    @echo "Project setup complete!"

# Deploy the application
deploy:
    @echo "Deploying application..."
    # Add your deployment commands here
    # Example: ./deploy.sh, npm run deploy, etc.

# Show project information
info:
    @echo "Project: $(basename $(pwd))"
    @echo "Just version: $(just --version)"
    @echo "Working directory: $(pwd)"

# Example of a recipe with parameters
greet name:
    @echo "Hello, {{name}}!"

# Example of a recipe with default parameters
say-hi name="World":
    @echo "Hi, {{name}}!"
