signed.log10 <-
function(x) {
  ifelse(abs(x) <= 1, 0, sign(x) * log10(abs(x)))
}
