# Publications Input Template

Use this file to collect publication info before I format it into your homepage.

Rules:
- Only Title and Authors are strongly recommended.
- Everything else is optional.
- Missing fields are OK. I will auto-hide empty items.

---

## Paper 1
Title:Catch Me If You Can: Retain High Stealthiness and Durability of Backdoor Attack in Federated Learning
Authors:Yilong Yang, Xinjing Liu, Zefeng Wu, Zhuoran Ma, Yong Zeng, Xianjia Meng, Zhuo Ma
Status/Venue:TIFS（CCF-A）
Year:2025
Summary:This paper proposes ReBA, a backdoor attack against Federated Learning (FL) that improves stealthiness and durability. Unlike prior brute‑amplification or evasive strategies, ReBA uses an adaptive proactive boosting approach: (1) it computes a durable importance metric (via Fisher information) to assign higher update weights to backdoor‑related parameters, and (2) it adaptively tunes the amplification factor to keep malicious updates within the benign distance space. Experiments on three datasets and against 14 defenses show ReBA outperforms 12 baselines, achieving high attack success rates and significantly longer backdoor persistence, even with only one malicious client.

Links:
- Paper:https://ieeexplore.ieee.org/abstract/document/11275864/
- Code:
- Project:
- Video:

Media:
- Image file:images\wzf_paper1.png

Notes:
- Contribution (first-author/co-first/corresponding):first-student author
- Award/Oral/Spotlight:

---

## Paper 2
Title:IOShift: Backdoor Defense via Model Bias Shift in Federated Learning
Authors:Yilong Yang, Zefeng Wu, Yang Liu, Boyun Zhang, Weisheng Dong, Bin Xiao, Zhuo Ma
Status/Venue:ACM MM（CCF-A）Submission 
Year:2026
Summary:This paper proposes IOSHift, a defense framework against backdoor attacks in federated learning. It reveals that backdoor implantation causes a measurable bias shift between in‑distribution (ID) and out‑of‑distribution (OOD) data: the model becomes overly confident on OOD data toward the target class while suppressing ID bias. IOSHift detects malicious updates by computing the IOSHift score (difference in soft‑label biases on ID vs. OOD data) and removes backdoors via adaptive pruning of neurons critical to the backdoor. Extensive experiments on CIFAR‑10 and Tiny‑ImageNet under non‑IID settings show that IOSHift outperforms state‑of‑the‑art defenses (e.g., FLAME, FDCR, Indicator, AlignIns) in true positive rate, false positive rate, and attack success rate reduction.

Links:
- Paper:https://openreview.net/forum?id=4E9uxVIAFP
- Code:
- Project:
- Video:

Media:
- Image file:images\wzf_paper2.png

Notes:
- Contribution (first-author/co-first/corresponding):co-first
- Award/Oral/Spotlight:

---

## Paper 3
Title:Towards Identification and Intervention of Safety-Critical Parameters in Large Language Models
Authors:Weiwei Qi, Zefeng Wu, Tianhang Zheng, Zikang Zhang, Xiaojun Jia, Zhan Qin, Kui Ren
Status/Venue:ACL （CCF-A）Submission 
Year:2026
Summary:This paper introduces the Expected Safety Impact (ESI) framework to identify safety-critical parameters in large language models (LLMs). ESI uses a gradient‑based metric scaled by parameter standard deviation, offering more precise localization than prior methods. The analysis reveals that safety-critical parameters reside in middle‑layer value matrices of dense models but shift to late‑layer MLP experts in MoE models. Based on ESI, two lightweight interventions are proposed: Safety Enhancement Tuning (SET) updates only a small fraction of critical weights to rapidly align unsafe models, and Safety Preserving Adaptation (SPA) freezes safety‑critical parameters while using a safe optimizer (SafeAdamW) to maintain safety during downstream fine‑tuning. Experiments show SET reduces attack success rates by over 50% with <1% parameter updates, and SPA limits safety degradation to within 1% after extensive task adaptation.



Links:
- Paper:
- Code:
- Project:
- Video:

Media:
- Image file:images\wzf_paper3.png

Notes:
- Contribution (first-author/co-first/corresponding):co-first
- Award/Oral/Spotlight:
