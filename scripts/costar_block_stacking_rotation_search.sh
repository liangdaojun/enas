python enas/cifar10/main.py --data_format="NHWC" --search_for="micro" --reset_output_dir --output_dir="stacking_outputs_rotation" --batch_size=32 --num_epochs=600 --log_every=50 --eval_every_epochs=1 --child_use_aux_heads --child_num_layers=6 --child_out_filters=32 --child_l2_reg=1e-4 --child_num_branches=5 --child_num_cells=3 --child_keep_prob=0.90 --child_drop_path_keep_prob=0.60 --child_optimizer="sgd" --child_lr_cosine --child_lr_max=0.5 --child_lr_min=0.0005 --child_lr_T_0=10 --child_lr_T_mul=2 --controller_training --controller_search_whole_channels --controller_entropy_weight=0.0001 --controller_train_every=1 --controller_sync_replicas --controller_num_aggregate=10 --controller_train_steps=30 --controller_lr=0.0035 --controller_tanh_constant=1.10 --controller_op_tanh_reduce=2.5 --data_path="~/.keras/datasets/costar_block_stacking_dataset_v0.2/*success.h5f" --dataset="stacking" --height_img 96 --width_img 96 --rotation_only --max_loss=1