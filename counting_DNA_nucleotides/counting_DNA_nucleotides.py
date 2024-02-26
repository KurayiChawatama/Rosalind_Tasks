with open("rosalind_dna.txt", "r") as file:
    sequence = file.read().strip()

nucleotides = {nucleotide: sequence.count(nucleotide) for nucleotide in 'ACGT'}

for nucleotide in nucleotides.values():
    print(nucleotide, end=" ")

