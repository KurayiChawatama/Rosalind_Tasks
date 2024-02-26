sequence <- readLines("rosalind_dna.txt")
sequence <- unlist(strsplit(sequence, ""))

for (i in c("A", "C", "G", "T")) {
  cat(sum(sequence == i), " ")
}

