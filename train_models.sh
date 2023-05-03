#! /bin/bash

dataset="$1_speech_dataset.json"
for seed in `seq 41 43`; do
    python run_clm.py \
        --model_name_or_path gpt2 \
        --train_file $dataset \
        --dataset_nickname $1 \
        --per_device_train_batch_size 1 \
        --do_train \
        --output_dir train_models \
        --seed $seed \
        --num_train_epochs 10
done

