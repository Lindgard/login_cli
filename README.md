# Login CLI

Small C#/.NET CLI starter focused on secure local login flows. The goal is to collect credentials via the terminal, hash and store them locally, and provide simple commands for registering, logging in, and inspecting stored users—while keeping secrets off the wire and ready for later extension into a richer tool or API.

## TODO (initial steps)

- set up CLI entry (e.g., `dotnet new console`) with commands: register, login, list-users
- design a lightweight storage layer (sqlite via EF Core or a local JSON file) with hashed/salted passwords (PBKDF2/Argon2)
- add a password hashing helper and verification routine using a constant-time compare
- load secrets/config via environment variables (e.g., pepper) and optional `appsettings.Development.json`
- add minimal logging and validation (password strength, email format)
- add basic tests covering register/login success and failure paths
