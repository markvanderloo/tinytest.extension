# expect-function that extend tinytest.


#' Test for lol
#'
#' Test if a value is equal to \code{"lol"}
#'
#' @param current the output to be tested.
#' 
#' @examples
#' library(tinytest)
#' expect_lol("lol")
#' expect_lol("lulz")
#'
#' @export
expect_lol <- function(current){
  # identical is a safe way of testing since it 
  # always returns a single TRUE or FALSE
  result <- identical(current, "lol")

  # get the call for reporting the result.
  call <- sys.call(sys.parent(1))
  if (result){ # if all is ok, we only need the result and the calll.
    return( tinytest::tinytest(TRUE, call=call) )
  }

  # else: no luck. We try to give an informative message.
  if (!inherits(current, "character")){ # wrong type
    # that means a wrong attribute:
    short <- "attr"
    # let's explain what we expected and what we got.
    long <- sprintf("expected 'character', got %s",class(current)[[1]])
  } else { # correct type
    short <- "data"
    if (length(current) > 1){ # but wrong length
      long <- sprintf("expected 'character' of length 1, got length %d",length(current))
    } else { # correct type and length, but wrong value.
      long <- sprintf("expected %s, got %s", "lol",current)
    }
  }
  tinytest::tinytest(FALSE, call=call, short=short, long=long)

} 


