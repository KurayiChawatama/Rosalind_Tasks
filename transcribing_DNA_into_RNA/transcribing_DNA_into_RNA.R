sequence <- readLines("~/RProjects/Rosalind_Tasks/transcribing_DNA_into_RNA/rosalind_rna.txt")
sequence <- unlist(strsplit(sequence, ""))

RNA_sequence <- (gsub("T", "U", sequence))
cat(RNA_sequence, sep = "")
