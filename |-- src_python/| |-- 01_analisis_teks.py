# Program 1: Analisis Teks
# Menghitung jumlah kata dan kalimat dari sebuah teks

def main():
    print("=" * 50)
    print("PROGRAM ANALISIS TEKS")
    print("=" * 50)

    # Meminta input teks dari pengguna
    teks = input("Masukkan teks: ")

    # Validasi input kosong
    if teks.strip() == "":
        print("Error: Teks tidak boleh kosong!")
        return

    # Menghitung jumlah kalimat (dihitung dari tanda titik)
    jumlah_kalimat = teks.count(".")
    if jumlah_kalimat == 0:
        jumlah_kalimat = 1

    # Menghitung jumlah kata
    # Hapus tanda baca agar tidak memengaruhi pemisahan kata
    teks_bersih = teks.replace(",", "").replace(".", "")
    # Pisahkan berdasarkan spasi
    kata_list = teks_bersih.split()
    jumlah_kata = len(kata_list)

    # Menampilkan hasil
    print("\n" + "=" * 50)
    print("HASIL ANALISIS TEKS")
    print("=" * 50)
    print(f"Teks tersebut memuat {jumlah_kalimat} kalimat dan {jumlah_kata} kata.")
    print("=" * 50)

if __name__ == "__main__":
    main()
    
# kondisi 1 "Media sosial atau disebut juga dengan jejaring sosial, seperti Facebook, Twitter, Instagram, dan masih banyak lagi ternyata tidak hanya digunakan sebagai tempat berkumpul atau berbagi di dunia maya. Namun, media sosial kini juga bisa dimanfaatkan sebagai media untuk mengembangkan sebuah bisnis. Saat ini telah banyak para pengusaha yang beralih ke media sosial dalam memasarkan produk mereka baik barang ataupun jasa. Beralihnya para pelaku bisnis ke media ini dikarenakan jejaring sosial memiliki manfaat yang sangat banyak bagi usaha bisnis. Berikut ini adalah alasan mengapa jejaring sosial bisa menjadi alat promosi yang paling efektif."
# kondisi 2 "Pagi ini langit cerah menyinari jalan desa. Anak-anak tertawa riang sambil berlari mengejar kupu-kupu di taman sekolah yang indah sekali."
# kondisi 3 -
