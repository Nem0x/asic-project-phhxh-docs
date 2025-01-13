# Design of a dual-fetch dual-issue out-of-order execution RISC-V CPU with branch predictor
Members: Shuqi Xu, Andris Huang

IMPORTANT: 
- There are two cache versions developed. The base version needs 2 cycles for read and 3 cycles for write if cache hits. `src/Cache.v` and `src/Cache_2.v` are implemented in this way. The second version reduces the number of cycles by 1 for both read and write if cache hits, but with a trade-off of longer clock period. `src/Cache_cont.v` and `src/Cache_cont_2.v` are implemented in the second way. For more details about the second cache version please refer to branch [continuous-cache](https://github.com/EECS-151/asic-project-fa24-phhxh/tree/continuous-cache). The default cache is the base version. The dual-fetch continuous cache is not faster than single-fetch continuous cache. A speculation on the cause is that the number of cycles is likely memory-bound, i.e. limited by the number of cycles needed for sequential memory operations within the data cache.

## Full design diagram
A PDF version with clear details can be found [here](docs/dual_fetch_diagram.pdf)! Comparing to the main branch version, this version only implements dual-fetch frontend on top of the dual-issue backend.

![alt text](docs/dual_fetch_diagram.jpg?raw=true)

## Dual-fetch frontend

<p align="center">
<img src="docs/module_images/frontend.png" alt="dual-fetch_frontend" width="90%"/>
</p>

The dual-fetch frontend is able to supply two PC addresses to the instruction memory (IMEM or icache). The first instruction has three possibile sources, namely feedback branch prediction address, actual branch address from the branch unit when there is misprediction, and reset PC address. This part is the same as single-fetch frontend. The second IMEM input instruction is chosen between branch predictor's prediction and regular PC+4. The PC_reg_2 will output both PC addresses and first PC's branch prediction result. The second PC can serve as the first PC's predicted address.

The IMEM or icache will take two PC adresses when it is ready. It undergoes the same instruction fetch workflow as the single-fetch cache. This makes the second instruction's availability dependent on the address difference compared with the first instruction. It is related to how cache reads data. The cache we use has four data SRAMs to be read simultaneously. The third and the fourth digit of the 32-bit address (addr[3:2]) encodes which SRAM has the desired data. This makes it possible to look at two different SRAMs in the same data fetch cycle. So icache checks if the upper bits of the address (addr[31:4]) is the same for both input PC, if so icache outputs both data and mark them valid. If this condition doesn't hold, then icache only outputs the first valid instruction.

This scheme is good enough to continuously output two adjacent instructions in the same fetch cycle. Assume two adjacent PC addresses PC_in and PC_in+4 are not boundary aligned, i.e. addr[31:4] is not the same, then next instruction fetch cycle icache only outputs the instruction corresponds to PC_in. This single fetch cycle actually corrects the misalignment, so in the following cycles the two PC addresses are all aligned as long as no branch taking prediction is made or no misprediction happens. 

In the case of a predicted branch, if it is fed into the second PC slot, and it is not aligned with the first PC (very likely), then next fetch cycle will only output one valid instruction. Following that a new prediction will be made based on the latest branch history table. The new prediction will serve as the first PC into icache, while the second PC is the next instruction (+4) assuming no continous branch prediction is made (very likely). In the worst case these two PC addresses are also not aligned, so one additional fetch cycle will only output one valid instruction. Following that will be aligned adjacent PC addresses fed into the icache, so the number of valid instructions in each fetch cycle will be increases to two, until the next branch. In summary of the above discussion, the predicted branch can take up to two fetch cycles that icache outputs only one valid instruction, which is totally acceptable.

In the case of a misprediction, the branch address will always sit at the first PC slot, thus at most one fetch cycle will only output one valid instruction to correct for possible misaglinment.


## Dual-fetch test

Using the "final" benchmark as an example, we looked at the waveform and clearly identified dual-fetch pattern. The screenshots are stored [here](docs/dual_fetch_waveform).

## Benchmarks (sim-rtl)

We run the benchmarks with direct-mapped cache. The result is shown below. Comparing to the single-fetch result (main branch), the number of cycles is reduced by 13.4%.

<p align="center">
<img src="docs/bmark_sim-rtl_result/dual-fetch_direct-mapped_cycles.png" alt="dual-fetch_bmark" width="70%"/>
</p>

## Post-PAR

Post-PAR results are NOT up-to-date with the design, but changes are small and won't affect the overall picture. PAR documents are stored in [docs/par_result](docs/par_result).

### Direct-mapped cache

Because 2-way set associative cache doesn't offer better performance for benchmarks, we only PARed direct-mapped cache. We are able to get 9.75ns clock period after PAR. Compared to the single-fetch cpu (main branch), the clock period increased by 0.7ns. The timing report is [here](docs/par_result/direct-mapped_cache/riscv_top_postRoute_all.tarpt). The total time required for running all benchmarks is:
```math
T_{total} = \sum N_{cycles} \times T_{clock} = 50,194,333 \times 9.75ns= 0.489s
```
Compared to the single-fetch cpu, the total time is reduced by 0.035s. Below is the screenshot of the floorplan.

<p align="center">
<img src="docs/par_result/direct-mapped_cache/direct-mapped_floorplan.png" alt="dmap_cache_floorplan" width="50%"/>
</p>