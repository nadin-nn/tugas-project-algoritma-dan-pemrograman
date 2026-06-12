nip <- "input_nip"

tahun <- as.numeric(substr(nip, 1, 4))
bulan <- as.numeric(substr(nip, 5, 6))
tanggal <- as.numeric(substr(nip, 7, 8))

if (tahun < 1900 || tahun > 2025) {
  cat("Tanggal Lahir ASN : Tidak Valid (Tahun)")
} else if (bulan < 1 || bulan > 12) {
  cat("Tanggal Lahir ASN : Tidak Valid (Bulan)")
} else if (tanggal < 1 || tanggal > 31) {
  cat("Tanggal Lahir ASN : Tidak Valid (Tanggal)")
} else {
  
  if (bulan == 1) {
    nama_bulan <- "Januari"
  } else if (bulan == 2) {
    nama_bulan <- "Februari"
  } else if (bulan == 3) {
    nama_bulan <- "Maret"
  } else if (bulan == 4) {
    nama_bulan <- "April"
  } else if (bulan == 5) {
    nama_bulan <- "Mei"
  } else if (bulan == 6) {
    nama_bulan <- "Juni"
  } else if (bulan == 7) {
    nama_bulan <- "Juli"
  } else if (bulan == 8) {
    nama_bulan <- "Agustus"
  } else if (bulan == 9) {
    nama_bulan <- "September"
  } else if (bulan == 10) {
    nama_bulan <- "Oktober"
  } else if (bulan == 11) {
    nama_bulan <- "November"
  } else {
    nama_bulan <- "Desember"
  }
  
  cat("Tanggal Lahir ASN :", tanggal, nama_bulan, tahun)
}


# kondisi 1 : valid
nip = "199804232019031010"

# kondisi 2 : tidak valid
nip = "202812202310041010"

# kondisi 3 : tidak valid
nip = "200215021712569810"







