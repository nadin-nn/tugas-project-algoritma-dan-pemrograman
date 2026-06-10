import math

def interval_konfidensi(p_hat, n, alpha):

    print("\n================================")
    print(f"Input: p̂ = {p_hat}, n = {n}, α = {alpha}")

    # Validasi proporsi
    if p_hat < 0 or p_hat > 1:
        print("Error: Proporsi harus berada antara 0 dan 1.")
        return

    # Validasi ukuran sampel
    if n <= 0:
        print("Error: Ukuran sampel harus lebih besar dari 0.")
        return

    # Menentukan nilai z
    if alpha == 0.05:
        z = 1.96
    elif alpha == 0.10:
        z = 1.645
    else:
        print("Error: Alpha hanya boleh 0.05 atau 0.10.")
        return

    # Menghitung interval konfidensi
    se = math.sqrt((p_hat * (1 - p_hat)) / n)
    margin = z * se

    lower = p_hat - margin
    upper = p_hat + margin

    print(f"Interval Konfidensi {(1-alpha)*100:.0f}%")
    print(f"{lower:.4f} < p < {upper:.4f}")

#kondisi
interval_konfidensi(0.30, 150, 0.10)  
interval_konfidensi(-0.20, 100, 0.05)
interval_konfidensi(0.50, 0, 0.05)
