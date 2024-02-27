sequence <- readLines("rosalind_rna.txt")
sequence <- unlist(strsplit(sequence, ""))

RNA_sequence <- (gsub("T", "U", sequence))
cat(RNA_sequence, sep = "")
