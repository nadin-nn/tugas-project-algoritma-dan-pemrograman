def hitung_kata_dan_kalimat(teks):
    # 1. Menghitung jumlah kalimat
    # Karena tanda titik (.) hanya digunakan untuk mengakhiri kalimat,
    # kita cukup menghitung berapa banyak tanda titik yang ada.
    jumlah_kalimat = teks.count('.')
    
    # 2. Menghitung jumlah kata
    # Kita memecah teks berdasarkan spasi menggunakan method split()
    daftar_kata = teks.split()
    jumlah_kata = len(daftar_kata)
    
    return jumlah_kata, jumlah_kalimat

# Input teks secara dinamis dari pengguna
teks_input = input("> masukkan teks: ")

# Memanggil fungsi untuk menghitung
kata, kalimat = hitung_kata_dan_kalimat(teks_input)

# Menampilkan hasil dengan format baru
print(f"Teks memuat {kalimat} kalimat dan {kata} kata")

# kondisi 1 "Media sosial atau disebut juga dengan jejaring sosial, seperti Facebook, Twitter, Instagram, dan masih banyak lagi ternyata tidak hanya digunakan sebagai tempat berkumpul atau berbagi di dunia maya. Namun, media sosial kini juga bisa dimanfaatkan sebagai media untuk mengembangkan sebuah bisnis. Saat ini telah banyak para pengusaha yang beralih ke media sosial dalam memasarkan produk mereka baik barang ataupun jasa. Beralihnya para pelaku bisnis ke media ini dikarenakan jejaring sosial memiliki manfaat yang sangat banyak bagi usaha bisnis. Berikut ini adalah alasan mengapa jejaring sosial bisa menjadi alat promosi yang paling efektif."
# kondisi 2 "Pagi ini langit cerah menyinari jalan desa. Anak-anak tertawa riang sambil berlari mengejar kupu-kupu di taman sekolah yang indah sekali."
# kondisi 3 "Pagi ini awan bergerak pelan sementara kucing oranye menatap sepeda tua di halaman sekolah yang sunyi sekali. Di dekat jendela, seorang pelajar menggambar peta imajinasi, lalu tertawa melihat pensilnya patah mendadak tanpa alasan. Sore harinya, hujan berhenti, lampu jalan menyala, dan semua suara berubah menjadi cerita kecil yang hangat indah."
