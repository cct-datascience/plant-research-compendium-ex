SE <- function(x) {
  sd(x, na.rm = TRUE)/sum(!is.na(x))
}