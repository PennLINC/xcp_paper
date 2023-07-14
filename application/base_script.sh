xcp_d \
    --participant_label 01
    -t rest \
    # --bids-filter-file ??? \  # No filtering needed
    --combineruns \
    --cifti \
    --nthreads 1 \
    --omp-nthreads 1 \
    --mem_gb 10 \
    # --use-plugin ??? \  # No Nipype plugin
    -v \
    --input-type fmriprep \
    --smoothing 2 \
    --despike \
    -p 36P \
    # -c ??? \  # No custom confounds
    --min_coverage 0.5 \  # Parcels must have 50% coverage to be retained
    --min_time 100 \  # Runs must have 100 seconds of low-motion data to be processed
    --dummy-scans auto \  # Infer the number of dummy scans from the fMRIPrep confounds file
    --random-seed 0 \  # Random seed for the exact-time subsampling
    # --disable-bandpass-filter \  # Bandpass filter will be used
    --lower-bpf 0.01 \
    --upper-bpf 0.08 \
    --bpf-order 2 \
    --motion-filter-type notch \
    --band-stop-min 12 \
    --band-stop-max 18 \
    --motion-filter-order 4 \
    --head-radius auto \
    --fd-thresh 0.3 \  # may adjust for each dataset's TR to equal 0.3 mm/sec
    --exact-time 300 600 \  # 5- and 10-minute correlation matrices
    -w work_dir \
    # --clean-workdir \
    # --resource-monitor \
    # --notrack \
    --warp-surfaces-native2std \
    --dcan-qc \
    fmri_dir \
    output_dir \
    participant
