
<!-- README.md is generated from README.Rmd. Please edit that file -->

# njtmisc

<!-- badges: start -->

<!-- badges: end -->

The goal of njtmisc is a living space for various miscellaneous
functions I write.

## Installation

Install the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("njtierney/njtmisc")
```

## Example

``` r
library(njtmisc)
n_formals(lm)
#> [1] 14
pkgv(base)
#> [1] '3.6.1'
```

convert alphabet to numbers

``` r
alpha_to_num(c("A","A","D","E","z", "Z","a"))
#> [1]  1  1  4  5 26 26  1
alpha_to_num(sample(letters))
#>  [1]  7  2 24  4 26 25 12  3  5 11  9 18  6 19 21 20 13 22 15 23 16 14 17
#> [24]  8  1 10
alpha_to_num(letters)
#>  [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23
#> [24] 24 25 26
alpha_to_num(LETTERS)
#>  [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23
#> [24] 24 25 26
```

convert numbers to alphabet

``` r
num_to_alpha(1:26)
#>  [1] "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q"
#> [18] "R" "S" "T" "U" "V" "W" "X" "Y" "Z"
num_to_alpha(sample(1:26))
#>  [1] "Q" "Y" "C" "U" "E" "M" "N" "L" "H" "X" "T" "O" "B" "S" "F" "K" "W"
#> [18] "D" "Z" "J" "A" "G" "P" "V" "I" "R"

num_to_alpha(1:26, upper = FALSE)
#>  [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q"
#> [18] "r" "s" "t" "u" "v" "w" "x" "y" "z"
num_to_alpha(sample(1:26), upper = FALSE)
#>  [1] "j" "y" "u" "f" "x" "r" "s" "i" "t" "b" "d" "m" "o" "p" "z" "v" "n"
#> [18] "a" "g" "l" "c" "h" "k" "e" "w" "q"
```
