# first-qgis-plugin


## Set up dev environment

Create conda environment using:

```bash
micromamba-shell

micromamba create -f environment.yaml
```

Activate environment using:

```bash
micromamba activate qgis-plugin-dev
```

Run qgis using the make command:

```
make run-qgis
```

Install the plugin reloader plugin.

Create a symlink for the plugin folder to the `plugins` folder in the profile folder using the
make command:

```
make create-plugin-dir-symlink
```

Setup pre-commit using:

```bash
make setup-precommit
```

Lint files using:

```
make lint-plugin
```



# DEV environment using conda


# DEV environment using qgis


Profile folder ? how to set up custom profiel
