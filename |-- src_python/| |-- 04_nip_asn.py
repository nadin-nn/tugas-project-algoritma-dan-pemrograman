nip = input("Masukkan NIP ASN: ")

tahun = int(nip[0:4])
bulan = int(nip[4:6])
tanggal = int(nip[6:8])

if tahun < 1900 or tahun > 2025:
    print("Tanggal Lahir ASN : Tidak Valid (Tahun)")

elif bulan < 1 or bulan > 12:
    print("Tanggal Lahir ASN : Tidak Valid (Bulan)")

elif tanggal < 1 or tanggal > 31:
    print("Tanggal Lahir ASN : Tidak Valid (Tanggal)")

else:
    if bulan == 1:
        nama_bulan = "Januari"
    elif bulan == 2:
        nama_bulan = "Februari"
    elif bulan == 3:
        nama_bulan = "Maret"
    elif bulan == 4:
        nama_bulan = "April"
    elif bulan == 5:
        nama_bulan = "Mei"
    elif bulan == 6:
        nama_bulan = "Juni"
    elif bulan == 7:
        nama_bulan = "Juli"
    elif bulan == 8:
        nama_bulan = "Agustus"
    elif bulan == 9:
        nama_bulan = "September"
    elif bulan == 10:
        nama_bulan = "Oktober"
    elif bulan == 11:
        nama_bulan = "November"
    else:
        nama_bulan = "Desember"

    print("Tanggal Lahir ASN :", tanggal, nama_bulan, tahun)


# kondisi 1 : valid
nip = "199804232019031010"

# kondisi 2 : tidak valid
nip = "202812202310041010"

# kondisi 3 : tidak valid
nip = "200215021712569810"
