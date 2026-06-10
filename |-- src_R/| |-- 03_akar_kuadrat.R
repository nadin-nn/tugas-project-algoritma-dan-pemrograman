hitung_akar <- function(a, b, c) {
  D <- b^2 - 4*a*c
  if (D < 0) {
    return(list(real = FALSE, x1 = NA, x2 = NA))
  } else if (D == 0) {
    x <- -b / (2*a)
    return(list(real = TRUE, x1 = x, x2 = x))
  } else {
    x1 <- (-b + sqrt(D)) / (2*a)
    x2 <- (-b - sqrt(D)) / (2*a)
    return(list(real = TRUE, x1 = x1, x2 = x2))
  }
}

main <- function() {
  cat("=== Program Akar Persamaan Kuadrat ===\n")
  a <- as.numeric(readline("Masukkan a: "))
  b <- as.numeric(readline("Masukkan b: "))
  c <- as.numeric(readline("Masukkan c: "))
  
  if (any(is.na(c(a, b, c)))) {
    cat("Input harus berupa angka!\n")
    return(invisible(NULL))
  }
  if (a == 0) {
    cat("Error: a tidak boleh 0 (bukan persamaan kuadrat)\n")
    return(invisible(NULL))
  }
  
  hasil <- hitung_akar(a, b, c)
  if (!hasil$real) {
    cat("Persamaan kuadrat hanya memiliki akar-akar imajiner.\n")
  } else if (hasil$x1 == hasil$x2) {
    cat(sprintf("Akar kembar: x = %.3f\n", hasil$x1))
  } else {
    cat(sprintf("Akar-akar real: x1 = %.3f, x2 = %.3f\n", hasil$x1, hasil$x2))
  }
}

main()

# kondisi 1: 2x^2+5x-7
# kondisi 2: 6x^2+5x-20
# kondisi 3: 10x^2+7x-9
