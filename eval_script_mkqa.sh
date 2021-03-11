python ml_closedbook_qa/ml_rag/eval_bart.py \
--model_name_or_path /home/vthoma/ml_qa_project/bart_large_nq_xorqa_oracle_cp_9/bart_large_nq_xorqa_oracle_cp_9/ \
--model_type bart \
--evaluation_set /home/vthoma/ml_qa_project/MKQA/test.source \
--gold_data_path  /home/vthoma/ml_qa_project/MKQA/gold_para_qa_data_test.tsv \
--predictions_path /home/vthoma/ml_qa_project/MKQA/e2e_preds_mkqa_model_bart_nq_xorqa.txt \
--gold_data_mode qa \
--recalculate 
