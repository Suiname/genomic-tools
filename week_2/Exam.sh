#! /bin/bash
echo "How many alignments does the set contain?"
echo `samtools view athal_wu_0_A.bam | wc -l`
echo "How many alignments show the read’s mate unmapped?"
echo `samtools view athal_wu_0_A.bam | cut -f7 | grep "*" | wc -l`
echo "How many alignments contain a deletion (D)?"
echo `samtools view athal_wu_0_A.bam | cut -f6 | grep "D" | wc -l`
echo "How many alignments show the read’s mate mapped to the same chromosome?"
echo `samtools view athal_wu_0_A.bam | cut -f7 | grep "=" | wc -l`
echo "How many alignments are spliced?"
echo `samtools view athal_wu_0_A.bam | cut -f6 | grep -c "N"`
# The next questions deal with only the region Chr3:11,777,000-11,794,000
echo "How many alignments does the set contain?"
echo `samtools view athal_wu_0_A.bam "Chr3:11,777,000-11,794,000" | wc -l`
echo "How many alignments show the read’s mate unmapped?"
echo `samtools view athal_wu_0_A.bam "Chr3:11,777,000-11,794,000" | cut -f7 | grep "*" | wc -l`
echo "How many alignments contain a deletion (D)?"
echo `samtools view athal_wu_0_A.bam "Chr3:11,777,000-11,794,000" | cut -f6 | grep "D" | wc -l`
echo "How many alignments show the read’s mate mapped to the same chromosome?"
echo `samtools view athal_wu_0_A.bam "Chr3:11,777,000-11,794,000" | cut -f7 | grep "=" | wc -l`
echo "How many alignments are spliced?"
echo `samtools view athal_wu_0_A.bam "Chr3:11,777,000-11,794,000" | cut -f6 | grep -c "N"`
echo "How many sequences are in the genome file?"
echo `samtools view -H athal_wu_0_A.bam | grep -c "SN:"`
echo  "What is the length of the first sequence in the genome file?"
# value is listed after "LN:"
echo `samtools view -H athal_wu_0_A.bam | grep "SN:" | sed -n '1p'`
echo "What alignment tool was used?"
echo `samtools view -H athal_wu_0_A.bam | grep "^@PG"`
echo "What is the read identifier (name) for the first alignment?"
echo `samtools view athal_wu_0_A.bam | head -1 | cut -f1`
echo "What is the start position of this read’s mate on the genome? Give this as ‘chrom:pos’ if the read was mapped, or ‘*” if unmapped."
# this outputs 3 columns.  If column 2 is =, the chromosome is the value of column 1
# if column 2 is * the chromosome is unmapped (answer *)
# otherwise column 2 tells you the chromosome and column 3 tells you the position
echo `samtools view athal_wu_0_A.bam | head -1 | cut -f3,7,8`
