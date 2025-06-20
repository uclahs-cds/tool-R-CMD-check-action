# R CMD Check GitHub Action

Runs `R CMD check` for testing and validating R packages

## Description

This action runs a comprehensive `R CMD check`, including all CRAN checks and running all tests. It caches the latest version of R, as well as all package dependencies for the project. Packages that have not been updated since the last workflow run will not be reinstalled. This can reduce the action's runtime by about an order of magnitude.

## Using the Action
Simply add the step `uses: uclahs-cds/tool-R-CMD-check-action@v1` to a repository workflow. For example:

```
---
name: R-CMD-check (r-lib)
'on':
  pull_request:
    branches:
      - main
jobs:
  R-CMD-check:
    runs-on: ubuntu-latest
    steps:
      - uses: uclahs-cds/tool-R-CMD-check-action@stable
```

## Usage

To test your R package with this action, simply add a step with `uses: uclahs-cds/tool-R-CMD-check-action@v2` to your GitHub CI/CD workflow. See the [R package template](https://github.com/uclahs-cds/template-R-package/blob/main/.github/workflows/R-CMD-check.yaml) for a full example.

Some packages require OS-level dependencies to work properly. Simply add a step to your workflow to install these dependencies before running this `R CMD check` action. See [BoutrosLab.plotting.general](https://github.com/uclahs-cds/package-BoutrosLab-plotting-general/blob/main/.github/workflows/R-CMD-check.yaml) for a full example.

```
- name: Install system graphics dependencies
  run: |
    sudo apt-get install -y \
      libjpeg-dev \
      libpng-dev
```

## License

Author: Name1(username1@mednet.ucla.edu), Name2(username2@mednet.ucla.edu)

[This project] is licensed under the GNU General Public License version 2. See the file LICENSE.md for the terms of the GNU GPL license.

<one line to give the project/program's name and a brief idea of what it does.>

Copyright (C) 2021 University of California Los Angeles ("Boutros Lab") All rights reserved.

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
