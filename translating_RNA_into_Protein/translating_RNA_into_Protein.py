def main():
    with open("rosalind_prot.txt") as file:
        sequence = file.read().strip()

    tripleted_seq = make_triplets(sequence)
    translated_seq = translater(tripleted_seq)
    final_protein = join_elements(translated_seq)
    print(final_protein)


def make_triplets(rna):
    return [rna[i:(i + 3)] for i in range(0, len(rna), 3)]


def translater(rna):

    rna_codon_table = {
        "UUU": "F", "CUU": "L", "AUU": "I", "GUU": "V",
        "UUC": "F", "CUC": "L", "AUC": "I", "GUC": "V",
        "UUA": "L", "CUA": "L", "AUA": "I", "GUA": "V",
        "UUG": "L", "CUG": "L", "AUG": "M", "GUG": "V",
        "UCU": "S", "CCU": "P", "ACU": "T", "GCU": "A",
        "UCC": "S", "CCC": "P", "ACC": "T", "GCC": "A",
        "UCA": "S", "CCA": "P", "ACA": "T", "GCA": "A",
        "UCG": "S", "CCG": "P", "ACG": "T", "GCG": "A",
        "UAU": "Y", "CAU": "H", "AAU": "N", "GAU": "D",
        "UAC": "Y", "CAC": "H", "AAC": "N", "GAC": "D",
        "UAA": "Stop", "CAA": "Q", "AAA": "K", "GAA": "E",
        "UAG": "Stop", "CAG": "Q", "AAG": "K", "GAG": "E",
        "UGU": "C", "CGU": "R", "AGU": "S", "GGU": "G",
        "UGC": "C", "CGC": "R", "AGC": "S", "GGC": "G",
        "UGA": "Stop", "CGA": "R", "AGA": "R", "GGA": "G",
        "UGG": "W", "CGG": "R", "AGG": "R", "GGG": "G"
    }

    protein = []

    for codon in rna:
        if rna_codon_table[codon] != "Stop":
            protein.append(rna_codon_table[codon])
        else:
            break

    return protein


def join_elements(protein):
    return ''.join(protein)


if __name__ == "__main__":
    main()