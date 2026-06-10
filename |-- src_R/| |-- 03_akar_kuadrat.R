hitung_akar <- function(a, b, c) {
  
  if (a == 0) {
    return("Tidak valid (a = 0)")
  }
  
  D <- b^2 - 4*a*c
  
  if (D < 0) {
    return("Akar imajiner")
  } else if (D == 0) {
    x <- -b/(2*a)
    return(paste("Akar kembar =", round(x, 3)))
  } else {
    x1 <- (-b + sqrt(D))/(2*a)
    x2 <- (-b - sqrt(D))/(2*a)
    return(paste("x1 =", round(x1, 3),
                 ", x2 =", round(x2, 3)))
  }
}

main <- function() {
  
  for(i in 1:3){
    
    cat("\nPersamaan ke-", i, "\n")
    
    a <- as.numeric(readline("Masukkan a: "))
    b <- as.numeric(readline("Masukkan b: "))
    c <- as.numeric(readline("Masukkan c: "))
    
    if(any(is.na(c(a,b,c)))){
      cat("Input harus angka!\n")
    } else {
      hasil <- hitung_akar(a,b,c)
      cat("Hasil:", hasil, "\n")
    }
  }
}

main()

# kondisi 1 tidak valid: a=0, b=2, c=4
# kondisi 2 akar imajiner: a=1, b=0, c=1
# kondisi 3 akar real: a=1, b=-2, c=-3
