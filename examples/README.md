# Justfile Examples

This directory contains example justfiles tailored for different programming languages and frameworks.

## Available Examples

### Node.js/JavaScript (`nodejs-justfile`)
For JavaScript/TypeScript projects using npm.

**Usage:**
```bash
cp examples/nodejs-justfile justfile
```

**Commands included:**
- `npm install`, `npm run build`, `npm test`
- `npm run dev`, `npm run lint`, `npm run format`

---

### Python (`python-justfile`)
For Python projects with pytest, black, pylint, and standard Python tools.

**Usage:**
```bash
cp examples/python-justfile justfile
```

**Commands included:**
- `pip install`, `pytest`, `black`, `pylint`, `flake8`
- Virtual environment creation
- Package building and deployment

---

### Rust (`rust-justfile`)
For Rust projects using cargo.

**Usage:**
```bash
cp examples/rust-justfile justfile
```

**Commands included:**
- `cargo build`, `cargo test`, `cargo clippy`
- `cargo watch` for development
- Security audit and benchmarking

---

### Go (`go-justfile`)
For Go projects with standard Go tooling.

**Usage:**
```bash
cp examples/go-justfile justfile
```

**Commands included:**
- `go build`, `go test`, `golangci-lint`
- Cross-platform builds
- Test coverage reporting
- Race condition detection

---

## How to Use

1. **Choose the appropriate example** for your tech stack
2. **Copy it to your project root** as `justfile`:
   ```bash
   cp examples/<language>-justfile justfile
   ```
3. **Customize** the commands to match your project structure
4. **Run commands** using `just <command>`

## Customization Tips

- Modify paths to match your project structure (e.g., `src/`, `cmd/`, etc.)
- Add project-specific commands as needed
- Remove commands you don't use
- Chain commands together for common workflows

## Testing Your Justfile

After customizing, test your justfile:

```bash
# List all available commands
just --list

# Test individual commands
just build
just test
just check
```
