#! /bin/bash
# Author: Christopher Riccardi, postgraduate researcher at University of Firenze (2021)
# descriptions taken from on https://www.ncbi.nlm.nih.gov/research/cog/

if [ -z "$1" ]
    then
        echo "Usage: ./eggNOG_cleanup.sh <eggNOG tsv results file>"
        exit 1
fi

mapfile -t i < <(awk -F"\t" '{print $1}' $1)
mapfile -t j < <(awk -F"\t" '{print $7}' $1)	## edit if COG letters not in column 21

tot_count=0
J_cat=0
A_cat=0
K_cat=0
L_cat=0
B_cat=0
D_cat=0
Y_cat=0
V_cat=0
T_cat=0
M_cat=0
N_cat=0
Z_cat=0
W_cat=0
U_cat=0
O_cat=0
X_cat=0
C_cat=0
G_cat=0
E_cat=0
F_cat=0
H_cat=0
I_cat=0
P_cat=0
Q_cat=0
R_cat=0
S_cat=0

for elem in "${!i[@]}"; do
    if [[ ! -z "${j[elem]: -1}" ]]
    then
        case "${j[elem]: -1}" in

            # J - Translation, ribosomal structure and biogenesis
            J)
                echo -e "${i[elem]}""\t""${j[elem]: -1}""\t""Translation, ribosomal structure and biogenesis"
                ((J_cat+=1))
                ((tot_count+=1))
                ;;

            # A - RNA processing and modification
            A)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""RNA processing and modification"
                ((A_cat+=1))
                ((tot_count+=1))
                ;;

            # K - Transcription
            K)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Transcription"
                ((K_cat+=1))
                ((tot_count+=1))
                ;;

            # L - Replication, recombination and repair
            L)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Replication, recombination and repair"
                ((L_cat+=1))
                ((tot_count+=1))
                ;;

            # B - Chromatin structure and dynamics
            B)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Chromatin structure and dynamics"
                ((B_cat+=1))
                ((tot_count+=1))
                ;;

            # D - Cell cycle control, cell division, chromosome partitioning
            D)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Cell cycle control, cell division, chromosome partitioning"
                ((D_cat+=1))
                ((tot_count+=1))
                ;;

            # Y - Nuclear structure
            Y)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Nuclear structure"
                ((Y_cat+=1))
                ((tot_count+=1))
                ;;

            # V - Defense mechanisms
            V)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Defense mechanisms"
                ((V_cat+=1))
                ((tot_count+=1))
                ;;

            # T - Signal transduction mechanisms
            T)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Signal transduction mechanisms"
                ((T_cat+=1))
                ((tot_count+=1))
                ;;

            # M - Cell wall/membrane/envelope biogenesis
            M)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Cell wall/membrane/envelope biogenesis"
                ((M_cat+=1))
                ((tot_count+=1))
                ;;

            # N - Cell motility
            N)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Cell motility"
                ((N_cat+=1))
                ((tot_count+=1))
                ;;

            # Z - Cytoskeleton
            Z)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Cytoskeleton"
                ((Z_cat+=1))
                ((tot_count+=1))
                ;;

            # W - Extracellular structures
            W)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Extracellular structures"
                ((W_cat+=1))
                ((tot_count+=1))
                ;;

            # U - Intracellular trafficking, secretion, and vesicular transport
            U)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Intracellular trafficking, secretion, and vesicular transport"
                ((U_cat+=1))
                ((tot_count+=1))
                ;;

            # O - Posttranslational modification, protein turnover, chaperones
            O)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Posttranslational modification, protein turnover, chaperones"
                ((O_cat+=1))
                ((tot_count+=1))
                ;;

            # X - Mobilome: prophages, transposons
            X)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Mobilome: prophages, transposons"
                ((X_cat+=1))
                ((tot_count+=1))
                ;;

            # C - Energy production and conversion
            C)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Energy production and conversion"
                ((C_cat+=1))
                ((tot_count+=1))
                ;;

            # G - Carbohydrate transport and metabolism
            G)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Carbohydrate transport and metabolism"
                ((G_cat+=1))
                ((tot_count+=1))
                ;;

            # E - Amino acid transport and metabolism
            E)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Amino acid transport and metabolism"
                ((E_cat+=1))
                ((tot_count+=1))
                ;;

            # F - Nucleotide transport and metabolism
            F)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Nucleotide transport and metabolism"
                ((F_cat+=1))
                ((tot_count+=1))
                ;;

            # H - Coenzyme transport and metabolism
            H)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Coenzyme transport and metabolism"
                ((H_cat+=1))
                ((tot_count+=1))
                ;;

            # I - Lipid transport and metabolism
            I)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Lipid transport and metabolism"
                ((I_cat+=1))
                ((tot_count+=1))
                ;;

            # P - Inorganic ion transport and metabolism
            P)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Inorganic ion transport and metabolism"
                ((P_cat+=1))
                ((tot_count+=1))
                ;;

            # Q - Secondary metabolites biosynthesis, transport and catabolism
            Q)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Secondary metabolites biosynthesis, transport and catabolism"
                ((Q_cat+=1))
                ((tot_count+=1))
                ;;

            # R - General function prediction only
            R)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""General function prediction only"
                ((R_cat+=1))
                ((tot_count+=1))
                ;;

            # S - Function unknown
            S)
                echo -e ${i[elem]}"\t""${j[elem]: -1}""\t""Function unknown"
                ((S_cat+=1))
                ((tot_count+=1))
                ;;

        esac
    fi
done > COG_eggNOG.txt

>&2 echo "Total assigned COGs: " $tot_count

printf 'Cat\tFunction\tCount\tPercentage\n'
printf 'J\t%s\t%d\t' "Translation, ribosomal structure and biogenesis" $J_cat;  echo print $J_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'A\t%s\t%d\t' "RNA processing and modification" $A_cat;  echo print $A_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'K\t%s\t%d\t' "Transcription" $K_cat;  echo print $K_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'L\t%s\t%d\t' "Replication, recombination and repair" $L_cat;  echo print $L_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'B\t%s\t%d\t' "Chromatin structure and dynamics" $B_cat;  echo print $B_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'D\t%s\t%d\t' "Cell cycle control, cell division, chromosome partitioning" $D_cat;  echo print $D_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'Y\t%s\t%d\t' "Nuclear structure" $Y_cat;  echo print $Y_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'V\t%s\t%d\t' "Defense mechanisms" $V_cat;  echo print $V_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'T\t%s\t%d\t' "Signal transduction mechanisms" $T_cat;  echo print $T_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'M\t%s\t%d\t' "Cell wall/membrane/envelope biogenesis" $M_cat;  echo print $M_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'N\t%s\t%d\t' "Cell motility" $N_cat;  echo print $N_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'Z\t%s\t%d\t' "Cytoskeleton" $Z_cat;  echo print $Z_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'W\t%s\t%d\t' "Extracellular structures" $W_cat;  echo print $W_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'U\t%s\t%d\t' "Intracellular trafficking, secretion, and vesicular transport" $U_cat;  echo print $U_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'O\t%s\t%d\t' "Posttranslational modification, protein turnover, chaperones" $O_cat;  echo print $O_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'X\t%s\t%d\t' "Mobilome: prophages, transposons" $X_cat;  echo print $X_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'C\t%s\t%d\t' "Energy production and conversion" $C_cat;  echo print $C_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'G\t%s\t%d\t' "Carbohydrate transport and metabolism" $G_cat;  echo print $G_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'E\t%s\t%d\t' "Amino acid transport and metabolism" $E_cat;  echo print $E_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'F\t%s\t%d\t' "Nucleotide transport and metabolism" $F_cat;  echo print $F_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'H\t%s\t%d\t' "Coenzyme transport and metabolism" $H_cat;  echo print $H_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'I\t%s\t%d\t' "Lipid transport and metabolism" $I_cat;  echo print $I_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'P\t%s\t%d\t' "Inorganic ion transport and metabolism" $P_cat;  echo print $P_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'Q\t%s\t%d\t' "Secondary metabolites biosynthesis, transport and catabolism" $Q_cat;  echo print $Q_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'R\t%s\t%d\t' "General function prediction only" $R_cat;  echo print $R_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo
printf 'S\t%s\t%d\t' "Function unknown" $S_cat;  echo print $S_cat/$tot_count*100 | perl | awk '{printf"%f",$1}'; echo



