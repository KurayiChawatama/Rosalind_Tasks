def main():
    with open("rosalind_revc.txt") as file:
        sequence = file.read().strip()

    reversed_sequence = reverse_complement(sequence)
    print(reversed_sequence)


def reverse_complement(seq):
    complement = {'A': 'T', 'C': 'G', 'G': 'C', 'T': 'A'}
    return "".join(complement[base] for base in reversed(seq))


if __name__ == "__main__":
    main()
