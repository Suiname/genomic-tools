#! /bin/bash

echo "How many chromosomes are there in the genome?"
echo `gzcat apple.genome.gz | grep ">" | wc -l`
echo "How many genes?"
echo `cut -f1 apple.genes | sort -u | wc -l`
echo "How many transcript variants?"
echo `cut -f2 apple.genes | sort -u | wc -l`
echo "How many genes have a single splice variant?"
echo `cut -f1 apple.genes | uniq -c | more | grep " 1 " | wc -l`
echo "How may genes have 2 or more splice variants?"
echo `cut -f1 apple.genes | uniq -c | more | grep -v " 1 " | wc -l`
echo "How many genes are there on the ‘+’ strand?"
echo `cut -f1,4 apple.genes | grep "+" | uniq -c | wc -l`
echo "How many genes are there on the ‘-’ strand?"
echo `cut -f1,4 apple.genes | grep "-" | uniq -c | wc -l`
echo "How many genes are there on chromosome chr1?"
echo `cut -f1,3 apple.genes | grep "chr1" | uniq -c | wc -l`
echo "How many genes are there on each chromosome chr2?"
echo `cut -f1,3 apple.genes | grep "chr2" | uniq -c | wc -l`
echo "How many genes are there on each chromosome chr3?"
echo `cut -f1,3 apple.genes | grep "chr3" | uniq -c | wc -l`
echo "How many transcripts are there on chr1?"
echo `cut -f2,3 apple.genes | grep "chr1" | uniq -c | wc -l`
echo "How many transcripts are there on chr2?"
echo `cut -f2,3 apple.genes | grep "chr2" | uniq -c | wc -l`
echo "How many transcripts are there on chr3?"
echo `cut -f2,3 apple.genes | grep "chr3" | uniq -c | wc -l`
