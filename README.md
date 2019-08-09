# tinytest.extension

Example/test package extending R package tinytest

This is a very simple package, offering extra `expect` functions that can be
used with the the [tinytest](https://cran.r-project.org/package=tinytest)
package.


For an example of a package that uses this package see [uses.tinytest.extension](https://github.com/markvanderloo/tinytest.extension).


This package repository is aimed only to be used as a template for package
authors who wish to extend `tinytest`, and as a testing ground for tinytest
itself.

For a description of how to build a `tinytest` extension package, see
```r
library(tinytest)
?register_tinytest_extension
```


### Install this package

```r
remotes::install_github("markvanderloo/tinytest.extension/pkg")
```

### Obtain source, build, test

```bash
git clone https://github.com/markvanderloo/tinytest.extension
cd tinytest.extension
```

Run tests:

```bash
make test
```

Build, run `R CMD check`

```bash
make check
```

Build, install
```bash
make install
```





