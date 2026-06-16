import math

def tentukan_cluster(x1, x2, x3):
    
    # VALIDASI 1: INPUT HARUS ANGKA
    if not (isinstance(x1, (int, float)) and 
            isinstance(x2, (int, float)) and 
            isinstance(x3, (int, float))):
        print("Hasil: Input tidak valid (Harus berupa angka!)\n")
        return
    
    # Definisi pusat cluster
    A = (2, 1, 3)
    B = (1, -4, 6)
    C = (-2, 3, -2)
    
    # Titik input
    U = (x1, x2, x3)
    
    # Fungsi jarak Euclidean
    def kira_jarak(titik1, titik2):
        return math.sqrt(sum((t1 - t2) ** 2 for t1, t2 in zip(titik1, titik2)))
    
    # Hitung jarak
    jarak_A = kira_jarak(U, A)
    jarak_B = kira_jarak(U, B)
    jarak_C = kira_jarak(U, C)
    
    # Tampilkan hasil jarak
    print(f"Menguji Titik U: ({x1:.1f}, {x2:.1f}, {x3:.1f})")
    print(f"- Jarak ke Cluster A: {jarak_A:.4f}")
    print(f"- Jarak ke Cluster B: {jarak_B:.4f}")
    print(f"- Jarak ke Cluster C: {jarak_C:.4f}")
    
    # ===============================
    # LOGIKA BARU (LEBIH AKURAT)
    # ===============================
    
    # Cari jarak minimum
    min_jarak = min(jarak_A, jarak_B, jarak_C)
    
    # Hitung berapa yang sama dengan jarak minimum
    jumlah_min = sum(j == min_jarak for j in [jarak_A, jarak_B, jarak_C])
    
    if jumlah_min > 1:
        # Seri hanya jika yang sama adalah jarak TERKECIL
        kembar = []
        
        if jarak_A == min_jarak:
            kembar.append("Cluster A")
        if jarak_B == min_jarak:
            kembar.append("Cluster B")
        if jarak_C == min_jarak:
            kembar.append("Cluster C")
        
        info_kembar = " DAN ".join(kembar)
        
        print(f"Hasil: KONDISI KHUSUS! Jarak terdekat sama pada: {info_kembar}\n")
    
    else:
        # Tidak seri → pilih yang paling kecil
        if min_jarak == jarak_A:
            print("Hasil: Titik U tergolong dalam CLUSTER A\n")
        elif min_jarak == jarak_B:
            print("Hasil: Titik U tergolong dalam CLUSTER B\n")
        else:
            print("Hasil: Titik U tergolong dalam CLUSTER C\n")


# ===============================
# UJI COBA
# ===============================

# Kasus 1: Input tidak valid
tentukan_cluster(1.5, "dua", 4.5)

# Kasus 2: Seri (jarak minimum sama)
tentukan_cluster(1.5, -1.5, 4.5)

# Kasus 3: Normal
tentukan_cluster(3, 2, 5)
