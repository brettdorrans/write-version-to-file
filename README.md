# Write Version to File

A GitHub Action that fetches the latest git tag within a repo and writes this to a file.

## Inputs

### `filename`

**Required** - The filename to write the version tag to.

### `placeholder`

**Optional** - The filename to write the version tag to. Defaults to `${VERSION}`

## Example usage

Commit a file named `.VERSION` containing `${VERSION}` to the root of your repository. This string will be replaced with the latest git tag in the CI pipeline.

```
name: Write Version to File
on:
  push:
    branches:
      - master

jobs:
  write-version:
    runs-on: ubuntu-latest
    name: Write Version to File
    steps:
    - uses: actions/checkout@master
    - name: Update version
      uses: brettdorrans/write-version-to-file@master
      with:
        filename: '/.VERSION'
        placeholder: '${VERSION}'
```
