# Project/Repo Title

Template Repository for the Boutros Lab general project repos. Describe a simple overview of use/purpose here.

## Description

An in-depth paragraph about your project and overview of use.

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
