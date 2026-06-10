# 1. DEFINISI FUNGSI UTAMA (DENGAN VALIDASI TIPE DATA)
tentukan_cluster <- function(x1, x2, x3) {
  
  # VALIDASI 1: PASTIKAN SEMUA INPUT ADALAH ANGKA MURNI
  # is.numeric() mengecek apakah input berupa tipe data numerik
  if (!is.numeric(x1) || !is.numeric(x2) || !is.numeric(x3)) {
    cat("Hasil: Input tidak valid (Harus berupa angka!)\n\n")
    return() # Keluar dari fungsi secara prematur agar tidak crash di bawahnya
  }
  
  # Tetapkan koordinat pusat cluster tetap di dalam fungsi
  A <- c(2, 1, 3)
  B <- c(1, -4, 6)
  C <- c(-2, 3, -2)
  
  # Gabungkan parameter menjadi vektor U
  U <- c(x1, x2, x3)
  
  # Fungsi internal untuk menghitung jarak Euclidean
  kira_jarak <- function(titik1, titik2) {
    return(sqrt(sum((titik1 - titik2)^2)))
  }
  
  # Hitung jarak dari U ke setiap cluster
  jarak_A <- kira_jarak(U, A)
  jarak_B <- kira_jarak(U, B)
  jarak_C <- kira_jarak(U, C)
  
  # Cetak informasi titik dan jarak
  cat(sprintf("Menguji Titik U: (%.1f, %.1f, %.1f)\n", x1, x2, x3))
  cat(sprintf("- Jarak ke Cluster A: %.4f\n", jarak_A))
  cat(sprintf("- Jarak ke Cluster B: %.4f\n", jarak_B))
  cat(sprintf("- Jarak ke Cluster C: %.4f\n", jarak_C))
  
  # VALIDASI 2: KONDISI SERI (JARAK SAMA)
  if (jarak_A == jarak_B || jarak_A == jarak_C || jarak_B == jarak_C) {
    cat("Hasil: Terdapat jarak yang sama (Seri), kondisi khusus\n\n")
    
    # JIKA AMAN, CARI JARAK TERDEKAT
  } else if (jarak_A < jarak_B && jarak_A < jarak_C) {
    cat("Hasil: Titik U tergolong dalam CLUSTER A\n\n")
  } else if (jarak_B < jarak_C) {
    cat("Hasil: Titik U tergolong dalam CLUSTER B\n\n")
  } else {
    cat("Hasil: Titik U tergolong dalam CLUSTER C\n\n")
  }
}

# 2. UJI COBA BERBAGAI KONDISI

# 1. Tes Input Teks/String (Keluar pesan error input tanpa membuat R crash)
tentukan_cluster(1.5, "dua", 4.5)

# 2. Tes Jarak Seri (Menghasilkan pesan kondisi khusus)
tentukan_cluster(1.5, -1.5, 4.5)

# 3. Tes Titik Normal (Berjalan lancar)
tentukan_cluster(3, 2, 5)
