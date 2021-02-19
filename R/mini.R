#' @title mini
#'
#' @description tests R fortran
#'
#' @param x
#'
#' @return 2*x
#'
#' @useDynLib mini, .registration = TRUE
#'
#' @export
herbert <- function(ain){

  Klein = .Fortran(
    "klein",
    a = as.integer(ain)
  )

  return(Klein$a)
}

# subroutine klein(a)
#
# implicit none
#
# integer :: a
#
# a = 2 * a
#
# end subroutine

