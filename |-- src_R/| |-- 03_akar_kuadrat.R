library(methods)

hitung_akar <- function(a, b, c) {
  # Menghitung diskriminan
  D <- b^2 - 4 * a * c
  
  if (D < 0) {
    return(list(x1 = NULL, x2 = NULL, real = FALSE)) # imajiner
  } else if (D == 0) {
    x <- -b / (2 * a)
    return(list(x1 = x, x2 = x, real = TRUE))
  } else {
    x1 <- (-b + sqrt(D)) / (2 * a)
    x2 <- (-b - sqrt(D)) / (2 * a)
    return(list(x1 = x1, x2 = x2, real = TRUE))
  }
}

main <- function() {
  cat("=== Program Akar Persamaan Kuadrat ===\n")
  
  # Membaca input dari pengguna
  a <- as.numeric(readline(prompt = "Masukkan a: "))
  b <- as.numeric(readline(prompt = "Masukkan b: "))
  c <- as.numeric(readline(prompt = "Masukkan c: "))
  
  # Validasi input harus berupa angka (bukan NA)
  if (is.na(a) || is.na(b) || is.na(c)) {
    cat("Input harus berupa angka!\n")
    return()
  }
  
  # Validasi nilai a tidak boleh 0
  if (a == 0) {
    cat("Error: a tidak boleh 0 (bukan persamaan kuadrat)\n")
    return()
  }
  
  # Memanggil fungsi hitung_akar
  hasil <- hitung_akar(a, b, c)
  
  # Menampilkan hasil sesuai kondisi
  if (!hasil$real) {
    cat("Persamaan kuadrat hanya memiliki akar-akar imajiner.\n")
  } else if (hasil$x1 == hasil$x2) {
    # %.3f digunakan untuk memformat 3 angka di belakang desimal
    cat(sprintf("Akar kembar: x = %.3f\n", hasil$x1))
  } else {
    cat(sprintf("Akar-akar real: x1 = %.3f, x2 = %.3f\n", hasil$x1, hasil$x2))
  }
}

# Menjalankan program utama
main()

# kondisi 1 tidak valid: a=0, b=2, c=4
# kondisi 2 akar imajiner: a=2, b=5, c=7
# kondisi 3 akar real: a=1, b=-2, c=-3
