import math

def hitung_akar(a, b, c):
    if a == 0:
        return "Tidak valid (a = 0)"
    
    # Menghitung diskriminan
    D = b**2 - 4*a*c
    
    if D < 0:
        return "Akar imajiner"
    elif D == 0:
        x = -b / (2*a)
        return f"Akar kembar = {round(x, 3)}"
    else:
        x1 = (-b + math.sqrt(D)) / (2*a)
        x2 = (-b - math.sqrt(D)) / (2*a)
        return f"x1 = {round(x1, 3)}, x2 = {round(x2, 3)}"

def main():
    for i in range(1, 4): # Loop dari 1 sampai 3
        print(f"\nPersamaan ke-{i}")
        
        try:
            a = float(input("Masukkan a: "))
            b = float(input("Masukkan b: "))
            c = float(input("Masukkan c: "))
            
            hasil = hitung_akar(a, b, c)
            print("Hasil:", hasil)
            
        except ValueError:
            # Menggantikan pengecekan is.na() di R untuk menangani input non-angka
            print("Input harus angka!")

# Menjalankan fungsi utama
if __name__ == "__main__":
    main()

# kondisi 1 tidak valid: a=0, b=2, c=4
# kondisi 2 akar imajiner: a=2, b=5, c=7
# kondisi 3 akar real: a=1, b=-2, c=-3
