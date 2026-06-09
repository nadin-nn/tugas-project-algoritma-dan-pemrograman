#program 1

teks <- "Media sosial atau disebut juga dengan jejaring sosial, seperti Facebook, Twitter, Instagram, dan masih banyak lagi ternyata tidak hanya digunakan sebagai tempat berkumpul atau berbagi di dunia maya. Namun, media sosial kini juga bisa dimanfaatkan sebagai media untuk mengembangkan sebuah bisnis. Saat ini telah banyak para pengusaha yang beralih ke media sosial dalam memasarkan produk mereka baik barang ataupun jasa. Beralihnya para pelaku bisnis ke media ini dikarenakan jejaring sosial memiliki manfaat yang sangat banyak bagi usaha bisnis. Berikut ini adalah alasan mengapa jejaring sosial bisa menjadi alat promosi yang paling efektif."

kata <- unlist(strsplit(teks, " "))
jumlah_kata <- length(kata)

kalimat <- unlist(strsplit(teks, "\\."))
jumlah_kalimat <- sum(trimws(kalimat) != "")

cat("Teks:\n")
cat(teks, "\n\n")
cat("Jumlah kata =", jumlah_kata, "\n")
cat("Jumlah kalimat =", jumlah_kalimat, "\n")

#program 2
K1 <- "Saya tak 'kan menyerah."
K2 <- 'Ia berkata, "Aku menyayangimu."'
K3 <- "\"Coba jelaskan pengertian 'cross-validation' dalam Machine Learning!\""
K4 <- "Surat keputusan itu bernomor 62/UN.34/19/2023."

cat(K1, "\n")
cat(K2, "\n")
cat(K3, "\n")
cat(K4)


# Program 3: Akar persamaan kuadrat
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


# program 4
nip <- "2000042319031010"

tahun <- substr(nip, 1, 4)
bulan <- substr(nip, 5, 6)
tanggal <- substr(nip, 7, 8)

if (bulan == "01") {
  nama_bulan <- "Januari"
} else if (bulan == "02") {
  nama_bulan <- "Februari"
} else if (bulan == "03") {
  nama_bulan <- "Maret"
} else if (bulan == "04") {
  nama_bulan <- "April"
} else if (bulan == "05") {
  nama_bulan <- "Mei"
} else if (bulan == "06") {
  nama_bulan <- "Juni"
} else if (bulan == "07") {
  nama_bulan <- "Juli"
} else if (bulan == "08") {
  nama_bulan <- "Agustus"
} else if (bulan == "09") {
  nama_bulan <- "September"
} else if (bulan == "10") {
  nama_bulan <- "Oktober"
} else if (bulan == "11") {
  nama_bulan <- "November"
} else if (bulan == "12") {
  nama_bulan <- "Desember"
} else {
  nama_bulan <- "Tidak Valid"
}

cat("Tanggal Lahir ASN:\n")
cat(tanggal, nama_bulan, tahun)


#program 5
hitung_jarak <- function(x1, x2, x3) {
  jarak_ke_A <- sqrt((x1-2)^2 + (x2-1)^2 + (x3-3)^2)
  jarak_ke_B <- sqrt((x1-1)^2 + (x2+4)^2 + (x3-6)^2)
  jarak_ke_C <- sqrt((x1+2)^2 + (x2-3)^2 + (x3+2)^2)
  return(
    list(
      jarak_UA = jarak_ke_A,
      jarak_UB = jarak_ke_B,
      jarak_UC = jarak_ke_C
    )
  )
}
hasil_jarak <- hitung_jarak(2, 5, 6)
print(hasil_jarak)

cluster <- function(hasil_jarak) {
  if (hasil_jarak$jarak_UA < hasil_jarak$jarak_UB & hasil_jarak$jarak_UA < hasil_jarak$jarak_UC) {
    cat("anggota cluster A")
  } else if (hasil_jarak$jarak_UB < hasil_jarak$jarak_UA & hasil_jarak$jarak_UB < hasil_jarak$jarak_UC) {
    cat("anggota cluster B")
  } else {
    cat("anggota cluster C")
  }
}
cluster(hasil_jarak)

















