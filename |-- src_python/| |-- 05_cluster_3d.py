import math

# Pusat cluster
A = (2, 1, 3)
B = (1, -4, 6)
C = (-2, 3, -2)

# Titik uji
U1 = (1, 2, 3)
U2 = (1, -3, 5)
U3 = (-1, 3, -1)

def jarak(P, Q):
    return math.sqrt(
        (P[0]-Q[0])**2 +
        (P[1]-Q[1])**2 +
        (P[2]-Q[2])**2
    )

def klasifikasi(U):
    dA = jarak(U, A)
    dB = jarak(U, B)
    dC = jarak(U, C)

    if dA <= dB and dA <= dC:
        cluster = "A"
    elif dB <= dA and dB <= dC:
        cluster = "B"
    else:
        cluster = "C"

    print("Titik U =", U)
    print("Jarak ke A =", round(dA, 3))
    print("Jarak ke B =", round(dB, 3))
    print("Jarak ke C =", round(dC, 3))
    print("Masuk Cluster", cluster)
    print("-" * 30)

# Tiga kondisi
klasifikasi(U1)
klasifikasi(U2)
klasifikasi(U3)
