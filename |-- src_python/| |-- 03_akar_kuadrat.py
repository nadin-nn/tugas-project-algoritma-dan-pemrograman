import math

def hitung_akar(a, b, c):
    D = b**2 - 4*a*c
    if D < 0:
        return None, None, False  # imajiner
    elif D == 0:
        x = -b / (2*a)
        return x, x, True
    else:
        x1 = (-b + math.sqrt(D)) / (2*a)
        x2 = (-b - math.sqrt(D)) / (2*a)
        return x1, x2, True

def main():
    print("=== Program Akar Persamaan Kuadrat ===")
    try:
        a = float(input("Masukkan a: "))
        b = float(input("Masukkan b: "))
        c = float(input("Masukkan c: "))

        if a == 0:
            print("Error: a tidak boleh 0 (bukan persamaan kuadrat)")
            return

        x1, x2, real = hitung_akar(a, b, c)

        if not real:
            print("Persamaan kuadrat hanya memiliki akar-akar imajiner.")
        elif x1 == x2:
            print(f"Akar kembar: x = {x1:.3f}")
        else:
            print(f"Akar-akar real: x1 = {x1:.3f}, x2 = {x2:.3f}")
    except ValueError:
        print("Input harus berupa angka!")

if __name__ == "__main__":
    main()
