# Zinc HTTP Components [![Build Status](https://github.com/GsDevKit/zinc/actions/workflows/ci.yml/badge.svg?branch=gs_master)](https://github.com/GsDevKit/zinc/actions/workflows/ci.yml)

Zinc HTTP Components is an open-source Smalltalk framework 
to deal with the HTTP networking protocol.


<http://zn.stfx.eu>


## Please read the [Zinc HTTP Components](https://github.com/svenvc/zinc/blob/master/zinc-http-components-paper.md) paper


*Sven Van Caekenberghe* 


[MIT Licensed](https://github.com/svenvc/zinc/blob/master/license.txt)

## Loading into GemStone

1. Upgrade to the latest version of Metacello and Grease using [GsUpgrader](https://github.com/GsDevKit/gsUpgrader#gsupgrader-):

```Smalltalk
Gofer new
  package: 'GsUpgrader-Core';
  url: 'http://ss3.gemtalksystems.com/ss/gsUpgrader';
  load.
(Smalltalk at: #GsUpgrader) upgradeGrease.
```

2. Install Zinc:

  Install the master HEAD version:
  ```Smalltalk
  GsDeployer deploy: [
    Metacello new
      baseline: 'ZincHTTPComponents';
      repository: 'github://GsDevKit/zinc:gs_master/repository';
      onLock: [:ex | ex honor ];
      load: 'Tests' ].
  ```

  Install a particular version, e.g. 2.4.3 (see [Releases](https://github.com/GsDevKit/zinc/releases) for a list of possible versions):
  ```Smalltalk
  GsDeployer deploy: [
    Metacello new
      baseline: 'ZincHTTPComponents';
      repository: 'github://GsDevKit/zinc:2.4.3/repository';
      onLock: [:ex | ex honor ];
      load: 'Tests' ].
  ```


## Travis Status [![Build Status](https://travis-ci.org/GsDevKit/zinc.png?branch=gs_master)](https://travis-ci.org/GsDevKit/zinc)
