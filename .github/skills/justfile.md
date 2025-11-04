# Justfile Commands

This skill helps you work with justfile commands in this project.

## Available Commands

You can use the following `just` commands to manage this project:

### Core Commands
- `just` or `just default` - Display list of available commands
- `just help` - Display help information
- `just info` - Show project information

### Development Commands
- `just install` - Install project dependencies
- `just build` - Build the project
- `just test` - Run tests
- `just lint` - Run linter
- `just format` - Format code
- `just clean` - Clean build artifacts

### Running Commands
- `just dev` - Start development server
- `just run` - Run the production application
- `just watch` - Watch for changes and rebuild

### Workflow Commands
- `just check` - Run all checks (lint, test, build)
- `just setup` - Setup the project (install and build)
- `just deploy` - Deploy the application

### Example Commands
- `just greet <name>` - Greet someone by name
- `just say-hi [name]` - Say hi (defaults to "World" if no name provided)

## Usage

When a user asks you to perform project-related tasks, you should:

1. **Build the project**: Use `just build`
2. **Run tests**: Use `just test`
3. **Check code quality**: Use `just lint` or `just check`
4. **Setup a new environment**: Use `just setup`
5. **Start development**: Use `just dev`
6. **Clean up**: Use `just clean`

## Examples

- User: "Build the project" → Run `just build`
- User: "Run the tests" → Run `just test`
- User: "Check if everything is working" → Run `just check`
- User: "Setup my environment" → Run `just setup`
- User: "Clean build files" → Run `just clean`

## Notes

- All commands are defined in the `justfile` at the root of the repository
- The justfile is a template and should be customized for your specific project
- Commands starting with `@` suppress the command echo, showing only output
- You can chain commands together, like `just install build test`
