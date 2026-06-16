teks <- "Media sosial atau disebut juga dengan jejaring sosial, seperti Facebook, Twitter, Instagram, dan masih banyak lagi ternyata tidak hanya digunakan sebagai tempat berkumpul atau berbagi di dunia maya. Namun, media sosial kini juga bisa dimanfaatkan sebagai media untuk mengembangkan sebuah bisnis. Saat ini telah banyak para pengusaha yang beralih ke media sosial dalam memasarkan produk mereka baik barang ataupun jasa. Beralihnya para pelaku bisnis ke media ini dikarenakan jejaring sosial memiliki manfaat yang sangat banyak bagi usaha bisnis. Berikut ini adalah alasan mengapa jejaring sosial bisa menjadi alat promosi yang paling efektif."

kata <- unlist(strsplit(teks, " "))
jumlah_kata <- length(kata)

kalimat <- unlist(strsplit(teks, "\\."))
jumlah_kalimat <- sum(trimws(kalimat) != "")

cat("Teks:\n")
cat(teks, "\n\n")
cat("Jumlah kata =", jumlah_kata, "\n")
cat("Jumlah kalimat =", jumlah_kalimat, "\n")

# kondisi 1 "Media sosial atau disebut juga dengan jejaring sosial, seperti Facebook, Twitter, Instagram, dan masih banyak lagi ternyata tidak hanya digunakan sebagai tempat berkumpul atau berbagi di dunia maya. Namun, media sosial kini juga bisa dimanfaatkan sebagai media untuk mengembangkan sebuah bisnis. Saat ini telah banyak para pengusaha yang beralih ke media sosial dalam memasarkan produk mereka baik barang ataupun jasa. Beralihnya para pelaku bisnis ke media ini dikarenakan jejaring sosial memiliki manfaat yang sangat banyak bagi usaha bisnis. Berikut ini adalah alasan mengapa jejaring sosial bisa menjadi alat promosi yang paling efektif."
# kondisi 2 "Pagi ini langit cerah menyinari jalan desa. Anak-anak tertawa riang sambil berlari mengejar kupu-kupu di taman sekolah yang indah sekali."
# kondisi 3 "Pagi ini awan bergerak pelan sementara kucing oranye menatap sepeda tua di halaman sekolah yang sunyi sekali. Di dekat jendela, seorang pelajar menggambar peta imajinasi, lalu tertawa melihat pensilnya patah mendadak tanpa alasan. Sore harinya, hujan berhenti, lampu jalan menyala, dan semua suara berubah menjadi cerita kecil yang hangat indah."
