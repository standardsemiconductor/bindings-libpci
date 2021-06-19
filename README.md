# bindings-libpci
![Haskell CI](https://github.com/standardsemiconductor/bindings-libpci/workflows/Haskell%20CI/badge.svg?branch=main)
[![Hackage][hackage-badge]][hackage]
[![Hackage Dependencies][hackage-deps-badge]][hackage-deps]

Low level bindings to [libpci](https://github.com/pciutils/pciutils)
See also the pciutils [homepage](https://mj.ucw.cz/sw/pciutils/).

This package uses [bindings-DSL](http://hackage.haskell.org/package/bindings-DSL) and conforms to its naming convention.

For a higher-level and more Haskell friendly example (which uses this package) see the [pci](https://github.com/standardsemiconductor/pci) repo.

## Prerequisite
Make sure the `libpci` C library is installed:
  * *Ubuntu Linux*: `sudo apt install libpci-dev`
  * *Arch Linux*: `sudo pacman -S pciutils`

## Build
```
cabal build -flibpci-vvv
```

[hackage]:            <https://hackage.haskell.org/package/bindings-libpci>
[hackage-badge]:      <https://img.shields.io/hackage/v/bindings-libpci.svg?color=success>
[hackage-deps-badge]: <https://img.shields.io/hackage-deps/v/bindings-libpci.svg>
[hackage-deps]:       <https://packdeps.haskellers.com/feed?needle=bindings-libpci>
