### How to run this walkthrough

1. Open terminal
2. Navigate to where you want your XCP-D runs, and create a folder called `XCPD_test`
3. Navigate into this folder: `cd XCPD_test`
4. Download the singularity image: `singularity build xcp_walkthrough.sif docker://pennlinc/xcp_walkthrough:main`
5. Run the walkthrough!
```
#$ -l h_vmem=40G # Allot at least 40G; this is the format for submitting via an SGE cluster
singularity run --cleanenv -B ~/XCPD_test ~/XCPD_test/xcp_walkthrough.sif /data/EF/derivatives/fmriprep ~/XCPD_test/output --fs-license-file <path_to_Freesurfer_license_file>  participant -vv

```
