# ***Archival Notice***
This repository has been archived.

As a result all of its historical issues and PRs have been closed.

Please *do not clone* this repo without understanding the risk in doing so:
- It may have unaddressed security vulnerabilities
- It may have unaddressed bugs

<details>
   <summary>Click for historical readme</summary>

# log-tables-example

_[Read the blog post on Medium](https://blog.fishtownanalytics.com/analytics-playbook-log-tables-7df0e6aacb42)_

Automatically create log tables with [dbt](https://dbt.readme.io).

![Example](assets/flow.gif)

### Installation

This example requires [Docker](https://www.docker.com/) and Make.

#### Clone the repo

```bash
$ git clone https://github.com/fishtown-analytics/log-tables-example.git
```

#### Setup

Inside the repo, run:

```bash
$ make up
$ make seed
```

### Usage

You can connect to the installed Docker postgres with:

```bash
PGPASS=password psql -Uroot -hlocalhost log_tables
```

Or run sql with `./scripts/run_sql_cmd`

To archive the current state of the users table to the log table, run:

```bash
dbt archive
```

---

Made with love by [Fishtown Analytics](http://fishtownanalytics.com)

