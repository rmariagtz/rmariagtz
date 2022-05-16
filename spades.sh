set -e
set -u
set -o pipefail

#AUTHOR ROSA MARIA GUTIERREZ
#RUN SPADES METAGENOMES PAIR END
#input: left and right cleaned reads


#my input files path
cd /hd1/rmaria/FASTQ/PRUEBAS_ENSAMBLE

for file1 in out*1*.fastq
do	
SAMPLE_NAME=$(basename -s "_R1.fastq" ${file1})
echo "running $SAMPLE_NAME"
done
nohup spades.py -o ${SAMPLE_NAME}_SPADES --meta -1 ${SAMPLE_NAME}_R1.fastq -2 ${SAMPLE_NAME}_R2.fastq  -t 10 -k 21,33,55,77,99,127 &

	
done
