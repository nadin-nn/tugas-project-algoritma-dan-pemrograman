hitung_jarak <- function(x1, x2, x3) {
  jarak_ke_A <- sqrt((x1-2)^2 + (x2-1)^2 + (x3-3)^2)
  jarak_ke_B <- sqrt((x1-1)^2 + (x2+4)^2 + (x3-6)^2)
  jarak_ke_C <- sqrt((x1+2)^2 + (x2-3)^2 + (x3+2)^2)
  return(
    list(
      jarak_UA = jarak_ke_A,
      jarak_UB = jarak_ke_B,
      jarak_UC = jarak_ke_C
    )
  )
}
hasil_jarak <- hitung_jarak(1, 2, 3)
print(hasil_jarak)

cluster <- function(hasil_jarak) {
  if (hasil_jarak$jarak_UA < hasil_jarak$jarak_UB & hasil_jarak$jarak_UA < hasil_jarak$jarak_UC) {
    cat("titik U termasuk anggota cluster A")
  } else if (hasil_jarak$jarak_UB < hasil_jarak$jarak_UA & hasil_jarak$jarak_UB < hasil_jarak$jarak_UC) {
    cat("titik U termasuk anggota cluster B")
  } else {
    cat("titik U termasuk anggota cluster C")
  }
}
cluster(hasil_jarak)
