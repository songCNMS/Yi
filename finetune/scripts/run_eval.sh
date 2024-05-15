#/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE[0]}")/../sft/"

python prompt_eval.py \
	--model_name_or_path_base="01-ai/Yi-6B-Chat"\
	--model_name_or_path_finetune="./output_Yi_6b_chat_sft_lora_qa/final" \
	--language Other
