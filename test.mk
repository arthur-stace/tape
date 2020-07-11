default: test



test: backup snapshots find


init:
	@docker-compose --file docker-compose.test.yml run init



snapshots:
	@docker-compose --file docker-compose.test.yml run snapshots



find:
	@docker-compose --file docker-compose.test.yml run find



backup:
	@docker-compose --file docker-compose.test.yml run backup



