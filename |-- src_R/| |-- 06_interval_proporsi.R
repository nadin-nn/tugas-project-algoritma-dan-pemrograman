interval_konfidensi <- function(p_hat, n, alpha){
  
  cat("\n================ Nilai Interval ================\n")
  cat("Input: p̂ =", p_hat,
      ", n =", n,
      ", α =", alpha, "\n")
  
  # Validasi proporsi
  if(p_hat < 0 || p_hat > 1){
    cat("Error: Proporsi harus berada antara 0 dan 1.\n")
    return(NULL)
  }
  
  # Validasi ukuran sampel
  if(n <= 0){
    cat("Error: Ukuran sampel harus lebih besar dari 0.\n")
    return(NULL)
  }
  
  # Menentukan nilai z
  if(alpha == 0.05){
    z <- 1.96
  } else if(alpha == 0.10){
    z <- 1.645
  } else {
    cat("Error: Alpha hanya boleh 0.05 atau 0.10.\n")
    return(NULL)
  }
  
  # Menghitung interval konfidensi
  se <- sqrt((p_hat * (1 - p_hat)) / n)
  margin <- z * se
  
  lower <- p_hat - margin
  upper <- p_hat + margin
  
  cat("Interval Konfidensi", (1-alpha)*100, "%\n")
  cat(round(lower,4), "< p <", round(upper,4), "\n")
}

# Beberapa kondisi pengujian
interval_konfidensi(0.30, 150, 0.10)   # valid
interval_konfidensi(-0.20, 100, 0.05)  # p̂ < 0
interval_konfidensi(0.50, 0, 0.05)     # n tidak valid

