for s in SRR12485106 SRR12485107 SRR12485108 SRR12485109 SRR12485110 SRR12485111 SRR12485112 SRR12485113
do
    mkdir -p ${s}_quant
    salmon quant -i hs_index -l A -r ${s}_1.fastq -p 4 -o ${s}_quant
done
