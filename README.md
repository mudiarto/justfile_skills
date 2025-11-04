# justfile_skills

A comprehensive justfile template paired with Claude Skills for efficient project management.

## Overview

This repository provides a ready-to-use [justfile](https://github.com/casey/just) template with common development commands, along with Claude Skills configuration to help AI assistants work seamlessly with your project.

## What's Included

### 📄 Justfile Template

A complete `justfile` with commonly used commands:

- **Core Commands**: `help`, `info`, default command listing
- **Development**: `install`, `build`, `test`, `lint`, `format`, `clean`
- **Running**: `dev`, `run`, `watch`
- **Workflows**: `check` (runs all checks), `setup` (installs and builds), `deploy`
- **Examples**: Parameterized recipes like `greet` and `say-hi`

### 🤖 Claude Skills

A Claude Skill configuration (`.github/skills/justfile.md`) that enables Claude AI to:
- Understand available justfile commands
- Suggest appropriate commands based on user requests
- Execute project tasks using the justfile

## Getting Started

### Prerequisites

Install `just` command runner:

```bash
# macOS
brew install just

# Linux
curl --proto '=https' --tlsv1.2 -sSf https://just.systems/install.sh | bash -s -- --to /usr/local/bin

# Windows
scoop install just
# or
choco install just

# Cargo (all platforms)
cargo install just
```

### Using This Template

1. **Copy the justfile to your project:**
   ```bash
   curl -O https://raw.githubusercontent.com/mudiarto/justfile_skills/main/justfile
   ```

2. **Customize it for your project:**
   - Edit the commands to match your project's build system
   - Add project-specific recipes
   - Remove commands you don't need

3. **Copy the Claude Skill (optional):**
   ```bash
   mkdir -p .github/skills
   curl -o .github/skills/justfile.md https://raw.githubusercontent.com/mudiarto/justfile_skills/main/.github/skills/justfile.md
   ```

### Using the Justfile

Display all available commands:
```bash
just
```

Run specific commands:
```bash
just build        # Build the project
just test         # Run tests
just check        # Run lint, test, and build
just setup        # Install dependencies and build
```

Commands with parameters:
```bash
just greet Alice           # Prints "Hello, Alice!"
just say-hi Bob            # Prints "Hi, Bob!"
just say-hi                # Prints "Hi, World!" (uses default)
```

## Customization Guide

### Adapting for Your Tech Stack

#### Node.js/JavaScript Project
```just
install:
    npm install

build:
    npm run build

test:
    npm test

lint:
    npm run lint

dev:
    npm run dev
```

#### Python Project
```just
install:
    pip install -r requirements.txt

build:
    python setup.py build

test:
    pytest

lint:
    pylint src/

format:
    black .
```

#### Rust Project
```just
install:
    cargo fetch

build:
    cargo build --release

test:
    cargo test

lint:
    cargo clippy

format:
    cargo fmt
```

#### Go Project
```just
install:
    go mod download

build:
    go build -o bin/app

test:
    go test ./...

lint:
    golangci-lint run
```

## Claude Skills Integration

When working with Claude AI in a repository that includes the justfile skill:

1. Claude can understand and suggest justfile commands
2. You can ask Claude to: "build the project", "run tests", "setup the environment"
3. Claude will use the appropriate `just` commands automatically

Example interactions:
- **You**: "Can you build and test the project?"
- **Claude**: *Runs `just build` and `just test`*

- **You**: "Setup my development environment"
- **Claude**: *Runs `just setup`*

## Features

- ✅ Ready-to-use template with sensible defaults
- ✅ Well-commented for easy understanding
- ✅ Organized by command categories
- ✅ Examples of parameterized recipes
- ✅ Claude AI integration for seamless workflow
- ✅ Works with any programming language or framework

## Contributing

Feel free to submit issues or pull requests to improve the template!

## Resources

- [just documentation](https://just.systems/man/en/)
- [Claude Skills documentation](https://docs.claude.com/en/docs/claude-code/skills)
- [justfile examples](https://github.com/casey/just/tree/master/examples)

## License

This template is provided as-is for anyone to use and modify.
