library(seqinr)

#read fasta file
dna <- read.fasta(file="GRCh38.fasta", seqtype="DNA",
                  forceDNAtolower=TRUE)
dna
number_of_sequences <- length(dna)
print(paste("Number of sequences:", number_of_sequences))

# getNames & getAnnotate (gets some description as well)

names <- getName(dna)
annotation <- getAnnot(dna)
print(paste("Names:", names))
print(paste("Annotations:", annotation))

# GC Content of the sequence(s)
print(GC(dna[[1]]) )

# Count number of dinucleotides and trinucleotides
number_of_dinucleotides <- count(dna[[1]],2)
number_of_trinucleotides <- count(dna[[1]],3)
print("Number of di-nucleotides:")
print(number_of_dinucleotides)
print("tri-nucleotides:")
print( number_of_trinucleotides)