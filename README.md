# release infra for helloworld

This repository has 2 files:

- louhi-config/helloworld/gcb/release.yaml (GCB configuration)
- louhi-config/helloworld/flow.yaml (Louhi Flow configuration)

# Advanced

## Manual test of GCB file
You must have `gcloud` installed and also have a GCP project where you have
permissions to create a new build.

You can manually run a GCB build based on the file `./louhi-config/helloworld/gcb/release.yaml` by running:

```
gcloud container builds submit --no-source --config ./louhi-config/helloworld/gcb/release.yaml --substitutions=_BRANCH=master
```

This will build helloworld from the tip of `master` branch.
