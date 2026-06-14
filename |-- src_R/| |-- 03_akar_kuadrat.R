hitung_akar_kuadrat <- function(a, b, c) {
  
  # Kondisi 1: Ketika input a bernilai nol
  if (a == 0) {
    cat("Kondisi khusus: Nilai a bernilai nol (bukan persamaan kuadrat).\n")
    return(invisible(NULL))
  }
  
  # Hitung nilai diskriminan (D)
  D <- (b^2) - (4 * a * c)
  
  # Kondisi 2: Akar imajiner (Diskriminan < 0)
  if (D < 0) {
    cat("Persamaan tersebut hanya memiliki akar-akar imajiner.\n")
    
    # Kondisi 3: Akar kembar (Diskriminan = 0)
  } else if (D == 0) {
    x <- -b / (2 * a)
    cat(sprintf("Persamaan memiliki akar kembar: x1 = x2 = %.3f\n", x))
    
    # Kondisi 4: Akar real berbeda (Diskriminan > 0)
  } else {
    x1 <- (-b + sqrt(D)) / (2 * a)
    x2 <- (-b - sqrt(D)) / (2 * a)
    cat(sprintf("Persamaan memiliki dua akar real berbeda:\n"))
    cat(sprintf("x1 = %.3f\n", x1))
    cat(sprintf("x2 = %.3f\n", x2))
  }
}


cat("--- kondisi 1 ---\n")
hitung_akar_kuadrat(0, 2, 4)

cat("\n--- kondisi 2 ---\n")
hitung_akar_kuadrat(2, 5, 7)

cat("\n--- kondisi 3 ---\n")
hitung_akar_kuadrat(1, -2, -3)

# kondisi 1 tidak valid: a=0, b=2, c=4
# kondisi 2 akar imajiner: a=2, b=5, c=7
# kondisi 3 akar real: a=1, b=-2, c=-3
