# foreman_envsync

## Table of Contents

1. [Overview](#overview)
1. [Description](#description)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)

## Overview

Manage `foreman_envsync`.

## Description

This module installs a wrapper script to execute
[`foreman_envsync`](https://github.com/lsst-it/foreman_envsync) as an OCI
container.  The default OCI image used is
[`ghcr.io/lsst-it/foreman_envsync`](ghcr.io/lsst-it/foreman_envsync).

## Usage

### Default version

```puppet
include foreman_envsync
```

### Explicit Version

```puppet
class { 'foreman_envsync':
  image    => 'foo/bar',
  tag      => 'baz',
}
```

## Reference

See [REFERENCE](REFERENCE.md)
