import math

# Pusat cluster
A = (2, 1, 3)
B = (1, -4, 6)
C = (-2, 3, -2)

# Input titik U
x1 = float(input("Masukkan x1: "))
x2 = float(input("Masukkan x2: "))
x3 = float(input("Masukkan x3: "))

U = (x1, x2, x3)

# Fungsi menghitung jarak
def jarak(P, Q):
    return math.sqrt(
        (P[0] - Q[0])**2 +
        (P[1] - Q[1])**2 +
        (P[2] - Q[2])**2
    )

# Hitung jarak ke masing-masing cluster
dA = jarak(U, A)
dB = jarak(U, B)
dC = jarak(U, C)

# Menentukan cluster
if dA <= dB and dA <= dC:
    cluster = "A"
elif dB <= dA and dB <= dC:
    cluster = "B"
else:
    cluster = "C"

# Output
print("\nJarak ke A =", round(dA, 3))
print("Jarak ke B =", round(dB, 3))
print("Jarak ke C =", round(dC, 3))
print("Titik U termasuk Cluster", cluster)
