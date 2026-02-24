
# Schema Versioning Demo

A practical demonstration of database schema versioning where the diagram is the source of truth and SQL, Docker, and documentation are generated from it.

---

## The problem

Database diagrams usually become outdated.

They are created during the design phase, but as schemas evolve:
- hotfixes happen
- migrations accumulate
- delivery pressure increases

The code moves forward, but the diagram stays behind.

At some point, the ERD no longer represents production, and teams stop trusting it.

---

## The idea

Instead of maintaining documentation manually, this repository demonstrates a workflow where:

- A single model is the source of truth  
- SQL schemas are generated from that model  
- Docker environments are created automatically  
- Documentation and diagrams stay in sync  
- Everything is versioned in GitHub  

No parallel artifacts. No stale documentation.

---

## Repository structure

```

examples/
└── ecommerce/
├── model/      # Source model (ForgeSQL export)
├── sql/        # Generated SQL (DDL and seed)
├── docker/     # Docker Compose environment
└── docs/       # Diagram image and design notes

````

Each example is designed to be runnable and easy to understand.

---

## Quick start (PostgreSQL)

Start the database locally using Docker:

```bash
cd examples/ecommerce/docker
docker compose up -d
````

Connection details:

* Host: localhost
* Port: 5432
* User: postgres
* Password: postgres
* Database: app

After startup, the schema and seed data will already be applied.

---

## Example contents

Inside each example folder:

* `model/`
  The original source model used to generate all artifacts.

* `sql/`
  Generated SQL files, including schema definition and seed data.

* `docker/`
  Docker Compose setup and initialization scripts.

* `docs/`
  Diagram export and short documentation describing key decisions.

---

## Design goals

This repository focuses on:

* Keeping schemas and diagrams aligned with reality
* Making database structure easy to review and reason about
* Treating the schema as a first-class, versioned artifact
* Reducing technical debt caused by outdated documentation

---

## How it was generated

The examples in this repository were generated from a single visual model using **ForgeSQL**:

[https://forgesql.com](https://forgesql.com)

The goal is not to promote a tool, but to demonstrate a workflow where:

* the model drives the implementation
* documentation does not depend on manual updates

---

## Who this is for

This repository is useful for:

* backend developers
* database engineers
* software architects
* teams dealing with schema evolution
* anyone frustrated with outdated ER diagrams

---

## License

MIT


