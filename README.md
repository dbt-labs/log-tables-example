# log-tables-example

_[Read the blog post on Medium](https://medium.com/@connormcarthur/analytics-playbook-log-tables-705ea8373425)_

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
$ make build
```

### Usage

You can connect to the installed Docker postgres with:

```bash
PGPASS=password psql -Uroot -hlocalhost log_tables
```

The Makefile has a few useful commands built in:

```bash
make seed # re-seed the database
make send # add a send for each user using their current email address
make change_emails # update the email address for each user
```

To archive the current state of the users table to the log table, run:

```bash
dbt archive
```

---

Made with love by [Fishtown Analytics](http://fishtownanalytics.com)
