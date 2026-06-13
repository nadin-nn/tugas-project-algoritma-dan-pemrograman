nip <- "input_nip_sesuai_kondisi"

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
  
  if (bulan == 01) {
    nama_bulan <- "Januari"
  } else if (bulan == 02) {
    nama_bulan <- "Februari"
  } else if (bulan == 03) {
    nama_bulan <- "Maret"
  } else if (bulan == 04) {
    nama_bulan <- "April"
  } else if (bulan == 05) {
    nama_bulan <- "Mei"
  } else if (bulan == 06) {
    nama_bulan <- "Juni"
  } else if (bulan == 07) {
    nama_bulan <- "Juli"
  } else if (bulan == 08) {
    nama_bulan <- "Agustus"
  } else if (bulan == 09) {
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







