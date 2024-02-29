make_triplets <- function(rna) {
  
  triplets <- c()
  
  for (i in seq(from = 3, to = nchar(rna), by = 3)) {
    triplet <- substr(rna, i - 2, i)
    triplets <- c(triplets, triplet)
  }
  
  return(triplets)
}

translater <- function(rna){
  
  rna_codon_table = c(
    "UUU"= "F", "CUU"= "L", "AUU"= "I", "GUU"= "V",
    "UUC"= "F", "CUC"= "L", "AUC"= "I", "GUC"= "V",
    "UUA"= "L", "CUA"= "L", "AUA"= "I", "GUA"= "V",
    "UUG"= "L", "CUG"= "L", "AUG"= "M", "GUG"= "V",
    "UCU"= "S", "CCU"= "P", "ACU"= "T", "GCU"= "A",
    "UCC"= "S", "CCC"= "P", "ACC"= "T", "GCC"= "A",
    "UCA"= "S", "CCA"= "P", "ACA"= "T", "GCA"= "A",
    "UCG"= "S", "CCG"= "P", "ACG"= "T", "GCG"= "A",
    "UAU"= "Y", "CAU"= "H", "AAU"= "N", "GAU"= "D",
    "UAC"= "Y", "CAC"= "H", "AAC"= "N", "GAC"= "D",
    "UAA"= "Stop", "CAA"= "Q", "AAA"= "K", "GAA"= "E",
    "UAG"= "Stop", "CAG"= "Q", "AAG"= "K", "GAG"= "E",
    "UGU"= "C", "CGU"= "R", "AGU"= "S", "GGU"= "G",
    "UGC"= "C", "CGC"= "R", "AGC"= "S", "GGC"= "G",
    "UGA"= "Stop", "CGA"= "R", "AGA"= "R", "GGA"= "G",
    "UGG"= "W", "CGG"= "R", "AGG"= "R", "GGG"= "G"
  )
  
  protein = c()
  
   for (codon in rna){
    if (rna_codon_table[codon] == "Stop"){
      break
    }
    protein <- c(protein, rna_codon_table[codon])
   }
  
  return(protein)
}

join_elements <- function(x){
  return(paste(x, collapse=""))
}

sequence <- readLines("rosalind_prot.txt")
sequence <- unlist(sequence)
tripleted_seq <- make_triplets(sequence)
translated_seq <- translater(tripleted_seq)
final_protein <- join_elements(translated_seq)
cat(final_protein)
