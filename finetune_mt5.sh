# Add parent directory to python path to access lightning_base.py

python ml_closedbook_qa/ml_rag/finetune_rag.py \
	--data_dir NQ \ 
	--output_dir bart_nq_test \
	--model_name_or_path facebook/bart-large \
	--model_type bart \
	--gpus 2 \
	--do_train \
	--do_predict \
--train_batch_size 8 \
--eval_batch_size 1 \
--max_source_length 32 \
--max_target_length 20 \
--val_max_target_length 25 \
--test_max_target_length 25 \
--label_smoothing 0.1 \
--dropout 0.1 \
--num_train_epochs 50 \
--warmup_steps 500 \
--learning_rate 1e-05 \
--adam_epsilon 1e-08 \
--max_grad_norm 1.0 \
--gradient_accumulation_steps 2


