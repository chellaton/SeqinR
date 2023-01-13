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

# Composition of the sequence(s)
count(dna[[1]],1)