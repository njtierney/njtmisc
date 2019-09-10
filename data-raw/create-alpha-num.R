# code to create alpha_num - a dataset that translates alphabet letters to
# numbers
l_letters <- setNames(seq_along(letters), letters)
L_LETTERS <- setNames(seq_along(LETTERS), LETTERS)
alpha_num <- c(l_letters, L_LETTERS)

usethis::use_data(alpha_num)
