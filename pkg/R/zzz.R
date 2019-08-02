

.onLoad <- function(libname, pkgname){
  tinytest::register_tinytest_extension("tinytest.extension",c("expect_lol"))
}

