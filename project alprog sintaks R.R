#program 2
K1 <- "Saya tak 'kan menyerah."
K2 <- 'Ia berkata, "Aku menyayangimu."'
K3 <- "\"Coba jelaskan pengertian 'cross-validation' dalam Machine Learning!\""
K4 <- "Surat keputusan itu bernomor 62/UN.34/19/2023."

cat(K1, "\n")
cat(K2, "\n")
cat(K3, "\n")
cat(K4)


#program 3
nilai_koefisien <- function(a, b, c) {
  D <- b^2-4*a*c 
  if (D > 0) {
    x1 <- (-b+sqrt(D))/2*a
    x2 <- (-b-sqrt(D))/2*a
    cat("akar real:", "\n")
    cat("x1 =", x1, "\n")
    cat("x2 =", x2, "\n")
  } else if (D == 0) {
    x <- -b/(2*a)
    cat("akar kembar:", "\n")
    cat("x =", x, "\n")
  } else {
    x1 <- (-b+sqrt(as.complex(D)))/2*a
    x2 <- (-b-sqrt(as.complex(D)))/2*a
    cat("akar imajiner:", "\n")
    cat("x1 =", x1, "\n")
    cat("x2 =", x2)
  }
}
nilai_koefisien(1, 0, -4)
nilai_koefisien(1, -4, 4)
nilai_koefisien(1, 2, 2)


#program 5
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
hasil_jarak <- hitung_jarak(2, 5, 6)
print(hasil_jarak)

cluster <- function(hasil_jarak) {
  if (hasil_jarak$jarak_UA < hasil_jarak$jarak_UB & hasil_jarak$jarak_UA < hasil_jarak$jarak_UC) {
    cat("anggota cluster A")
  } else if (hasil_jarak$jarak_UB < hasil_jarak$jarak_UA & hasil_jarak$jarak_UB < hasil_jarak$jarak_UC) {
    cat("anggota cluster B")
  } else {
    cat("anggota cluster C")
  }
}
cluster(hasil_jarak)

















