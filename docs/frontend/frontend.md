---
title: Frontend
nav_order: 3
---

# Frontend

We've implemented both single-fetch and dual-fetch frontends, each with three memory latency types: ideal memory, 1-cycle-read cache (1-cyc) and 2-cycle-read cache (2-cyc). Ideal memory always outputs valid data the next cycle after the request. Both 1-cyc and 2-cyc caches take into account the delay in real memory systems. 

All caches in this project are configurable N-way set-associative write-back cache type. They share the same settings: 128-bit cache line, 6-bit index, 20-bit tag, and 4-bit word offset (6-bit byte offset). We mainly tested direct-mapped and 2-way set-associative cache. For direct-mapped cache, the size is 4KiB. For a 2-way set associative cache, the size is 8KiB. 

The table below summarizes the number of cycles for various scenarios involving caches with two latency types: 1-cyc and 2-cyc.

| Case                             | 1-cyc cache (# cycles) | 2-cyc cache (# cycles) |
|:---------------------------------|:-----------------------|:-----------------------|
| read hit                         | 1                      | 2                      |
| write hit                        | 2                      | 3                      |
| read miss => load                | 6                      | 6                      |
| write miss => load               | 7                      | 7                      |
| read miss => write back => load  | 14                     | 14                     |
| write miss => write back => load | 15                     | 15                     |