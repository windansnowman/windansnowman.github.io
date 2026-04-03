---
title: "Towards Identification and Intervention of Safety-Critical Parameters in Large Language Models"
collection: publications
date: 2026-01-03
pub_year: 2026
paper_id: 3
sort_key: "2026-003"
venue: "ACL （CCF-A）投稿中"
authors: "Weiwei Qi, Zefeng Wu, Tianhang Zheng, Zikang Zhang, Xiaojun Jia, Zhan Qin, Kui Ren"
contribution: "co-first"
excerpt: "This paper introduces the Expected Safety Impact (ESI) framework to identify safety-critical parameters in large language models (LLMs). ESI uses a gradient‑based metric scaled by parameter standard deviation, offering more precise localization than prior methods. The analysis reveals that safety-critical parameters reside in middle‑layer value matrices of dense models but shift to late‑layer MLP experts in MoE models. Based on ESI, two lightweight interventions are proposed: Safety Enhancement Tuning (SET) updates only a small fraction of critical weights to rapidly align unsafe models, and Safety Preserving Adaptation (SPA) freezes safety‑critical parameters while using a safe optimizer (SafeAdamW) to maintain safety during downstream fine‑tuning. Experiments show SET reduces attack success rates by over 50% with <1% parameter updates, and SPA limits safety degradation to within 1% after extensive task adaptation."
header:
  teaser: "/images/wzf_paper3.png"
---

**Authors**: Weiwei Qi, Zefeng Wu, Tianhang Zheng, Zikang Zhang, Xiaojun Jia, Zhan Qin, Kui Ren

**Contribution**: co-first

**Summary**: This paper introduces the Expected Safety Impact (ESI) framework to identify safety-critical parameters in large language models (LLMs). ESI uses a gradient‑based metric scaled by parameter standard deviation, offering more precise localization than prior methods. The analysis reveals that safety-critical parameters reside in middle‑layer value matrices of dense models but shift to late‑layer MLP experts in MoE models. Based on ESI, two lightweight interventions are proposed: Safety Enhancement Tuning (SET) updates only a small fraction of critical weights to rapidly align unsafe models, and Safety Preserving Adaptation (SPA) freezes safety‑critical parameters while using a safe optimizer (SafeAdamW) to maintain safety during downstream fine‑tuning. Experiments show SET reduces attack success rates by over 50% with <1% parameter updates, and SPA limits safety degradation to within 1% after extensive task adaptation.

![Figure](/images/wzf_paper3.png)
