![Haskell CI](https://github.com/standardsemiconductor/bindings-libpci/workflows/Haskell%20CI/badge.svg?branch=main)
# bindings-libpci
Low level bindings to [libpci](https://github.com/pciutils/pciutils)
See also the pciutils [homepage](https://mj.ucw.cz/sw/pciutils/).

This package uses [bindings-DSL](http://hackage.haskell.org/package/bindings-DSL) and conforms to its naming convention.

For a higher-level and more Haskell friendly binding (which uses this package) see the [pci](https://github.com/standardsemiconductor/pci) package.

## Installing
Make sure the `libpci` C library is installed:
  * *Ubuntu Linux*: `sudo apt install libpci-dev`
