prazdna_matice <- matrix(0, nrow = 50, ncol = 50)
prazdna_matice[1, ] <- 100

A <- prazdna_matice

for(m in 1:10000){
  B <- A #ulozeni matice pred iteraci pro kontrolu
  for (i in 2:49) {
    for (j in 2:49) {
      A[i, j] <- 0.25 * (A[i - 1, j] + A[i + 1, j] + A[i, j - 1] + A[i, j + 1])
    }
  }
  
  if(sum(abs(A-B))<0.000000001){
    print(paste("Počet iterací k dosažení požadované přesnosti:", m)) #napis nejaky lepsi vypis
    return(A)
  }
}