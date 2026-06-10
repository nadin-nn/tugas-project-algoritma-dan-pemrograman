import math

# 1. DEFINISI FUNGSI UTAMA
def tentukan_cluster(x1, x2, x3):
    
    # Tetapkan koordinat pusat cluster tetap di dalam fungsi
    A = (2, 1, 3)
    B = (1, -4, 6)
    C = (-2, 3, -2)
    
    # Gabungkan parameter menjadi tuple/list U
    U = (x1, x2, x3)
    
    # Fungsi internal untuk menghitung jarak Euclidean
    def kira_jarak(titik1, titik2):
        # Menghitung akar dari jumlah kuadrat selisih koordinat
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
    
    # VALIDASI KONDISI SERI (JARAK SAMA)
    # Jika A sama dengan B, ATAU A sama dengan C, ATAU B sama dengan C
    if jarak_A == jarak_B or jarak_A == jarak_C or jarak_B == jarak_C:
        print("Hasil: Terdapat jarak yang sama (Seri), kondisi khusus\n")
        
    # JIKA AMAN (TIDAK ADA YANG SERI), CARI JARAK TERDEKAT
    elif jarak_A < jarak_B and jarak_A < jarak_C:
        print("Hasil: Titik U tergolong dalam CLUSTER A\n")
    elif jarak_B < jarak_C:
        print("Hasil: Titik U tergolong dalam CLUSTER B\n")
    else:
        print("Hasil: Titik U tergolong dalam CLUSTER C\n")

# 2. CARA MENGGUNAKAN / MEMANGGIL FUNGSI

# 1. Tes Titik dengan Jarak Seri (Titik tengah A dan B)
tentukan_cluster(1.5, -1.5, 4.5)

# 2. Tes Titik Normal
tentukan_cluster(3, 2, 5)
tentukan_cluster(-8, 2, 3)
