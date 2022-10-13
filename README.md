# Demonstration schemas for ExperimentHub

This repository contains JSON schemas for Bioconductor objects with ExperimentHub metadata.
It is intended to demonstrate how the ArtifactDB framework can be easily customized for different applications.

See the [Pages site](https://artifactdb.github.io/ExperimentHub-schemas) for all available schemas in human-readable form.

Check the [Releases page](https://github.com/ArtifactDB/ExperimentHub-schemas/releases) for versioned releases of the resolved schemas.

For developers: we have followed the [instructions here](https://github.com/ArtifactDB/BiocObjectSchemas) for customizing the Bioconductor schemas.
Changes include:

- Introduction of ExperimentHub metadata requirements to the [common subschema](raw/_common/v1.json).
- Add a [script](customize.sh) to switch the array restoration command to use the [calcite R package](https://github.com/ArtifactDb/calcite-R).
- Added an extra step in the [workflow](.github/workflows/build.yaml) to run the aforementioned script.
