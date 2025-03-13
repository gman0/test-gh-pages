#!/bin/bash

set -xeu

REPO_ROOT="$(git rev-parse --show-toplevel)"
KCP_CONTRIB_REPO="${REPO_ROOT}/kcp-contrib"
WORKSHOP_ROOT="${KCP_CONTRIB_REPO}/20250401-kubecon-london/workshop"

cp "${WORKSHOP_ROOT}/README.md" "${REPO_ROOT}/content/_index.md"

cd "${WORKSHOP_ROOT}"
for chapter in 0*-*; do
    cp "./${chapter}/README.md" "${REPO_ROOT}/content/docs/${chapter}.md"
done
