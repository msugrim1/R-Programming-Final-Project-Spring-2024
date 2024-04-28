#' @title basicCalc
#' @description Performs basic calculations, mainly addition, subtraction,
#' multiplication and division
#' @name basicCalc
#' @param x The value of X
#' @param y The value of Y
#' @examples
#' addition(150,150)


addition <- function(x,y)
{
  result <- x + y

  print("Result: ")
  print(result)
}

subtraction <- function(x,y)
{
  result <- x - y

  print("Result: ")
  print(result)
}

multiplication <- function(x,y)
{
  result <- x * y

  print("Result: ")
  print(result)
}

division <- function(x,y)
{
  result <- x / y

  print("Result: ")
  print(result)
}
