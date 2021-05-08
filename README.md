# master_thesis

This repo contains LaTeX and pdf versions of my bioinformatics master thesis.
Source code for Fastq2Fasta and Blast2Bam: https://github.com/guyduche/Blast2Bam

# Abstract

Basic Local Alignment Search Tool (BLAST) has been widely used since 1990 to align DNA sequences.
Since the Next-Generation Sequencing (NGS) revolution, sequencing data has been mapped with faster software like Burrows-Wheeler Aligner (BWA).
In this project, we propose to see if BLAST can have a better accuracy and therefore can be used, in some applications, to complement existing aligners.

We created two programs, Fastq2Fasta and Blast2Bam, to enable the use of NGS data by BLAST.
Fastq2Fasta transforms the NGS format fastQ into a fasta file so that the sequences can be loaded into BLAST.
Blast2Bam extracts the alignment data from BLAST and outputs a file in the standard NGS format: Sequence Alignment/Map format (SAM).
Blast2Bam is able to produce paired records if paired-end sequencing was performed.
The output has passed validation tests.

We then evaluated on diverse parameters the differences between the results of BLAST-Blast2Bam and BWA.
As expected, BWA proved to be much faster.
However, BLAST-Blast2Bam demonstrated a better accuracy by displaying an interesting increase in the coverage of the sequencing.

In conclusion, we showed that BLAST-Blast2Bam may be useful in some NGS applications to confirm and/or to improve other aligners' results.

**Keywords**: BLAST, BWA, NGS, SAM.

# PDF version

https://github.com/guyduche/master_thesis/blob/master/GUY-DUCHE_master_thesis.pdf

# Requirements

- texlive-latex-base
- texlive-latex-extra
- texlive-lang-french
- texlive-science
- ghostscript

# Compilation

```
$ make
```

# Author

Aurélien Guy-Duché

# License

The project is licensed under the MIT2 license.