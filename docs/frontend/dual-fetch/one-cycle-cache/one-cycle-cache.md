---
title: 1-cyc cache
parent: Dual-fetch
nav_order: 2
---

# 1-cyc cache
{: .no_toc }

## Table of Contents
{: .no_toc .text-delta }

1. TOC
{:toc}

## Benchmarks (sim-rtl)

One would expect that the number of cycles would be reduced compared to the single-fetch 1-cyc cache version. Unfortunately this is not the case. The speedup is indeed minimal, i.e. 0.1%. This result suggests that the speed is not limited by the frontend throughput, rather limited by the backend processing speed. We will have more discussion on this in the next section (ideal memory).

PS: another unfortunate thing is that we don't have screenshot and we can no longer take it because the access to the instructional account is removed.