# Pusat cluster
A <- c(2, 1, 3)
B <- c(1, -4, 6)
C <- c(-2, 3, -2)

# Titik uji
U1 <- c(1, 2, 3)
U2 <- c(1, -3, 5)
U3 <- c(-1, 3, -1)

# Fungsi untuk menghitung jarak Euclidean 3D
jarak <- function(P, Q) {
  sqrt(sum((P - Q)^2))
}

# Fungsi untuk klasifikasi
klasifikasi <- function(U) {
  dA <- jarak(U, A)
  dB <- jarak(U, B)
  dC <- jarak(U, C)
  
  # Menentukan cluster terdekat
  if (dA <= dB && dA <= dC) {
    cluster <- "A"
  } else if (dB <= dA && dB <= dC) {
    cluster <- "B"
  } else {
    cluster <- "C"
  }
  
  cat("Titik U =", paste(U, collapse=", "), "\n")
  cat("Jarak ke A =", round(dA, 3), "\n")
  cat("Jarak ke B =", round(dB, 3), "\n")
  cat("Jarak ke C =", round(dC, 3), "\n")
  cat("Masuk Cluster", cluster, "\n")
  cat(rep("-", 30), "\n")
}

# Tiga kondisi
klasifikasi(U1)
klasifikasi(U2)
klasifikasi(U3)


