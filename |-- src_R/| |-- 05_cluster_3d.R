tentukan_cluster <- function(x1, x2, x3) {
  
  # VALIDASI 1: INPUT HARUS ANGKA
  if (!is.numeric(x1) || !is.numeric(x2) || !is.numeric(x3)) {
    cat("Hasil: Input tidak valid (Harus berupa angka!)\n\n")
    return()
  }
  
  # Definisi pusat cluster
  A <- c(2, 1, 3)
  B <- c(1, -4, 6)
  C <- c(-2, 3, -2)
  
  # Titik input
  U <- c(x1, x2, x3)
  
  # Fungsi jarak Euclidean
  kira_jarak <- function(titik1, titik2) {
    return(sqrt(sum((titik1 - titik2)^2)))
  }
  
  # Hitung jarak
  jarak_A <- kira_jarak(U, A)
  jarak_B <- kira_jarak(U, B)
  jarak_C <- kira_jarak(U, C)
  
  # Tampilkan hasil jarak
  cat(sprintf("Menguji Titik U: (%.1f, %.1f, %.1f)\n", x1, x2, x3))
  cat(sprintf("- Jarak ke Cluster A: %.4f\n", jarak_A))
  cat(sprintf("- Jarak ke Cluster B: %.4f\n", jarak_B))
  cat(sprintf("- Jarak ke Cluster C: %.4f\n", jarak_C))
  
  # ===============================
  # LOGIKA BARU (LEBIH AKURAT)
  # ===============================
  
  # Cari jarak minimum
  min_jarak <- min(jarak_A, jarak_B, jarak_C)
  
  # Hitung berapa yang sama dengan jarak minimum
  jumlah_min <- sum(c(jarak_A, jarak_B, jarak_C) == min_jarak)
  
  if (jumlah_min > 1) {
    # Seri hanya jika yang sama adalah jarak TERKECIL
    kembar <- c()
    
    if (jarak_A == min_jarak) kembar <- c(kembar, "Cluster A")
    if (jarak_B == min_jarak) kembar <- c(kembar, "Cluster B")
    if (jarak_C == min_jarak) kembar <- c(kembar, "Cluster C")
    
    info_kembar <- paste(kembar, collapse = " DAN ")
    
    cat(sprintf("Hasil: KONDISI KHUSUS! Jarak terdekat sama pada: %s\n\n", info_kembar))
    
  } else {
    # Tidak seri → pilih yang paling kecil
    if (min_jarak == jarak_A) {
      cat("Hasil: Titik U tergolong dalam CLUSTER A\n\n")
    } else if (min_jarak == jarak_B) {
      cat("Hasil: Titik U tergolong dalam CLUSTER B\n\n")
    } else {
      cat("Hasil: Titik U tergolong dalam CLUSTER C\n\n")
    }
  }
}

# ===============================
# UJI COBA
# ===============================

# Kasus 1: Input tidak valid
tentukan_cluster(1.5, "dua", 4.5)

# Kasus 2: Seri (jarak minimum sama)
tentukan_cluster(1.5, -1.5, 4.5)

# Kasus 3: Normal
tentukan_cluster(3, 2, 5)
