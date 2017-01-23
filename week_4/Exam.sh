echo "How many single transcript genes were produced for Day8?"
echo `cat transcripts.gtf | cut -f3,9 | cut -d ' ' -f1,2 | grep transcript | uniq -c | grep '1 transcript' | wc -l`
echo "How many single transcript genes were produced for Day16?"
echo `cat transcripts.gtf | cut -f3,9 | cut -d ' ' -f1,2 | grep transcript | uniq -c | grep '1 transcript' | wc -l`
echo "How many single-exon transcripts were in the Day8 set?"
echo `cat transcripts.gtf | cut -f3,9 | cut -d ' ' -f1,2,3,4 | grep exon | uniq -c | grep "1 exon" | wc -l`
echo "How many single-exon transcripts were in the Day16 set?"
echo `cat transcripts.gtf | cut -f3,9 | cut -d ' ' -f1,2,3,4 | grep exon | uniq -c | grep "1 exon" | wc -l`
echo "How many multi-exon transcripts were in the Day8 set?"
echo `cat transcripts.gtf | cut -f3,9 | cut -d ' ' -f1,2,3,4 | grep exon | uniq -c | grep -v "1 exon" | wc -l`
echo "How many multi-exon transcripts were in the Day16 set?"
echo `cat transcripts.gtf | cut -f3,9 | cut -d ' ' -f1,2,3,4 | grep exon | uniq -c | grep -v "1 exon" | wc -l`
echo "How many cufflinks transcripts fully reconstruct annotation transcripts in Day8?"
echo `cat cuffcmp.transcripts.gtf.tmap | grep = | wc -l`
echo "How many cufflinks transcripts fully reconstruct annotation transcripts in Day16?"
echo `cat cuffcmp.transcripts.gtf.tmap | grep = | wc -l`
echo "How many splice variants does the gene AT4G20240 have in the Day8 sample?"
# count how many of these have a qualifying code, e.g. "j"
echo `cat cuffcmp.transcripts.gtf.tmap | grep AT4G20240`
echo "How many splice variants does the gene AT4G20240 have in the Day16 sample?"
# count how many of these have a qualifying code, e.g. "j"
echo `cat cuffcmp.transcripts.gtf.tmap | grep AT4G20240`
echo "How many cufflinks transcripts are partial reconstructions of reference transcripts (‘contained’)? (Day8)"
echo `cat cuffcmp.transcripts.gtf.tmap | cut -f3 | grep c | wc -l`
echo "How many cufflinks transcripts are partial reconstructions of reference transcripts (‘contained’)? (Day16)"
echo `cat cuffcmp.transcripts.gtf.tmap | cut -f3 | grep c | wc -l`
