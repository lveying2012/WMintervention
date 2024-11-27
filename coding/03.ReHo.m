clear;clc;
% This script is used to calc ReHo and ALFF in ROI
ana_dir = '/Users/wangping/Desktop';
ccs_dir='/Users/wangping/Documents/00_toolbox/CCS/01_script/ccs_develop';
spm_dir = [ccs_dir '/extool/spm12'];
ccs_matlab = [ccs_dir '/matlab'];
cifti_matlab = [ccs_dir '/extool/cifti'];
fs_home = '/Applications/freesurfer/7.3.2';
addpath(genpath(ccs_matlab));
addpath(genpath(cifti_matlab));
addpath(genpath([fs_home '/matlab']))

roi_file = ['/Users/wangping/Desktop/FC/script/roi_RehoAlff/lh.frontalpole.label.gii'];
lh_roi_gifti = gifti(roi_file);
lh_roi_mask = lh_roi_gifti.cdata;
lh_roi_mask_index = find(lh_roi_mask>0);
nmask_lh = numel(lh_roi_mask_index);


files = dir(fullfile('/Users/wangping/Desktop/CCS/'));
fSize = size(files);
res = [];
for i=1:fSize(1)
    fileSize = size(files(i).name);
    if fileSize(2) > 3 &&  strcmp(files(i).name(1:3), 'GAA') == 1
        
        
        rh_vol = load_nifti(['/Users/wangping/Desktop/CCS/' files(i).name '/rest/rest.pp.sm0.fsaverage5.lh.nii.gz']);
        dataSize = size(rh_vol.vol);    %check the following 2 values
        if dataSize(4) ~= 235
            files(i).name
            res = [res;0];
            continue
        end
        rest_dts = reshape(rh_vol.vol,10242,235);
        rest_dts_roi = rest_dts(lh_roi_mask_index,:);
        
        load roi_frontalpolenbrs.mat;
        
        cReho_roi = ccshcp_core_reho(rest_dts_roi',lh_nbrs);
        cReho_roi_mean = mean(cReho_roi);
        res = [res;cReho_roi_mean];
        % TR=2;
        % for i = 1:nmask_lh
        % alff_roi(i,1)=ccshcp_core_alff(rest_dts_roi(i,:),TR);
        % end
        
    end
end

