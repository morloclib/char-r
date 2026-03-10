# This is HORRIBLE code
# R really doesn't do characters so perhaps we shouldn't even define this module?

morloc_isUpper <- function(c) {
  ch <- intToUtf8(c)
  grepl("[A-Z]", ch)
}

morloc_isLower <- function(c) {
  ch <- intToUtf8(c)
  grepl("[a-z]", ch)
}

morloc_isAlpha <- function(c) {
  ch <- intToUtf8(c)
  grepl("[A-Za-z]", ch)
}

morloc_isDigit <- function(c) {
  ch <- intToUtf8(c)
  grepl("[0-9]", ch)
}

morloc_isAlphaNum <- function(c) {
  ch <- intToUtf8(c)
  grepl("[A-Za-z0-9]", ch)
}

morloc_isSpace <- function(c) {
  c %in% c(32L, 9L, 10L, 11L, 12L, 13L)
}

morloc_isPunct <- function(c) {
  ch <- intToUtf8(c)
  grepl("[[:punct:]]", ch)
}

morloc_isPrint <- function(c) {
  c >= 32L && c <= 126L
}

morloc_isControl <- function(c) {
  c < 32L || c == 127L
}

morloc_toUpperChar <- function(c) {
  if (c >= 97L && c <= 122L) {
    return(c - 32L)
  }
  c
}

morloc_toLowerChar <- function(c) {
  if (c >= 65L && c <= 90L) {
    return(c + 32L)
  }
  c
}

morloc_digitToInt <- function(c) {
  c - 48L
}

morloc_intToDigit <- function(n) {
  n + 48L
}

morloc_ord <- function(s) {
  utf8ToInt(s)[1]
}

morloc_chr <- function(c) {
  intToUtf8(c)
}

morloc_encode <- function(s) {
  as.list(utf8ToInt(s))
}

morloc_decode <- function(xs) {
  intToUtf8(unlist(xs))
}
