#!/bin/bash
echo start
gh auth status
gh --help
gh --version
gh workflow list
gh workflow run release.yml
echo end
