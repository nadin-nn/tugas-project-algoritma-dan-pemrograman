import math

# 1. DEFINISI FUNGSI UTAMA (DENGAN VALIDASI TIPE DATA)
def tentukan_cluster(x1, x2, x3):
    
    # VALIDASI 1: PASTIKAN SEMUA INPUT ADALAH ANGKA (int atau float)

    # isinstance() mengecek apakah input berupa integer atau float
    if not (isinstance(x1, (int, float)) and 
            isinstance(x2, (int, float)) and 
            isinstance(x3, (int, float))):
        print("Hasil: Input tidak valid (Harus berupa angka!)\n")
        return # Keluar dari fungsi secara prematur agar tidak crash bawahnya
        
    # Tetapkan koordinat pusat cluster tetap di dalam fungsi
    A = (2, 1, 3)
    B = (1, -4, 6)
    C = (-2, 3, -2)
    
    # Gabungkan parameter menjadi tuple U
    U = (x1, x2, x3)
    
    # Fungsi internal untuk menghitung jarak Euclidean
    def kira_jarak(titik1, titik2):
        return math.sqrt(sum((t1 - t2) ** 2 for t1, t2 in zip(titik1, titik2)))
    
    # Hitung jarak dari U ke setiap cluster
    jarak_A = kira_jarak(U, A)
    jarak_B = kira_jarak(U, B)
    jarak_C = kira_jarak(U, C)
    
    # Cetak informasi titik dan jarak
    print(f"Menguji Titik U: ({x1:.1f}, {x2:.1f}, {x3:.1f})")
    print(f"- Jarak ke Cluster A: {jarak_A:.4f}")
    print(f"- Jarak ke Cluster B: {jarak_B:.4f}")
    print(f"- Jarak ke Cluster C: {jarak_C:.4f}")
    
    # VALIDASI 2: KONDISI SERI (JARAK SAMA)
    if jarak_A == jarak_B or jarak_A == jarak_C or jarak_B == jarak_C:
        print("Hasil: Terdapat jarak yang sama (Seri), kondisi khusus\n")
        
    # JIKA AMAN, CARI JARAK TERDEKAT
    elif jarak_A < jarak_B and jarak_A < jarak_C:
        print("Hasil: Titik U tergolong dalam CLUSTER A\n")
    elif jarak_B < jarak_C:
        print("Hasil: Titik U tergolong dalam CLUSTER B\n")
    else:
        print("Hasil: Titik U tergolong dalam CLUSTER C\n")

# 2. UJI COBA BERBAGAI KONDISI TIDAK VALID

# 1. Tes Input Teks/String 
tentukan_cluster(1.5, "dua", 4.5)

# 2. Tes Jarak Seri 
tentukan_cluster(1.5, -1.5, 4.5)

# 3. Tes Titik Normal 
tentukan_cluster(3, 2, 5)
