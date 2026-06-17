# Program 1: Analisis Teks
# Menghitung jumlah kata dan kalimat dari sebuah teks

main <- function() {
    cat(rep("=", 50), "\n")
    cat("PROGRAM ANALISIS TEKS\n")
    cat(rep("=", 50), "\n")

    # Meminta input teks dari pengguna
    cat("Masukkan teks: ")
    teks <- readline()

    # Validasi input kosong
    if (trimws(teks) == "") {
        cat("Error: Teks tidak boleh kosong!\n")
        return(invisible())
    }

    # Menghitung jumlah kalimat (dihitung dari tanda titik)
    jumlah_titik <- length(gregexpr("\\.", teks)[[1]])
    # gregexpr mengembalikan -1 jika tidak ditemukan
    if (jumlah_titik == -1) {
        jumlah_kalimat <- 1
    } else {
        jumlah_kalimat <- jumlah_titik
    }

    # Menghitung jumlah kata
    # Hapus koma dan titik
    teks_bersih <- gsub(",", "", teks)
    teks_bersih <- gsub("\\.", "", teks_bersih)
    # Pisahkan berdasarkan spasi
    kata_list <- strsplit(teks_bersih, " ")[[1]]
    # Buang elemen kosong
    kata_list <- kata_list[kata_list != ""]
    jumlah_kata <- length(kata_list)

    # Menampilkan hasil
    cat("\n", rep("=", 50), "\n")
    cat("HASIL ANALISIS TEKS\n")
    cat(rep("=", 50), "\n")
    cat(sprintf("Teks tersebut memuat %d kalimat dan %d kata.\n",
                jumlah_kalimat, jumlah_kata))
    cat(rep("=", 50), "\n")
}

# Menjalankan fungsi
main()

# kondisi 1 "Media sosial atau disebut juga dengan jejaring sosial, seperti Facebook, Twitter, Instagram, dan masih banyak lagi ternyata tidak hanya digunakan sebagai tempat berkumpul atau berbagi di dunia maya. Namun, media sosial kini juga bisa dimanfaatkan sebagai media untuk mengembangkan sebuah bisnis. Saat ini telah banyak para pengusaha yang beralih ke media sosial dalam memasarkan produk mereka baik barang ataupun jasa. Beralihnya para pelaku bisnis ke media ini dikarenakan jejaring sosial memiliki manfaat yang sangat banyak bagi usaha bisnis. Berikut ini adalah alasan mengapa jejaring sosial bisa menjadi alat promosi yang paling efektif."
# kondisi 2 "Pagi ini langit cerah menyinari jalan desa. Anak-anak tertawa riang sambil berlari mengejar kupu-kupu di taman sekolah yang indah sekali."
# kondisi 3 -
