#!make
SHELL := /usr/bin/env bash

include  .env
export

start-local-jupyter:
	nohup jupyter lab --config=./jupyter_lab_config.py > /dev/null 2>&1 &
	sleep 10s
	jupyter lab list

run-qgis:
	$(QGIS_PATH) --profile $(QGIS_PROFILE_NAME)

create-plugin-dir-symlink:
	ln -s $(PWD)/basemap_loader $(QGIS_PROFILE_PATH)/python/plugins/basemap_loader

lint:
	ruff check --select I --fix basemap_loader/
	ruff format --verbose basemap_loader/

setup-precommit:
	pre-commit clean > /dev/null
	pre-commit install --install-hooks > /dev/null
	pre-commit run --all-files || true

echo:
	echo $(QGIS_PROFILE_PATH)
