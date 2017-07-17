.PHONY: up clean seed send change_emails

up:
	docker-compose up -d database

clean:
	docker-compose down

seed:
	scripts/run_sql scripts/drop_schema.sql
	dbt --debug seed --drop-existing
