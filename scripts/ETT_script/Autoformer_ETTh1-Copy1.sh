export CUDA_VISIBLE_DEVICES=1


python -u run.py \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_48_24 \
  --model Autoformer \
  --data ETTh1 \
  --features M \
  --seq_len 48 \
  --label_len 24 \
  --pred_len 24 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1 > logs/Autoformer_ETTh1_48_24.log 2>&1

python -u run.py \
  --is_training 1 \
  --root_path ./dataset/ETT-small/ \
  --data_path ETTh1.csv \
  --model_id ETTh1_48_72 \
  --model Autoformer \
  --data ETTh1 \
  --features M \
  --seq_len 48 \
  --label_len 24 \
  --pred_len 72 \
  --e_layers 2 \
  --d_layers 1 \
  --factor 3 \
  --enc_in 7 \
  --dec_in 7 \
  --c_out 7 \
  --des 'Exp' \
  --itr 1 > logs/Autoformer_ETTh1_48_72.log 2>&1
