# Write Version to File

A GitHub Action that fetches the latest git tag within a repo and writes this to a file.

## Inputs

### `filename`

**Required** - The filename to write the version tag to. Default `/.VERSION`

## Example usage

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
      id: version
      uses: brettdorrans/write-version-to-file@master
      with:
        filename: '/.VERSION'
```
