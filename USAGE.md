# Usage Guide

This guide explains how to use the justfile template and Claude Skills integration.

## Quick Start

1. **Install Just**
   ```bash
   # macOS
   brew install just
   
   # Linux
   curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to /usr/local/bin
   
   # Cargo (all platforms)
   cargo install just
   ```

2. **Copy the template to your project**
   ```bash
   # Copy the main template
   curl -O https://raw.githubusercontent.com/mudiarto/justfile_skills/main/justfile
   
   # OR use a language-specific example
   curl -o justfile https://raw.githubusercontent.com/mudiarto/justfile_skills/main/examples/nodejs-justfile
   ```

3. **List available commands**
   ```bash
   just
   # or
   just --list
   ```

## Common Workflows

### Setting up a new project
```bash
just setup  # Installs dependencies and builds the project
```

### Daily development workflow
```bash
just dev    # Start development server
just watch  # Watch for changes and rebuild
```

### Before committing code
```bash
just check  # Runs lint, test, and build
```

### Deploying
```bash
just deploy  # Deploy the application
```

## Working with Claude AI

When you have the Claude Skills file (`.github/skills/justfile.md`) in your repository, Claude AI can automatically:

1. **Understand your project commands**
   - "What commands are available?" → Claude shows all `just` commands
   - "How do I build this project?" → Claude suggests `just build`

2. **Execute tasks**
   - "Build and test the project" → Claude runs `just build` and `just test`
   - "Setup my environment" → Claude runs `just setup`
   - "Check if everything works" → Claude runs `just check`

3. **Suggest appropriate workflows**
   - "I want to start developing" → Claude suggests `just dev` or `just watch`
   - "Clean up my build" → Claude runs `just clean`

## Customizing the Justfile

### Adding a new command
```just
# My custom command
my-command:
    @echo "Running my custom command"
    # Add your commands here
```

### Command with parameters
```just
# Deploy to specific environment
deploy-to env:
    @echo "Deploying to {{env}}"
    ./deploy.sh {{env}}

# Usage: just deploy-to staging
```

### Command with default parameters
```just
# Run with specific port (default: 3000)
serve port="3000":
    @echo "Starting server on port {{port}}"
    npm start -- --port {{port}}

# Usage: just serve
# Usage: just serve 8080
```

### Chaining commands
```just
# Full workflow: lint, test, build, deploy
full-deploy: lint test build deploy
    @echo "Full deployment complete!"
```

### Conditional commands
```just
# Build for different environments
build-prod:
    NODE_ENV=production npm run build

build-dev:
    NODE_ENV=development npm run build
```

## Tips and Best Practices

1. **Keep commands simple** - Each command should do one thing well
2. **Use `@` prefix** - Suppress command echo with `@` for cleaner output
3. **Add comments** - Use `#` to document what each command does
4. **Provide defaults** - Use default parameters for flexibility
5. **Chain commands** - Create composite commands for common workflows
6. **Document parameters** - Make it clear what parameters commands accept

## Examples by Language

### Node.js
```just
dev:
    npm run dev

build:
    npm run build

test:
    npm test
```

### Python
```just
dev:
    python -m src.main

test:
    pytest

format:
    black . && isort .
```

### Rust
```just
dev:
    cargo watch -x run

build:
    cargo build --release

test:
    cargo test
```

### Go
```just
dev:
    go run ./cmd/app

build:
    go build -o bin/app ./cmd/app

test:
    go test ./...
```

## Troubleshooting

### Command not found
```bash
# Make sure just is installed
just --version

# If not, install it (see Quick Start section)
```

### Justfile syntax error
```bash
# Validate justfile syntax
just --summary

# Check for indentation issues (use tabs, not spaces)
```

### Command fails
```bash
# Run with verbose output
just --verbose <command>

# Show what would be executed without running
just --dry-run <command>
```

## Additional Resources

- [Just Manual](https://just.systems/man/en/)
- [Just GitHub Repository](https://github.com/casey/just)
- [Claude Skills Documentation](https://docs.claude.com/en/docs/claude-code/skills)
