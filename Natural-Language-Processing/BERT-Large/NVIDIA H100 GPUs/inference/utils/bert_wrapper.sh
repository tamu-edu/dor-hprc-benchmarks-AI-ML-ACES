#!/bin/bash

pip install boto3
pip install nvidia-pyindex
pip install nvidia-dllogger

bash $SCRATCH/h100-benchmarks/DeepLearningExamples/PyTorch/LanguageModeling/BERT/scripts/run_squad.sh /scratch/data/checkpoints/DLE_BERT_FP16_PyT_LAMB_92_hard_scaling_node.pt ${1} ${2} 3e-5 0.1 ${3} ${4} 1 $BERT_PREP_WORKING_DIR/v1.1 /scratch/data/pytorch-language-modelling-datasets/vocab.txt workspace/bert/results/squad ${5}