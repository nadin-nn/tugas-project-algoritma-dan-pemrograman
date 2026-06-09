def hitung_kata_kalimat(teks):
    """
    Fungsi untuk menghitung jumlah kalimat dan jumlah kata dalam sebuah teks.
    Asumsi: tanda titik hanya digunakan untuk mengakhiri kalimat.
    """
    # Menghitung jumlah kalimat berdasarkan tanda titik
    jumlah_kalimat = teks.count('.')

    # Menghapus tanda titik untuk mempermudah pemisahan kata
    teks_tanpa_titik = teks.replace('.', '')

    # Memisahkan teks menjadi kata-kata berdasarkan spasi
    # Metode split() tanpa argumen akan memisahkan berdasarkan spasi, newline, tab
    list_kata = teks_tanpa_titik.split()
    jumlah_kata = len(list_kata)

    return jumlah_kalimat, jumlah_kata

def main():
    print("=== Program Analisis Teks ===")
    teks = input("Masukkan teks: ")

    # Validasi input kosong
    if teks.strip() == "":
        print("Error: Teks tidak boleh kosong!")
        return

    kalimat, kata = hitung_kata_kalimat(teks)
    print(f"\nTeks tersebut memuat {kalimat} kalimat dan {kata} kata.")

if __name__ == "__main__":
    main()
