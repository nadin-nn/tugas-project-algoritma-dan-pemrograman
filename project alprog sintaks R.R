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














