#sublist: 001 002 004 005 006 007 008 009 010 011 013 014 019 023 024 026 027 028 029 030 031 033 034 035 036 037 038 040 042 101 102 104 105 107 110 111 112 115 116 117 118 119 120 121 123 124 126 127 129 130 131 132 133 134 135 136 137

### sublist loop
# subject_list=/Users/wangping/Desktop/CCS/01.script/00.list.txt
# subjects=$( cat ${subject_list} )


###copy rest data
for sub in 004 005 006 007 008 009 010 011 013 014 019 023 024 026 027 028 029 030 031 033 034 035 036 037 038 040 042 101 102 104 105 107 110 111 112 115 116 117 118 119 120 121 123 124 126 127 129 130 131 132 133 134 135 136 137
do
mkdir -p /Users/wangping/Desktop/CCS/GAA_${sub}_MR1.long.GAA_${sub}/rest
mkdir -p /Users/wangping/Desktop/CCS/GAA_${sub}_MR2.long.GAA_${sub}/rest
cp /Volumes/wangp_psy/WP_2017/CCS_prepro/sub${sub}/rest1/rest.nii.gz /Users/wangping/Desktop/CCS/GAA_${sub}_MR1.long.GAA_${sub}/rest/rest.nii.gz
cp /Volumes/wangp_psy/WP_2017/CCS_prepro/subH${sub}/rest1/rest.nii.gz /Users/wangping/Desktop/CCS/GAA_${sub}_MR2.long.GAA_${sub}/rest/rest.nii.gz
done



###single process
/Users/wangping/Documents/00_toolbox/CCS/01_script/ccs_app/ccs_anat_03_postfs.sh /Users/wangping/Desktop/CCS /Volumes/wangp_psy/WP_2017/T1/fsLP7.3_fsbrain/01_dataLP GAA_001_MR1.long.GAA_001

CCS_DIR=/Users/wangping/Desktop/CCS
subject=GAA_001_MR1.long.GAA_001
mkdir -p $CCS_DIR/$subject/scripts/
sed "s/CCSsubjectname/GAA_001_MR1.long.GAA_001/" /Users/wangping/Desktop/template_preproc_funcpart.sh > $CCS_DIR/$subject/scripts/ccs_preproc_funcpart.sh
sh $CCS_DIR/$subject/scripts/ccs_preproc_funcpart.sh


###loop pretest
for sub in 001 002
do
/Users/wangping/Documents/00_toolbox/CCS/01_script/ccs_app/ccs_anat_03_postfs.sh /Users/wangping/Desktop/CCS /Volumes/wangp_psy/WP_2017/T1/fsLP7.3_fsbrain/01_dataLP GAA_${sub}_MR1.long.GAA_${sub}
CCS_DIR=/Users/wangping/Desktop/CCS
subject=GAA_${sub}_MR1.long.GAA_${sub}
mkdir -p $CCS_DIR/$subject/scripts/
sed "s/CCSsubjectname/GAA_${sub}_MR1.long.GAA_${sub}/" /Users/wangping/Desktop/template_preproc_funcpart.sh > $CCS_DIR/$subject/scripts/ccs_preproc_funcpart.sh
sh $CCS_DIR/$subject/scripts/ccs_preproc_funcpart.sh
done



###loop post
for sub in 001 002
do
/Users/wangping/Documents/00_toolbox/CCS/01_script/ccs_app/ccs_anat_03_postfs.sh /Users/wangping/Desktop/CCS /Volumes/wangp_psy/WP_2017/T1/fsLP7.3_fsbrain/01_dataLP GAA_${sub}_MR2.long.GAA_${sub}
CCS_DIR=/Users/wangping/Desktop/CCS
subject=GAA_${sub}_MR2.long.GAA_${sub}
mkdir -p $CCS_DIR/$subject/scripts/
sed "s/CCSsubjectname/GAA_${sub}_MR2.long.GAA_${sub}/" /Users/wangping/Desktop/template_preproc_funcpart.sh > $CCS_DIR/$subject/scripts/ccs_preproc_funcpart.sh
sh $CCS_DIR/$subject/scripts/ccs_preproc_funcpart.sh
done


### view sub mask
for sub in 001 002 004 005 006 007 008 009 010 011 013 014 019 023 024 026 027 028 029 030 031 033 034 035 036 037 038 040 042 101 102 104 105 107 110 111 112 115 116 117 118 119 120 121 123 124 126 127 129 130 131 132 133 134 135 136 137
do
for run in 1 2
do
echo ${sub} ${run}
freeview -f /Applications/freesurfer/7.3.2/subjects/fsaverage5/surf/lh.inflated:overlay=/Users/wangping/Desktop/CCS/GAA_${sub}_MR${run}.long.GAA_${sub}/rest/mask/brain.fsaverage5.lh.nii.gz
done
done

### view grp mask
freeview -f /Applications/freesurfer/7.3.2/subjects/fsaverage5/surf/lh.inflated:overlay=/Users/wangping/Desktop/CCS/01.maskGrp/lh.surface.fsaverage5.nii.gz

### file move
for sub in 002 004 005 006 007 008 009 010 011 013 014 019 023 024 026 027 028 029 030 031 033 034 035 036 037 038 040 042 101 102 104 105 107 110 111 112 115 116 117 118 119 120 121 123 124 126 127 129 130 131 132 133 134 135 136 137
do
for run in 1 2
do
mv /Users/wangping/Desktop/CCS/GAA_${sub}_MR${run}.long.GAA_${sub}/rest/3dFWHMx.1D /Users/wangping/Desktop/CCS/GAA_${sub}_MR${run}.long.GAA_${sub}/rest/qcp/3dFWHMx.1D
mv /Users/wangping/Desktop/CCS/GAA_${sub}_MR${run}.long.GAA_${sub}/rest/3dFWHMx.1D.png /Users/wangping/Desktop/CCS/GAA_${sub}_MR${run}.long.GAA_${sub}/rest/qcp/3dFWHMx.1D.png
mv /Users/wangping/Desktop/CCS/GAA_${sub}_MR${run}.xmat.1D /Users/wangping/Desktop/CCS/GAA_${sub}_MR${run}.long.GAA_${sub}/rest/qcp/GAA_${sub}_MR${run}.xmat.1D
done
done







