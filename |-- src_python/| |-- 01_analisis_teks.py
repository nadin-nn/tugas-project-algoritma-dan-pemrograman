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
