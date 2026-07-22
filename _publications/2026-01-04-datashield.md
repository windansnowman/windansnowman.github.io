---
title: "DataShield: Uncovering Risky Fine-Tuning Data Across LLMs Through Consensus Subspace Alignment"
collection: publications
date: 2026-01-04
pub_year: 2026
paper_id: 4
sort_key: "2026-004"
authors: "Zefeng Wu, Weiwei Qi, Jielong Chen, Tianhang Zheng, Di Hong, Chaochao Lu, Liang He, Zhan Qin, Kui Ren"
contribution: "first-author"
codeurl: "https://github.com/ZJU-LLM-Safety/DataShield"
header:
  teaser: "/images/wzf_paper4_datashield.png"
---

**Authors**: Zefeng Wu, Weiwei Qi, Jielong Chen, Tianhang Zheng, Di Hong, Chaochao Lu, Liang He, Zhan Qin, Kui Ren

**Contribution**: first-author

**Summary**: Fine-tuning large language models (LLMs) on domain-specific datasets has become a standard paradigm for adapting LLMs to specialized applications. However, recent work has shown that even fine-tuning on benign task-specific data can substantially weaken the safety capabilities of LLMs. While existing efforts have made progress in identifying data responsible for safety degradation, they usually rely on a single mean vector computed over a specific model with its tokenizer to represent the safety direction, which limits both the effectiveness and transferability of their risk assessment measures. To address these limitations, DataShield identifies risky fine-tuning samples and response segments through consensus subspace alignment over joint safety-critical semantic spaces derived from multiple safety-aligned LLMs. Within these spaces, DataShield extracts consensus safe and unsafe subspaces using semantic spectral decomposition over safe and unsafe data representations. The risk of a data sample or segment is then estimated by measuring its relative alignment with the unsafe and safe subspaces, enabling both sample-level filtering and fine-grained segment-level masking. Compared with state-of-the-art filtering and masking baselines, DataShield reduces ASR by 14.6% with sample filtering and 32.3% with segment masking, while preserving downstream utility and avoiding target-model-specific risk computation.

**Links**:
- [Code](https://github.com/ZJU-LLM-Safety/DataShield)

![Figure](/images/wzf_paper4_datashield.png)
