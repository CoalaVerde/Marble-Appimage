#!/bin/bash
OWN_REPO="https://api.github.com/repositories/1283148152/releases/latest"
MARBLE_REPO="https://api.github.com/repositories/1004717126/releases/latest"
OWN_DATE="$(curl $OWN_REPO | grep published_at | sed -n 's/.*"published_at": "\(.*\)".*/\1/p')"
MARBLE_DATE="$(curl $MARBLE_REPO | grep published_at | sed -n 's/.*"published_at": "\(.*\)".*/\1/p')"
echo "OWN: $OWN_DATE"
echo "MARBLE: $MARBLE_DATE"
OWN_DATE=$(date -d $OWN_DATE +%s)
MARBLE_DATE=$(date -d $MARBLE_DATE +%s)
if [ "$MARBLE_DATE" -gt "$OWN_DATE" ]; then
    echo "The release is outdated; Running release.yml" 
    gh workflow run release.yml --ref $env:GITHUB_REF --repo $env:GITHUB_REPOSITORY
else
    echo "The release is up to date"
fi
