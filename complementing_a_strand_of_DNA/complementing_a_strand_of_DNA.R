reverse_compliment <- function(target_sequence){
  
  complement <- c('A'='T', 'C'='G', 'G'='C', 'T'='A')
  
  split_sequence <- unlist(strsplit(target_sequence, split = ""))
  reversed_sequence <- rev(split_sequence)
  
  complimented_sequence <- sapply(reversed_sequence, FUN = function(x) { complement[x] })
  complimented_sequence <- paste(complimented_sequence, collapse = "")
  
  return(complimented_sequence)
}

sequence <- readLines("rosalind_revc.txt")
sequence <- unlist(sequence)

reversed <- reverse_compliment(sequence)
cat(reversed)


