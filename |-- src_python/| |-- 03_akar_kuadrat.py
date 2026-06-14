import math

def hitung_akar_kuadrat(a, b, c):
    # Kondisi 1: Ketika input a bernilai nol
    if a == 0:
        print("Kondisi khusus: Nilai a bernilai nol (bukan persamaan kuadrat).")
        return None
    
    # Hitung nilai diskriminan (D)
    D = (b**2) - (4 * a * c)
    
    # Kondisi 2: Akar imajiner (Diskriminan < 0)
    if D < 0:
        print("Persamaan tersebut hanya memiliki akar-akar imajiner.")
        
    # Kondisi 3: Akar kembar (Diskriminan = 0)
    elif D == 0:
        x = -b / (2 * a)
        print(f"Persamaan memiliki akar kembar: x1 = x2 = {x:.3f}")
        
    # Kondisi 4: Akar real berbeda (Diskriminan > 0)
    else:
        x1 = (-b + math.sqrt(D)) / (2 * a)
        x2 = (-b - math.sqrt(D)) / (2 * a)
        print("Persamaan memiliki dua akar real berbeda:")
        print(f"x1 = {x1:.3f}")
        print(f"x2 = {x2:.3f}")


print("--- kondisi 1 ---")
hitung_akar_kuadrat(0, 2, 4)

print("\n--- kondisi 2 ---")
hitung_akar_kuadrat(2, 5, 7)

print("\n--- kondisi 3 ---")
hitung_akar_kuadrat(1, -2, -3)

# kondisi 1 tidak valid: a=0, b=2, c=4
# kondisi 2 akar imajiner: a=2, b=5, c=7
# kondisi 3 akar real: a=1, b=-2, c=-3
