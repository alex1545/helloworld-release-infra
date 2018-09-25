#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail
set -o xtrace

# Cleanup remote repositories.
for repo in "$WORKDIR/helloworld" "$WORKDIR/helloworld-release-infra"; do
  cd "$repo"
  git checkout master
  git branch -D "$MYBRANCH"
  git push origin ":$MYBRANCH"
done

# Cleanup local disk.
cd
rm -fr "$WORKDIR"
