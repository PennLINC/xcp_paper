# XCP-D Walkthrough

This repository defines a Docker image containing XCP-D and example data.
When you run the Docker image, it will apply XCP-D to the example data and write out XCP-D derivatives.

The example data are located in `/data/EF/derivatives/fmriprep` within the Docker image.

**NOTE**: You will need to provide your own FreeSurfer license (labeled `<path_to_Freesurfer_license_file>` below).

## How to run this walkthrough

1.  Open terminal
2.  Navigate to where you want your XCP-D outputs to be generated (labeled `<path_to_test_folder>` below).
3.  Download the container:
    -   For Singularity: `singularity build xcp_walkthrough.sif docker://pennlinc/xcp_walkthrough:main`
    -   For Docker: `docker pull pennlinc/xcp_walkthrough:main`
4. Run the walkthrough!

### Singularity command

```bash
#$ -l h_vmem=40G # Allot at least 40G; this is the format for submitting via an SGE cluster
singularity run --cleanenv \
    -B <path_to_test_folder> \
    <path_to_test_folder>/xcp_walkthrough.sif \
    /data/EF/derivatives/fmriprep \
    <path_to_test_folder>/output \
    --fs-license-file <path_to_Freesurfer_license_file> \
    participant \
    -vv
```

### Docker command

```bash
docker run --rm -ti \
    -v <path_to_test_folder>:/out \
    -v <path_to_Freesurfer_license_file>:/license.txt \
    pennlinc/xcp_walkthrough:main \
    /data/EF/derivatives/fmriprep \
    /out \
    --fs-license-file /license.txt \
    participant \
    -vv
```
