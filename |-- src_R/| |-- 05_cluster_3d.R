# 1. DEFINISI FUNGSI UTAMA (DENGAN DETAIL JARAK SERI)

tentukan_cluster <- function(x1, x2, x3) {
  
  # VALIDASI 1: PASTIKAN SEMUA INPUT ADALAH ANGKA MURNI
  if (!is.numeric(x1) || !is.numeric(x2) || !is.numeric(x3)) {
    cat("Hasil: Input tidak valid (Harus berupa angka!)\n\n")
    return()
  }
  
  A <- c(2, 1, 3)
  B <- c(1, -4, 6)
  C <- c(-2, 3, -2)
  U <- c(x1, x2, x3)
  
  kira_jarak <- function(titik1, titik2) {
    return(sqrt(sum((titik1 - titik2)^2)))
  }
  
  jarak_A <- kira_jarak(U, A)
  jarak_B <- kira_jarak(U, B)
  jarak_C <- kira_jarak(U, C)
  
  cat(sprintf("Menguji Titik U: (%.1f, %.1f, %.1f)\n", x1, x2, x3))
  cat(sprintf("- Jarak ke Cluster A: %.4f\n", jarak_A))
  cat(sprintf("- Jarak ke Cluster B: %.4f\n", jarak_B))
  cat(sprintf("- Jarak ke Cluster C: %.4f\n", jarak_C))
  
  # VALIDASI 2: DETEKSI DAN JELASKAN JARAK YANG SAMA (SERI)
  if (jarak_A == jarak_B || jarak_A == jarak_C || jarak_B == jarak_C) {
    
    # Buat wadah teks untuk menampung info cluster yang sama
    kembar <- c()
    
    if (jarak_A == jarak_B) kembar <- c(kembar, "Cluster A dan Cluster B")
    if (jarak_A == jarak_C) kembar <- c(kembar, "Cluster A dan Cluster C")
    if (jarak_B == jarak_C) kembar <- c(kembar, "Cluster B dan Cluster C")
    
    # Gabungkan teks jika ada lebih dari satu kombinasi yang kembar
    info_kembar <- paste(kembar, collapse = " DAN ")
    
    cat(sprintf("Hasil: KONDISI KHUSUS! Jarak yang sama ditemukan pada yaitu: %s\n\n", info_kembar))
    
    # JIKA AMAN (TIDAK ADA YANG SERI), CARI JARAK TERDEKAT
  } else if (jarak_A < jarak_B && jarak_A < jarak_C) {
    cat("Hasil: Titik U tergolong dalam CLUSTER A\n\n")
  } else if (jarak_B < jarak_C) {
    cat("Hasil: Titik U tergolong dalam CLUSTER B\n\n")
  } else {
    cat("Hasil: Titik U tergolong dalam CLUSTER C\n\n")
  }
}

# 2. UJI COBA KONDISI SERI YANG BERBEDA

# Kasus 1: Kondisi tidak valid
tentukan_cluster(1.5, "dua", 4.5)

# Kasus 2: Titik tengah antara B dan C (Jarak B dan C sama)
tentukan_cluster(-0.5, -0.5, 2.0)

# Kasus 3: Kondisi Normal
tentukan_cluster(3, 2, 5)
