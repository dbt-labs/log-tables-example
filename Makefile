.PHONY: up clean seed send change_emails

up:
	docker-compose up -d database

clean:
	docker-compose down

seed:
	scripts/run_sql scripts/drop_schema.sql
	dbt --debug seed --drop-existing
	scripts/run_sql scripts/fix_seed.sql

send:
	scripts/run_sql scripts/add_sends.sql

change_emails:
	scripts/run_sql scripts/change_emails.sql

archive:
	dbt --debug archive

build: seed
	$(MAKE) send
	$(MAKE) archive
	$(MAKE) send
	$(MAKE) change_emails
	$(MAKE) archive
	$(MAKE) send
	$(MAKE) archive
	$(MAKE) send
	$(MAKE) change_emails
	$(MAKE) archive
	$(MAKE) send
	$(MAKE) archive
	$(MAKE) send
	$(MAKE) change_emails
	$(MAKE) archive
	$(MAKE) send
	$(MAKE) archive
	$(MAKE) send
