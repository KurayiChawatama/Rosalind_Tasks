with open("rosalind_rna.txt", "r") as file:
    sequence = file.read().strip()

sequence = sequence.replace('T', 'U')

print(sequence)
