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
