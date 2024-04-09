#!/bin/bash
# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: MIT-0

# This script is used to build a lambda layer containing chrome-aws-lambda, allowing the use of Puppeteer in a lambda
set -e

mkdir -p chromelayer/nodejs/node_modules/
cd chromelayer/nodejs && npm install @sparticuz/chromium@110.0.0 puppeteer-core@19.6.3 --no-bin-links --no-optional --no-package-lock --no-save --no-shrinkwrap && cd -
