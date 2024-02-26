sequence <- readLines("~/RProjects/Rosalind_Tasks/counting_DNA_nucleotides/rosalind_dna.txt")
sequence <- unlist(strsplit(sequence, ""))

for (i in c("A", "C", "G", "T")) {
  cat(sum(sequence == i), " ")
}

