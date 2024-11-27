

SUBJECTS_DIR=/Users/wangping/Desktop/T1sufLP7.3.2

cd $SUBJECTS_DIR

for sub in 001 002 004 005 006 007 008 009 010 011 013 014 019 023 024 026 027 028 029 030 031 033 034 035 036 037 038 040 042	101	102	104	105	107	110	111	112	115	116	117	118	119	120	121	123	124	126	127	129	130	131	132	133	134	135	136	137
do
	echo ${sub}
	recon-all -all -s sub$sub -i $SUBJECTS_DIR/RawData/sub$sub.nii.gz
	recon-all -all -s subH$sub -i $SUBJECTS_DIR/RawData/subH$sub.nii.gz
	
	recon-all -base $sub -tp sub$sub -tp subH$sub -all
	
	recon-all -long sub$sub $sub -all
	recon-all -long subH$sub $sub -all

done




## -----------------------------05 extrat ROI/atlas subcortical data --------------------------------------
# export SUBJECTS_DIR=/Volumes/wangp_psy/WP_2017/T1/fsLP7.3_fsbrain/01_dataLP
# cd $SUBJECTS_DIR
# subject_list=/Users/wangping/Desktop/list.txt
# subjects=$( cat ${subject_list} )

# for data in volume 
# do
# 	asegstats2table --subjects $subjects --meas $data --tablefile /Users/wangping/Desktop/aseg/$data.txt		
# done


