# Login CLI

Small C#/.NET CLI starter focused on secure local login flows. The goal is to collect credentials via the terminal, hash and store them locally, and provide simple commands for registering, logging in, and inspecting stored users—while keeping secrets off the wire and ready for later extension into a richer tool or API.

## TODO (initial steps)

- set up CLI entry (e.g., `dotnet new console`) with commands: register, login, list-users
- design a lightweight storage layer (sqlite via EF Core or a local JSON file) with hashed/salted passwords (PBKDF2/Argon2)
- add a password hashing helper and verification routine using a constant-time compare
- load secrets/config via environment variables (e.g., pepper) and optional `appsettings.Development.json`
- add minimal logging and validation (password strength, email format)
- add basic tests covering register/login success and failure paths

## Getting started

Clone the repo:

```sh
git clone https://github.com/your-org/LoginApi.git
cd LoginApi
```

### Run with Nix (recommended)

Requires Nix with flakes enabled.

```sh
nix develop
dotnet --version   # verify .NET SDK from the dev shell
dotnet run -- --help
```

### Run without Nix

Prereq: .NET SDK 9+ installed on your system (or 10 if available).

```sh
dotnet --version   # confirm SDK is available
dotnet run -- --help
```

### Add Spectre.Console (for TUI/CLI rendering)

Inside your environment (Nix shell or system SDK):

```sh
dotnet add package Spectre.Console
```
