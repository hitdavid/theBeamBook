[![Build Status](https://travis-ci.org/happi/theBeamBook.svg?branch=master)](https://travis-ci.org/happi/theBeamBook)

# The BEAM Book 简体中文翻译

中文翻译工程，翻译人 hitdavid，诚邀共同翻译者，可以邮件到 hitdavid@gmail.com 或者其他方式联系我。

由于原书未出版，目前翻译工作是义工，欢迎 star 同时接受捐赠，多少不限。您的资助是对我最好的鼓励。

当前翻译版本预览：[Github IO page](https://hitdavid.github.io/theBeamBook/site/). （最新进展：翻译完成前 6 章）

BitCoin Address: 12JdwAdCZugkrtiPwCGaT4qetbixvZM4Dg

支付宝二维码:

![images/alipay.jpg](images/alipay.jpg)



附当前翻译进展：

Table of Contents

- [x] Preface

  - [x] [阅读方法](#_阅读方法)
  - [x] [Erlang](#_erlang)
  - [x] [致谢](#_致谢)

- [x] I: 理解 ERTS

  - [x] 1. Erlang 运行时系统介绍

    - [x] [1.1. ERTS 和 Erlang 运行时系统](#_erts_和_erlang_运行时系统)
    - [x] [1.2. 如何阅读本书](#_如何阅读本书)
    - [x] 1.3. ERTS
      - [x] [1.3.1. Erlang 节点 (ERTS)](#_erlang_节点_erts)
      - [x] [1.3.2. 执行环境中的分层](#_执行环境中的分层)
      - [x] [1.3.3. 分布式](#_分布式)
      - [x] [1.3.4. Erlang 编译器](#_erlang_编译器)
      - [x] [1.3.5. Erlang 虚拟机: BEAM](#_erlang_虚拟机_beam)
      - [x] [1.3.6. 进程](#_进程)
      - [x] [1.3.7. 调度器](#_调度器)
      - [x] [1.3.8. Erlang 标签方案](#_erlang_标签方案)
      - [x] [1.3.9. 内存处理](#_内存处理)
      - [x] [1.3.10. 解释器和命令行接口](#_解释器和命令行接口)
    - [x] 1.4. 其他的 Erlang 实现
      - [x] [1.4.1. Erlang on Xen](#_erlang_on_xen)
      - [x] [1.4.2. Erjang](#_erjang)

  - [x] 2. 编译器

    - [x] [2.1. 编译 Erlang](#_编译_erlang)
    - [x] [2.2. 产生中间结果输出](#_产生中间结果输出)
    - [x] 2.3. 编译器的遍（Pass）
      - [x] [2.3.1. 编译器 Pass: Erlang 预处理器 (epp)](#_编译器_pass_erlang_预处理器_epp)
      - [x] [2.3.2. 编译器 Pass: 解析转换（Parse Transformations)](#SEC-parse_transform)
      - [x] [2.3.3. 编译器 Pass: Linter](#_编译器_pass_linter)
      - [x] [2.3.4. 编译器 Pass: 保存抽象语法树（AST）](#_编译器_pass_保存抽象语法树ast)
      - [x] [2.3.5. 编译器 Pass: Expand](#_编译器_pass_expand)
      - [x] [2.3.6. 编译器 Pass: Core Erlang](#_编译器_pass_core_erlang)
      - [x] [2.3.7. 编译器 Pass: Kernel Erlang](#_编译器_pass_kernel_erlang)
      - [x] [2.3.8. 编译器 Pass: BEAM 码](#_编译器_pass_beam_码)
      - [x] [2.3.9. 编译器 Pass: 本地（Native）码](#_编译器_pass_本地native码)
    - [x] 2.4. 其他编译器工具
      - [x] [2.4.1. Leex](#_leex)
      - [x] [2.4.2. Yecc](#_yecc)
    - [x] [2.5. 语法工具和 Merl](#_语法工具和_merl)
    - [x] [2.6. 编译 Elixir](#_编译_elixir)

  - [x] 3. 进程

    - [x] 3.1. 什么是进程？
      - [x] [3.1.1. 从终端获得进程列表](#_从终端获得进程列表)
      - [x] [3.1.2. 程序化的进程探查](#_程序化的进程探查)
      - [x] [3.1.3. 使用 Observer 检查进程](#_使用_observer_检查进程)
    - [x] [3.2. 进程就是内存](#_进程就是内存)
    - [x] [3.3. 进程控制块（PCB）](#_进程控制块pcb)
    - [x] [3.4. 垃圾收集器 (GC)](#_垃圾收集器_gc)
    - [x] 3.5. 信箱（Mailbox）和消息传递
      - [x] [3.5.1. 并行发送消息](#_并行发送消息)
    - [x] 3.6. 无锁消息传递
      - [x] [3.6.1. 消息的内存区域](#_消息的内存区域)
      - [x] [3.6.2. 检查消息处理](#_检查消息处理)
      - [x] [3.6.3. 向进程发送消息的过程](#_向进程发送消息的过程)
      - [x] [3.6.4. 消息接收](#_消息接收)
      - [x] [3.6.5. 消息传递调优](#_消息传递调优)
    - [x] [3.7. 进程字典（PD）](#_进程字典pd)
    - [x] [3.8. 深入](#_深入)

  - [x] 4. Erlang 类型系统和标签

    - [x] [4.1. Erlang 类型系统](#_erlang_类型系统)
    - [x] 4.2. 标签方案
      - [x] [4.2.1. 即时类型的标签](#_即时类型的标签)
      - [x] [4.2.2. 装箱项式的标签](#_装箱项式的标签)

  - [x] 5. Erlang 虚拟机: BEAM

    - [x] [5.1. 工作内存: 堆栈机？并不是！](#_工作内存_堆栈机并不是)
    - [x] [5.2. 分派(Dispatch)：直接线程代码](#_分派dispatch直接线程代码)
    - [x] [5.3. 调度：非抢占，规约值计数](#_调度非抢占规约值计数)
    - [x] [5.4. 内存管理：垃圾收集](#_内存管理垃圾收集)
    - [x] [5.5. BEAM: 一个虚拟机](#_beam_一个虚拟机)

  -  [x] [6. 模块和 BEAM 文件格式 ](#CH-beam_modules)

    -  [x] [6.1. 模块](#modules)（原书未完成）
    -  [x] 6.2. BEAM 文件格式
      -  [x] [6.2.1. 原子表块](#atom_table_chunk)
      -  [x] [6.2.2. 导出表块](#export_table_chunk)
      -  [x] [6.2.3. 导入表块](#import_table_chunk)
      -  [x] [6.2.4. 代码块](#code_chunk)
      -  [x] [6.2.5. 字符串表块](#_字符串表块)
      -  [x] [6.2.6. 属性块](#_属性块)
      -  [x] [6.2.7. 编译信息块](#_编译信息块)
      -  [x] [6.2.8. 局部函数表块](#_局部函数表块)
      -  [x] [6.2.9. 文字表块](#_文字表块)
      -  [x] [6.2.10. 抽象代码块](#_抽象代码块)
      -  [x] [6.2.11. 压缩和加密](#_压缩和加密)（原书未完成）
      -  [x] [6.2.12. 函数跟踪块 (已过时)](#_函数跟踪块_已过时)
      -  [x] [6.2.13. 整合回顾](#_整合回顾)（原书未完成）
      -  [x] [6.2.14. 紧凑的项式编码](#SEC-BeamModulesCTE)

  - 7. Generic BEAM Instructions (25p)

    - [ ] [7.1. Instruction definitions](#_instruction_definitions)
    - [ ] [7.2. BEAM code listings](#_beam_code_listings)
    - [ ] [7.3. Calls](#_calls)
    - [ ] [7.4. Stack (and Heap) Management](#_stack_and_heap_management)
    - 7.5. Message Passing
      - [ ] [7.5.1. A Minimal Receive Loop](#_a_minimal_receive_loop)
      - [ ] [7.5.2. A Selective Receive Loop](#_a_selective_receive_loop)
      - [ ] [7.5.3. A Receive Loop With a Timeout](#_a_receive_loop_with_a_timeout)
      - [ ] [7.5.4. The Synchronous Call Trick (aka The Ref Trick)](#_the_synchronous_call_trick_aka_the_ref_trick)

  - 8. Different Types of Calls, Linking and Hot Code Loading (5p)

    - [ ] [8.1. Hot Code Loading](#_hot_code_loading)
    - [ ] [8.2. Code Loading](#_code_loading)

  - 9. The BEAM Loader

    - [ ] [9.1. Transforming from Generic to Specific instructions](#_transforming_from_generic_to_specific_instructions)
    - 9.2. Understanding ops.tab
      - [ ] [9.2.1. Transformations](#_transformations)
      - [ ] [9.2.2. Specific instruction](#_specific_instruction)
    - 9.3. Optimizations
      - [ ] [9.3.1. select_val optimizations](#_select_val_optimizations)
      - [ ] [9.3.2. pre-hashing of literals](#_pre_hashing_of_literals)

  - [ ] [10. BEAM Internal Instructions](#CH-Internal_instructions)

  - 11. Scheduling

    - [ ] [11.1. Concurrency, Parallelism, and Preemptive Multitasking](#_concurrency_parallelism_and_preemptive_multitasking)
    - [ ] [11.2. Preemptive Multitasking in ERTS Cooperating in C](#_preemptive_multitasking_in_erts_cooperating_in_c)
    - 11.3. Reductions
      - [ ] [11.3.1. How Many Reductions Will You Get?](#_how_many_reductions_will_you_get)
      - [ ] [11.3.2. What is a Reduction Really?](#_what_is_a_reduction_really)
    - [ ] [11.4. The Process State (or *status*)](#_the_process_state_or_status)
    - 11.5. Process Queues
      - [ ] [11.5.1. The Ready Queue](#_the_ready_queue)
      - [ ] [11.5.2. Waiting, Timeouts and the Timing Wheel](#_waiting_timeouts_and_the_timing_wheel)
    - [ ] [11.6. Ports](#_ports)
    - [ ] [11.7. Reductions](#_reductions_2)
    - [ ] [11.8. The Scheduler Loop](#_the_scheduler_loop)
    - 11.9. Load Balancing
      - [ ] [11.9.1. Task Stealing](#_task_stealing)
      - [ ] [11.9.2. Migration](#_migration)

  - 12. The Memory Subsystem: Stacks, Heaps and Garbage Collection

    - [ ] [12.1. The memory subsystem](#_the_memory_subsystem)
    - 12.2. Different type of memory allocators
      - [ ] [12.2.1. The basic allocator: sys_alloc](#_the_basic_allocator_sys_alloc)
      - [ ] [12.2.2. The memory segment allocator: mseg_alloc](#_the_memory_segment_allocator_mseg_alloc)
      - [ ] [12.2.3. The memory allocator framework: alloc_util](#_the_memory_allocator_framework_alloc_util)
      - [ ] [12.2.4. The temporary allocator: temp_alloc](#_the_temporary_allocator_temp_alloc)
      - [ ] [12.2.5. The heap allocator: eheap_alloc](#_the_heap_allocator_eheap_alloc)
      - [ ] [12.2.6. The binary allocator: binary_alloc](#_the_binary_allocator_binary_alloc)
      - [ ] [12.2.7. The ETS allocator: ets_alloc](#_the_ets_allocator_ets_alloc)
      - [ ] [12.2.8. The driver allocator: driver_alloc](#_the_driver_allocator_driver_alloc)
      - [ ] [12.2.9. The short lived allocator: sl_alloc](#_the_short_lived_allocator_sl_alloc)
      - [ ] [12.2.10. The long lived allocator: ll_alloc](#_the_long_lived_allocator_ll_alloc)
      - [ ] [12.2.11. The fixed size allocator: fix_alloc](#_the_fixed_size_allocator_fix_alloc)
      - [ ] [12.2.12. The standard allocator: std_alloc](#_the_standard_allocator_std_alloc)
    - [ ] [12.3. TODO: system flags for memory](#_todo_system_flags_for_memory)
    - 12.4. Process Memory
      - [ ] [12.4.1. Term sharing](#_term_sharing)
      - [ ] [12.4.2. Message passing](#_message_passing_2)
      - [ ] [12.4.3. Binaries](#SS-Binaries)
      - [ ] [12.4.4. Garbage Collection](#_garbage_collection)
    - 12.5. Other interesting memory areas
      - [ ] [12.5.1. The atom table.](#_the_atom_table)

  - [ ] [13. Advanced data structures (ETS, DETS, Mnesia)](#CH-DataStructures)

  - 14. IO, Ports and Networking (10p)

    - [ ] [14.1. Standard IO](#_standard_io)
    - 14.2. Ports
      - [ ] [14.2.1. Different types of Ports](#_different_types_of_ports)
    - [ ] [14.3. Distributed Erlang](#_distributed_erlang)
    - [ ] [14.4. Sockets, UDP and TCP](#_sockets_udp_and_tcp)

  - [ ] [15. Distribution](#CH-Distribution)

  - [ ] [16. Interfacing C — BIFs NIFs and Linked in Drivers](#CH-C)

  - [ ] [17. Native Code](#CH-Native)

- II: 运行 ERTS

  - [ ] [18. 跟踪](#CH-Tracing)
  - 19. 调试
    - [ ] [19.1. Preliminary Outline](#_preliminary_outline)
    - [ ] [19.2. Introduction](#_introduction)
    - [ ] [19.3. debugger](#_debugger)
    - [ ] [19.4. dbg](#_dbg)
    - 19.5. Redbug
      - [ ] [19.5.1. Installing Redbug](#_installing_redbug)
      - [ ] [19.5.2. Using Redbug](#_using_redbug)
    - [ ] [19.6. Crash Dumps](#_crash_dumps)
  - 20. 运维
    - [ ] [20.1. Connecting to the System](#_connecting_to_the_system)
    - 20.2. The Shell
      - [ ] [20.2.1. Configuring Your Shell](#_configuring_your_shell)
      - [ ] [20.2.2. Connecting a Shell to a Node](#_connecting_a_shell_to_a_node)
      - [ ] [20.2.3. Breaking (out or in).](#_breaking_out_or_in)
  - [ ] [21. 调整运行时系统](#CH-Tweak)

- Appendix A: 构造 Erlang 运行时系统

  - A.1. First Time Build
    - [ ] [A.1.1. Prerequisites](#_prerequisites)
  - [ ] [A.2. Getting the source](#_getting_the_source)
  - [ ] [A.3. Building with Kerl](#_building_with_kerl)

- Appendix B: BEAM 指令

  - B.1. Functions and Labels
    - [ ] [B.1.1. label Lbl](#_label_lbl)
    - [ ] [B.1.2. func_info Module Function Arity](#_func_info_module_function_arity)
  - B.2. Test instructions
    - [ ] [B.2.1. Type tests](#_type_tests)
    - [ ] [B.2.2. Comparisons](#_comparisons)
  - B.3. Function Calls
    - [ ] [B.3.1. call Arity Label](#_call_arity_label)
    - [ ] [B.3.2. call_only Arity Label](#_call_only_arity_label)
    - [ ] [B.3.3. call_last Arity Label Deallocate](#_call_last_arity_label_deallocate)
    - [ ] [B.3.4. call_ext Arity Destination](#_call_ext_arity_destination)
    - [ ] [B.3.5. call_ext_only Arity Destination](#_call_ext_only_arity_destination)
    - [ ] [B.3.6. call_ext_last Arity Destination Deallocate](#_call_ext_last_arity_destination_deallocate)
    - [ ] [B.3.7. bif0 Bif Reg, bif[1,2\] Lbl Bif [ ] [Arg,…] Reg](#_bif0_bif_reg_bif12_lbl_bif_arg_reg)
    - [ ] [B.3.8. gc_bif[1-3\] Lbl Live Bif [ ] [Arg, …] Reg](#_gc_bif1_3_lbl_live_bif_arg_reg)
    - [ ] [B.3.9. call_fun Arity](#_call_fun_arity)
    - [ ] [B.3.10. apply Arity](#_apply_arity)
    - [ ] [B.3.11. apply_last Arity Dealloc](#_apply_last_arity_dealloc)
  - B.4. Stack (and Heap) Management
    - [ ] [B.4.1. allocate StackNeed Live](#_allocate_stackneed_live)
    - [ ] [B.4.2. allocate_heap StackNeed HeapNeed Live](#_allocate_heap_stackneed_heapneed_live)
    - [ ] [B.4.3. allocate_zero StackNeed Live](#_allocate_zero_stackneed_live)
    - [ ] [B.4.4. allocate_heap_zero StackNeed HeapNeed Live](#_allocate_heap_zero_stackneed_heapneed_live)
    - [ ] [B.4.5. test_heap HeapNeed Live](#_test_heap_heapneed_live)
    - [ ] [B.4.6. init N](#_init_n)
    - [ ] [B.4.7. deallocate N](#_deallocate_n)
    - [ ] [B.4.8. return](#_return)
    - [ ] [B.4.9. trim N Remaining](#_trim_n_remaining)
  - B.5. Moving, extracting, modifying data
    - [ ] [B.5.1. move Source Destination](#_move_source_destination)
    - [ ] [B.5.2. get_list Source Head Tail](#_get_list_source_head_tail)
    - [ ] [B.5.3. get_tuple_element Source Element Destination](#_get_tuple_element_source_element_destination)
    - [ ] [B.5.4. set_tuple_element NewElement Tuple Position](#_set_tuple_element_newelement_tuple_position)
  - B.6. Building terms.
    - [ ] [B.6.1. put_list Head Tail Destination](#_put_list_head_tail_destination)
    - [ ] [B.6.2. put_tuple Size Destination](#_put_tuple_size_destination)
    - [ ] [B.6.3. put Value](#_put_value)
    - [ ] [B.6.4. make_fun2 LambdaIndex](#_make_fun2_lambdaindex)
  - B.7. Binary Syntax
    - [ ] [B.7.1. bs_put_integer/5](#_bs_put_integer5)
    - [ ] [B.7.2. bs_put_binary/5](#_bs_put_binary5)
    - [ ] [B.7.3. bs_put_float/5](#_bs_put_float5)
    - [ ] [B.7.4. bs_put_string/2](#_bs_put_string2)
    - [ ] [B.7.5. bs_init2/6](#_bs_init26)
    - [ ] [B.7.6. bs_add/5](#_bs_add5)
    - [ ] [B.7.7. bs_start_match2/5](#_bs_start_match25)
    - [ ] [B.7.8. bs_get_integer2/7](#_bs_get_integer27)
    - [ ] [B.7.9. bs_get_float2/7](#_bs_get_float27)
    - [ ] [B.7.10. bs_get_binary2/7](#_bs_get_binary27)
    - [ ] [B.7.11. bs_skip_bits2/5](#_bs_skip_bits25)
    - [ ] [B.7.12. bs_test_tail2/3](#_bs_test_tail23)
    - [ ] [B.7.13. bs_save2/2](#_bs_save22)
    - [ ] [B.7.14. bs_restore2/2](#_bs_restore22)
    - [ ] [B.7.15. bs_context_to_binary/1](#_bs_context_to_binary1)
    - [ ] [B.7.16. bs_test_unit/3](#_bs_test_unit3)
    - [ ] [B.7.17. bs_match_string/4](#_bs_match_string4)
    - [ ] [B.7.18. bs_init_writable/0](#_bs_init_writable0)
    - [ ] [B.7.19. bs_append/8](#_bs_append8)
    - [ ] [B.7.20. bs_private_append/6](#_bs_private_append6)
    - [ ] [B.7.21. bs_init_bits/6](#_bs_init_bits6)
    - [ ] [B.7.22. bs_get_utf8/5](#_bs_get_utf85)
    - [ ] [B.7.23. bs_skip_utf8/4](#_bs_skip_utf84)
    - [ ] [B.7.24. bs_get_utf16/5](#_bs_get_utf165)
    - [ ] [B.7.25. bs_skip_utf16/4](#_bs_skip_utf164)
    - [ ] [B.7.26. bs_get_utf32/5](#_bs_get_utf325)
    - [ ] [B.7.27. bs_skip_utf32/4](#_bs_skip_utf324)
    - [ ] [B.7.28. bs_utf8_size/3](#_bs_utf8_size3)
    - [ ] [B.7.29. bs_put_utf8/3](#_bs_put_utf83)
    - [ ] [B.7.30. bs_utf16_size/3](#_bs_utf16_size3)
    - [ ] [B.7.31. bs_put_utf16/3](#_bs_put_utf163)
    - [ ] [B.7.32. bs_put_utf32/3](#_bs_put_utf323)
  - B.8. Floating Point Arithmetic
    - [ ] [B.8.1. fclearerror/0](#_fclearerror0)
    - [ ] [B.8.2. fcheckerror/1](#_fcheckerror1)
    - [ ] [B.8.3. fmove/2](#_fmove2)
    - [ ] [B.8.4. fconv/2](#_fconv2)
    - [ ] [B.8.5. fadd/4](#_fadd4)
    - [ ] [B.8.6. fsub/4](#_fsub4)
    - [ ] [B.8.7. fmul/4](#_fmul4)
    - [ ] [B.8.8. fdiv/4](#_fdiv4)
    - [ ] [B.8.9. fnegate/3](#_fnegate3)
  - B.9. Pattern Matching
    - [ ] [B.9.1. select_val](#_select_val)
    - [ ] [B.9.2. select_arity_val](#_select_arity_val)
    - [ ] [B.9.3. jump](#_jump)
  - B.10. Exception handling
    - [ ] [B.10.1. catch/2](#_catch2)
    - [ ] [B.10.2. catch_end/1](#_catch_end1)
    - [ ] [B.10.3. badmatch/1](#_badmatch1)
    - [ ] [B.10.4. if_end/0](#_if_end0)
    - [ ] [B.10.5. case_end/1](#_case_end1)
  - B.11. Meta instructions
    - [ ] [B.11.1. on_load](#_on_load)
    - [ ] [B.11.2. line](#_line)
  - [ ] [B.12. Generic Instructions](#_generic_instructions)
  - B.13. Specific Instructions
    - [ ] [B.13.1. List of all BEAM Instructions](#_list_of_all_beam_instructions)

- [ ] [Appendix C: 全部代码清单](#AP-listings)

- [ ] [References](#BIB-References)



# The BEAM Book

This is an attempt to document the internals of the Erlang runtime
system and the Erlang virtual machine known as the BEAM.

You can read or download the book as a PDF from the [latest
stable release](https://github.com/happi/theBeamBook/releases/latest)
or [online as a webpage](https://happi.github.io/theBeamBook/).

The book is written in AsciiDoc and most of it can be read directly
from source on GitHub in your browser. To read the book online just
open the file [book.asciidoc](book.asciidoc).

You can also read it as an [Github IO page](https://hitdavid.github.io/theBeamBook/site/).

## Contributing

The plan is to make this book project into a collaboration effort so
that we can get a complete documentation of the Erlang runtime system
as soon as possible. Please feel free to contribute since this work is
far from done.

You can contribute by raising an issue, comment on open issues
or create a branch with a fix or an addition.

Note that the book is released under a Creative Commons license (see below)
and anything you contribute will also be included under that license.

The chapters in the book can be in one of four states:

1. Placeholder, basically only the title and perhaps an outline of the
chapter is done. If you are interested in writing the chapter or parts
of the chapter grab the corresponding issue and start writing.
2. First draft, most of the text is in place but more editing is needed.
Feel free to comment, focusing on missing content, hard to read passages,
the order of sections within the chapter, diagrams or pictures needed,
and plain errors.
3. Final draft, spelling and other errors probably still need fixing.
4. Done (for OTP version X), if things changes in later versions of
Erlang OTP the chapter will need an update.

(Not all chapters are yet marked in this way.)

### Style guide

There are several ways to use AsciiDoc and some constructs work
better in some environments or for some targets.

The priority of the AsciiDoc code in this project is that it
renders nicely for the following targets in the following order:
1. The PDF target
2. The HTML target
3. View directly on GitHub

We will try to come up with specific guides for which AsciiDoc
constructs to use and add them here as we discover what works
and what doesn't work.

<!-- #### The AsciiDoc dialect to use -->

#### Comments in AsciiDoc
Each chapter should begin with a comment about the status of
the chapter. This should be one of 'Placeholder', 'First Draft',
'Final Draft', or 'Done (for Erlang X.X)'.
There can also be a link to an issue describing what is needed
to bring the chapter to the next level.

A comment in the code starts with '//'.

<!-- #### Callouts
     What type of callout to use and for what (note, warning etc.)

-->

#### Linking to OTP/Erlang source code

When refering to the source code of Erlang/OTP please add
a link to a tagged version (not to master) of the code on GitHub,
as in:

----
<pre>
 link:https://github.com/erlang/otp/blob/OTP-19.1/erts/emulator/beam/erl_time.h[erl_time.h]
</pre>
----

#### Directory structure and build

Try to keep the root directory clean.

Put each chapter in a separate .asciidoc file in the chapters directory.
Use underscores "_" to separate words in chapter names but try to use
just one-word file names for the chapters.

Put code used in a chapter in code/CHAPTERNAME_chapter/src, and add an
include of the code in ap-code_listings.asciidoc.

Put images in the images directory.

#### How to tag chapters, sections, figures

The following is not yet done consistently so please feel
free to contribute by fixing tags in the current version.

Chapter tags should start with 'CH-'. Words in a tag are separated by
underscores '_'.

Part tags should start with 'P-'.

Section tags should start with 'SEC-'.

Figure tags should start with 'FIG-'.

Appendix tags should start with 'AP-'.

Code listing tags (in the appendix) should start with 'LISTING-'.

### Process

If you find something you do not understand or which is incorrect
please raise an issue in the [issue tracker](https://github.com/happi/theBeamBook/issues).

If you find spelling or formatting errors feel free to fix them and
just make a pull request.

For larger rewrites check the status of the chapter and check the
issues to see if someone is likely to be working on that chapter
right now. If someone else is working on the chapter try to contact
that person before doing a major rewrite. Otherwise either just go
ahead and do the rewrite and do a pull request or start by opening
an issue declaring what you intend to do.


## Building the PDF locally from source

The project contains a makefile which
will let you build your own PDF from the source, provided
that you have all the needed tools installed.

### Docker

Docker images with asciidoctor is available here: [dcoker-asciidoctor](https://github.com/asciidoctor/docker-asciidoctor)

### Linux
WIP, to be updated
```shell
make
```

### Mac OSX

1. Install [asciidoc](https://github.com/asciidoctor/asciidoctor)
1. Install [asciidoctor-pdf](https://github.com/asciidoctor/asciidoctor-pdf)
1. Install [asciidoctor-diagram](http://asciidoctor.org/docs/asciidoctor-diagram/)
1. Install [ditaa](https://github.com/stathissideris/ditaa)
1. Install [graphviz](https://www.graphviz.org/)
1. Install [rouge](https://asciidoctor.org/docs/user-manual/#rouge)
1. Install [wget](https://www.gnu.org/software/wget/)
1. `make`

### Mac OSX (using brew etc)

1. `brew install asciidoctor`
1. `gem install asciidoctor-pdf`
1. `gem install asciidoctor-diagram`
1. `brew install ditaa`
1. `brew install graphviz`
1. `gem install rouge`
1. `brew install wget`
1. `make`

## License

_The Erlang Runtime System_ by Erik Stenman is licensed under a
Creative Commons Attribution 4.0 International License. Based on a
work at https://github.com/happi/theBeamBook.
A complete copy of the license can be found [here](LICENSE).


# A short and personal history of the book

I, Erik Stenman (Happi), started writing this book back in 2013.
At first I was thinking of self publishing the book on my blog,
but since English isn't my native language I felt I needed help
by a good editor.

I managed to get a deal with O'Reilly and started converting my
outline to their build process. My original plan was for a very long
and thorough book, which the editor felt would get few readers. I
started cutting my content and tried to write more of a tutorial than
a manual. Unfortunately progress was slow and pre-sales was even
slower and the publisher cancelled the book in 2015.

I managed to get a new deal with Pragmatic and started converting my
content to their build system and rewriting the book according to the
more pragmatic style of the new publisher, cutting down the content
even further. The series editor also wanted me to fit the book into
the Elixir series and I tried to add more Elixir examples. I did not
really manage to make it into an Elixir book and also my progress was
still slow, which led to another cancellation of the book early 2017.

Now I had three repositories with three different book building systems
with three different outlines of the book. In the end I more or less
went back to the original longer book outline and the original AsciiDoc
build system. I started a new repository in a private GitHub account and
started pulling in content from the three different versions.

Then on April 7 2017 I opened the repository to the public to share it with
some students. I didn't think anyone else would notice and I was not
planning to release the book for real yet since the repo currently
just contains bits and pieces from the different versions of the book.

There was more interest than I had expected though and fortunately
also several who where willing to contribute. From now on the book
is a collaborative effort to document the Erlang runtime system Erts,
and it is released with a Creative Commons license (see above).

Watch this space for further news and to see the whole book take shape.

-- Erik Stenman aka Happi

