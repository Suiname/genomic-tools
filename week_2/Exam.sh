#! /bin/bash
echo "How many alignments does the set contain?"
echo `samtools view athal_wu_0_A.bam | wc -l`
echo "How many alignments show the read’s mate unmapped?"
echo `samtools view athal_wu_0_A.bam | cut -f7 | grep "*" | wc -l`
echo "How many alignments contain a deletion (D)?"
echo `samtools view athal_wu_0_A.bam | cut -f6 | grep "D" | wc -l`
echo "How many alignments show the read’s mate mapped to the same chromosome?"
echo `samtools view athal_wu_0_A.bam | cut -f7 | grep "=" | wc -l`
