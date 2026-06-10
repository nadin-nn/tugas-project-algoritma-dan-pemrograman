# 1. DEFINISI FUNGSI UTAMA (DIPERBAIKI)

tentukan_cluster <- function(x1, x2, x3) {
  
  # Tetapkan koordinat pusat cluster tetap di dalam fungsi
  A <- c(2, 1, 3)
  B <- c(1, -4, 6)
  C <- c(-2, 3, -2)
  
  # Gabungkan parameter menjadi vektor U
  U <- c(x1, x2, x3)
  
  # Fungsi internal untuk menghitung jarak Euclidean
  jarak <- function(titik1, titik2) {
    return(sqrt(sum((titik1 - titik2)^2)))
  }
  
  # Hitung jarak dari U ke setiap cluster
  jarak_A <- jarak(U, A)
  jarak_B <- jarak(U, B)
  jarak_C <- jarak(U, C)
  
  # Cetak informasi titik dan jarak
  cat(sprintf("Menguji Titik U: (%.1f, %.1f, %.1f)\n", x1, x2, x3))
  cat(sprintf("- Jarak ke Cluster A: %.4f\n", jarak_A))
  cat(sprintf("- Jarak ke Cluster B: %.4f\n", jarak_B))
  cat(sprintf("- Jarak ke Cluster C: %.4f\n", jarak_C))
  
  # --------------------------------------------------------
  # VALIDASI KONDISI SERI (JARAK SAMA)
  # --------------------------------------------------------
  # Jika A sama dengan B, ATAU A sama dengan C, ATAU B sama dengan C
  if (jarak_A == jarak_B || jarak_A == jarak_C || jarak_B == jarak_C) {
    cat("Hasil: Terdapat jarak yang sama (Seri), kondisi khusus\n\n")
  } else if (jarak_A < jarak_B && jarak_A < jarak_C) {
    cat("Hasil: Titik U tergolong dalam CLUSTER A\n\n")
  } else if (jarak_B < jarak_C) {
    cat("Hasil: Titik U tergolong dalam CLUSTER B\n\n")
  } else {
    cat("Hasil: Titik U tergolong dalam CLUSTER C\n\n")
  }
}

# 2. MEMANGGIL FUNGSI

# 1. Kondisi 1 & 2(Normal)
tentukan_cluster(-8, 2, 3)
tentukan_cluster(3, 2, 5)

# 2. Kondisi 2
tentukan_cluster(1.5, -1.5, 4.5)
