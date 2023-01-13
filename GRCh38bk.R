library(seqinr)

#read fasta file
dna <- read.fasta(file="GRCh38.fasta", seqtype="DNA",
                  forceDNAtolower=TRUE)
dna
number_of_sequences = length(dna)
print(paste("Number of sequences:", number_of_sequences))