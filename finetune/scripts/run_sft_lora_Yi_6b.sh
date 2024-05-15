#/usr/bin/env bash

cd ../sft/

deepspeed main.py \
	--data_path ./yi_qa_example_dataset \
	--model_name_or_path "01-ai/Yi-6B-Chat" \
	--per_device_train_batch_size 8 \
	--per_device_eval_batch_size 8 \
	--max_seq_len 2048 \
	--learning_rate 2e-6 \
	--weight_decay 0. \
	--num_train_epochs 100 \
	--training_debug_steps 10000 \
	--gradient_accumulation_steps 1 \
	--lr_scheduler_type cosine \
	--num_warmup_steps 0 \
	--save_freq 20 \
	--seed 1234 \
	--gradient_checkpointing \
	--zero_stage 2 \
	--deepspeed \
	--offload \
	--lora_dim 128 \
	--lora_module_name "layers." \
	--output_dir ./output_Yi_6b_chat_sft_lora_qa
