// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_adder8.h for the primary calling header

#include "Vtb_adder8__pch.h"

VlCoroutine Vtb_adder8___024root___eval_initial__TOP__Vtiming__0(Vtb_adder8___024root* vlSelf);
VlCoroutine Vtb_adder8___024root___eval_initial__TOP__Vtiming__1(Vtb_adder8___024root* vlSelf);
VlCoroutine Vtb_adder8___024root___eval_initial__TOP__Vtiming__2(Vtb_adder8___024root* vlSelf);
VlCoroutine Vtb_adder8___024root___eval_initial__TOP__Vtiming__3(Vtb_adder8___024root* vlSelf);

void Vtb_adder8___024root___eval_initial(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___eval_initial\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__Vm_traceActivity[1U] = 1U;
    Vtb_adder8___024root___eval_initial__TOP__Vtiming__0(vlSelf);
    Vtb_adder8___024root___eval_initial__TOP__Vtiming__1(vlSelf);
    Vtb_adder8___024root___eval_initial__TOP__Vtiming__2(vlSelf);
    Vtb_adder8___024root___eval_initial__TOP__Vtiming__3(vlSelf);
}

VlCoroutine Vtb_adder8___024root___eval_initial__TOP__Vtiming__0(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___eval_initial__TOP__Vtiming__0\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    do {
        vlSelfRef.tb_adder8__DOT__clk = 1U;
        co_await vlSelfRef.__VdlySched.delay(0x0000000000001388ULL, 
                                             nullptr, 
                                             "tb_adder8.sv", 
                                             52);
        vlSelfRef.tb_adder8__DOT__clk = 0U;
        co_await vlSelfRef.__VdlySched.delay(0x0000000000001388ULL, 
                                             nullptr, 
                                             "tb_adder8.sv", 
                                             53);
    } while ((1U & (~ (IData)(vlSelfRef.tb_adder8__DOT__eoc))));
}

VlCoroutine Vtb_adder8___024root___eval_initial__TOP__Vtiming__1(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___eval_initial__TOP__Vtiming__1\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.tb_adder8__DOT__rst_n = 0U;
    co_await vlSelfRef.__VdlySched.delay(0x0000000000002710ULL, 
                                         nullptr, "tb_adder8.sv", 
                                         60);
    vlSelfRef.tb_adder8__DOT__rst_n = 1U;
    co_await vlSelfRef.__VdlySched.delay(0x0000000000002710ULL, 
                                         nullptr, "tb_adder8.sv", 
                                         63);
}

VlCoroutine Vtb_adder8___024root___eval_initial__TOP__Vtiming__2(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___eval_initial__TOP__Vtiming__2\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    std::string __Vtask_tb_adder8__DOT__load_stimuli__0__filename;
    IData/*31:0*/ __Vtask_tb_adder8__DOT__load_stimuli__0__i;
    __Vtask_tb_adder8__DOT__load_stimuli__0__i = 0;
    IData/*31:0*/ __Vtask_tb_adder8__DOT__load_stimuli__0__line_count;
    __Vtask_tb_adder8__DOT__load_stimuli__0__line_count = 0;
    // Body
    vlSelfRef.tb_adder8__DOT__a = 0U;
    vlSelfRef.tb_adder8__DOT__b = 0U;
    vlSelfRef.tb_adder8__DOT__eoc = 0U;
    vlSymsp->_vm_contextp__->dumpfile("adder8.vcd"s);
    vlSymsp->_traceDumpOpen();
    VL_WRITEF_NX("Loading Stimuli from ./stimuli/stimuli.txt\n",0);
    __Vtask_tb_adder8__DOT__load_stimuli__0__filename = "./stimuli/stimuli.txt"s;
    __Vtask_tb_adder8__DOT__load_stimuli__0__i = 0U;
    __Vtask_tb_adder8__DOT__load_stimuli__0__line_count = 0U;
    vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__file 
        = VL_FOPEN_NN("./stimuli/stimuli.txt"s, "r"s);
    ;
    if (VL_UNLIKELY(((0U == vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__file)))) {
        VL_WRITEF_NX("[%0t] %%Fatal: tb_adder8.sv:154: Assertion failed in %Ntb_adder8.load_stimuli: Error: Failed to open file '%@'\n",0,
                     64,VL_TIME_UNITED_Q(1000),-9,vlSymsp->name(),
                     -1,&(__Vtask_tb_adder8__DOT__load_stimuli__0__filename));
        VL_STOP_MT("tb_adder8.sv", 154, "", false);
    }
    VL_WRITEF_NX("File '%@' opened successfully.\n",0,
                 -1,&(__Vtask_tb_adder8__DOT__load_stimuli__0__filename));
    while ((! (vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__file ? feof(VL_CVT_I_FP(vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__file)) : true))) {
        if ((0U != VL_FGETS_NI(vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__line, vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__file))) {
            __Vtask_tb_adder8__DOT__load_stimuli__0__line_count 
                = ((IData)(1U) + __Vtask_tb_adder8__DOT__load_stimuli__0__line_count);
        }
    }
    VL_FCLOSE_I(vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__file); vlSelfRef.tb_adder8__DOT__stimuli.renew(__Vtask_tb_adder8__DOT__load_stimuli__0__line_count);
    vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__file 
        = VL_FOPEN_NN(__Vtask_tb_adder8__DOT__load_stimuli__0__filename
                      , "r"s);
    ;
    while ((! (vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__file ? feof(VL_CVT_I_FP(vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__file)) : true))) {
        if ((0U != VL_FGETS_NI(vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__line, vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__file))) {
            vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__temp 
                = VL_ATOI_N(vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__line, 2);
            vlSelfRef.tb_adder8__DOT__stimuli.atWrite(__Vtask_tb_adder8__DOT__load_stimuli__0__i) 
                = (0x0000ffffU & vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__temp);
            __Vtask_tb_adder8__DOT__load_stimuli__0__i 
                = ((IData)(1U) + __Vtask_tb_adder8__DOT__load_stimuli__0__i);
        }
    }
    VL_FCLOSE_I(vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__file); vlSelfRef.tb_adder8__DOT__stim_apply__DOT__unnamedblk1__DOT__i = 0U;
    while (VL_GTS_III(32, 0x00000020U, vlSelfRef.tb_adder8__DOT__stim_apply__DOT__unnamedblk1__DOT__i)) {
        co_await vlSelfRef.__VtrigSched_h13499b7c__0.trigger(0U, 
                                                             nullptr, 
                                                             "@(posedge tb_adder8.clk)", 
                                                             "tb_adder8.sv", 
                                                             96);
        vlSelfRef.__Vm_traceActivity[2U] = 1U;
        co_await vlSelfRef.__VdlySched.delay(0x00000000000003e8ULL, 
                                             nullptr, 
                                             "tb_adder8.sv", 
                                             98);
        vlSelfRef.__Vm_traceActivity[2U] = 1U;
        vlSelfRef.tb_adder8__DOT__a = (0x000000ffU 
                                       & (vlSelfRef.tb_adder8__DOT__stimuli.at(vlSelfRef.tb_adder8__DOT__stim_apply__DOT__unnamedblk1__DOT__i) 
                                          >> 8U));
        vlSelfRef.tb_adder8__DOT__b = (0x000000ffU 
                                       & vlSelfRef.tb_adder8__DOT__stimuli.at(vlSelfRef.tb_adder8__DOT__stim_apply__DOT__unnamedblk1__DOT__i));
        vlSelfRef.tb_adder8__DOT__stim_apply__DOT__unnamedblk1__DOT__i 
            = ((IData)(1U) + vlSelfRef.tb_adder8__DOT__stim_apply__DOT__unnamedblk1__DOT__i);
    }
    co_await vlSelfRef.__VdlySched.delay(0x00000000000061a8ULL, 
                                         nullptr, "tb_adder8.sv", 
                                         105);
    vlSelfRef.__Vm_traceActivity[2U] = 1U;
    vlSelfRef.tb_adder8__DOT__eoc = 1U;
    vlSelfRef.__Vm_traceActivity[2U] = 1U;
}

VlCoroutine Vtb_adder8___024root___eval_initial__TOP__Vtiming__3(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___eval_initial__TOP__Vtiming__3\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    IData/*31:0*/ tb_adder8__DOT__resp_check__DOT__unnamedblk2__DOT__j;
    tb_adder8__DOT__resp_check__DOT__unnamedblk2__DOT__j = 0;
    std::string __Vtask_tb_adder8__DOT__load_exp_response__1__filename;
    IData/*31:0*/ __Vtask_tb_adder8__DOT__load_exp_response__1__i;
    __Vtask_tb_adder8__DOT__load_exp_response__1__i = 0;
    IData/*31:0*/ __Vtask_tb_adder8__DOT__load_exp_response__1__line_count;
    __Vtask_tb_adder8__DOT__load_exp_response__1__line_count = 0;
    // Body
    __Vtask_tb_adder8__DOT__load_exp_response__1__filename = "./stimuli/expected_response.txt"s;
    __Vtask_tb_adder8__DOT__load_exp_response__1__i = 0U;
    __Vtask_tb_adder8__DOT__load_exp_response__1__line_count = 0U;
    vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__file 
        = VL_FOPEN_NN("./stimuli/expected_response.txt"s
                      , "r"s);
    ;
    if (VL_UNLIKELY(((0U == vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__file)))) {
        VL_WRITEF_NX("[%0t] %%Fatal: tb_adder8.sv:195: Assertion failed in %Ntb_adder8.load_exp_response: Error: Failed to open file '%@'\n",0,
                     64,VL_TIME_UNITED_Q(1000),-9,vlSymsp->name(),
                     -1,&(__Vtask_tb_adder8__DOT__load_exp_response__1__filename));
        VL_STOP_MT("tb_adder8.sv", 195, "", false);
    }
    VL_WRITEF_NX("File '%@' opened successfully.\n",0,
                 -1,&(__Vtask_tb_adder8__DOT__load_exp_response__1__filename));
    while ((! (vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__file ? feof(VL_CVT_I_FP(vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__file)) : true))) {
        if ((0U != VL_FGETS_NI(vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__line, vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__file))) {
            __Vtask_tb_adder8__DOT__load_exp_response__1__line_count 
                = ((IData)(1U) + __Vtask_tb_adder8__DOT__load_exp_response__1__line_count);
        }
    }
    VL_FCLOSE_I(vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__file); vlSelfRef.tb_adder8__DOT__exp_response.renew(__Vtask_tb_adder8__DOT__load_exp_response__1__line_count);
    vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__file 
        = VL_FOPEN_NN(__Vtask_tb_adder8__DOT__load_exp_response__1__filename
                      , "r"s);
    ;
    while ((! (vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__file ? feof(VL_CVT_I_FP(vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__file)) : true))) {
        if ((0U != VL_FGETS_NI(vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__line, vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__file))) {
            vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__temp 
                = VL_ATOI_N(vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__line, 2);
            vlSelfRef.tb_adder8__DOT__exp_response.atWrite(__Vtask_tb_adder8__DOT__load_exp_response__1__i) 
                = ((0x00ffU & vlSelfRef.tb_adder8__DOT__exp_response.atWrite(__Vtask_tb_adder8__DOT__load_exp_response__1__i)) 
                   | (0x00000100U & (vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__temp 
                                     << 8U)));
            vlSelfRef.tb_adder8__DOT__exp_response.atWrite(__Vtask_tb_adder8__DOT__load_exp_response__1__i) 
                = ((0x0100U & vlSelfRef.tb_adder8__DOT__exp_response.atWrite(__Vtask_tb_adder8__DOT__load_exp_response__1__i)) 
                   | (0x000000ffU & (vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__temp 
                                     >> 1U)));
            __Vtask_tb_adder8__DOT__load_exp_response__1__i 
                = ((IData)(1U) + __Vtask_tb_adder8__DOT__load_exp_response__1__i);
        }
    }
    VL_FCLOSE_I(vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__file); co_await vlSelfRef.__VdlySched.delay(0x0000000000002710ULL, 
                                                                                nullptr, 
                                                                                "tb_adder8.sv", 
                                                                                122);
    tb_adder8__DOT__resp_check__DOT__unnamedblk2__DOT__j = 0U;
    while (VL_LTS_III(32, tb_adder8__DOT__resp_check__DOT__unnamedblk2__DOT__j, vlSelfRef.tb_adder8__DOT__stimuli.size())) {
        co_await vlSelfRef.__VtrigSched_h13499b7c__0.trigger(0U, 
                                                             nullptr, 
                                                             "@(posedge tb_adder8.clk)", 
                                                             "tb_adder8.sv", 
                                                             126);
        co_await vlSelfRef.__VdlySched.delay(0x0000000000001388ULL, 
                                             nullptr, 
                                             "tb_adder8.sv", 
                                             128);
        vlSelfRef.tb_adder8__DOT__actual_response = 
            (((IData)(vlSelfRef.tb_adder8__DOT__i_dut__DOT__carry_q) 
              << 8U) | (IData)(vlSelfRef.tb_adder8__DOT__i_dut__DOT__sum_q));
        if (((IData)(vlSelfRef.tb_adder8__DOT__actual_response) 
             != vlSelfRef.tb_adder8__DOT__exp_response.at(tb_adder8__DOT__resp_check__DOT__unnamedblk2__DOT__j))) {
            VL_WRITEF_NX("Incorrect at %11d check! %3# + %3# = %3#, Actual %3# \n\n",0,
                         32,tb_adder8__DOT__resp_check__DOT__unnamedblk2__DOT__j,
                         8,(0x000000ffU & (vlSelfRef.tb_adder8__DOT__stimuli.at(tb_adder8__DOT__resp_check__DOT__unnamedblk2__DOT__j) 
                                           >> 8U)),
                         8,(0x000000ffU & vlSelfRef.tb_adder8__DOT__stimuli.at(tb_adder8__DOT__resp_check__DOT__unnamedblk2__DOT__j)),
                         9,vlSelfRef.tb_adder8__DOT__exp_response.at(tb_adder8__DOT__resp_check__DOT__unnamedblk2__DOT__j),
                         9,vlSelfRef.tb_adder8__DOT__actual_response);
        } else {
            VL_WRITEF_NX("Correct for check %11d!\n",0,
                         32,tb_adder8__DOT__resp_check__DOT__unnamedblk2__DOT__j);
        }
        tb_adder8__DOT__resp_check__DOT__unnamedblk2__DOT__j 
            = ((IData)(1U) + tb_adder8__DOT__resp_check__DOT__unnamedblk2__DOT__j);
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_adder8___024root___dump_triggers__act(const VlUnpacked<QData/*63:0*/, 1> &triggers, const std::string &tag);
#endif  // VL_DEBUG

void Vtb_adder8___024root___eval_triggers__act(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___eval_triggers__act\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VactTriggered[0U] = (QData)((IData)(
                                                    ((vlSelfRef.__VdlySched.awaitingCurrentTime() 
                                                      << 2U) 
                                                     | ((((~ (IData)(vlSelfRef.tb_adder8__DOT__rst_n)) 
                                                          & (IData)(vlSelfRef.__Vtrigprevexpr___TOP__tb_adder8__DOT__rst_n__0)) 
                                                         << 1U) 
                                                        | ((IData)(vlSelfRef.tb_adder8__DOT__clk) 
                                                           & (~ (IData)(vlSelfRef.__Vtrigprevexpr___TOP__tb_adder8__DOT__clk__0)))))));
    vlSelfRef.__Vtrigprevexpr___TOP__tb_adder8__DOT__clk__0 
        = vlSelfRef.tb_adder8__DOT__clk;
    vlSelfRef.__Vtrigprevexpr___TOP__tb_adder8__DOT__rst_n__0 
        = vlSelfRef.tb_adder8__DOT__rst_n;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vtb_adder8___024root___dump_triggers__act(vlSelfRef.__VactTriggered, "act"s);
    }
#endif
}

bool Vtb_adder8___024root___trigger_anySet__act(const VlUnpacked<QData/*63:0*/, 1> &in) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___trigger_anySet__act\n"); );
    // Locals
    IData/*31:0*/ n;
    // Body
    n = 0U;
    do {
        if (in[n]) {
            return (1U);
        }
        n = ((IData)(1U) + n);
    } while ((1U > n));
    return (0U);
}

void Vtb_adder8___024root___nba_sequent__TOP__0(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___nba_sequent__TOP__0\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.tb_adder8__DOT__i_dut__DOT__carry_q = 0U;
    vlSelfRef.tb_adder8__DOT__i_dut__DOT__sum_q = ((IData)(vlSelfRef.tb_adder8__DOT__rst_n)
                                                    ? 
                                                   (0x000000ffU 
                                                    & ((IData)(vlSelfRef.tb_adder8__DOT__a) 
                                                       + (IData)(vlSelfRef.tb_adder8__DOT__b)))
                                                    : 0U);
}

void Vtb_adder8___024root___eval_nba(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___eval_nba\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((3ULL & vlSelfRef.__VnbaTriggered[0U])) {
        Vtb_adder8___024root___nba_sequent__TOP__0(vlSelf);
    }
}

void Vtb_adder8___024root___timing_commit(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___timing_commit\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((! (1ULL & vlSelfRef.__VactTriggered[0U]))) {
        vlSelfRef.__VtrigSched_h13499b7c__0.commit(
                                                   "@(posedge tb_adder8.clk)");
    }
}

void Vtb_adder8___024root___timing_resume(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___timing_resume\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VactTriggered[0U])) {
        vlSelfRef.__VtrigSched_h13499b7c__0.resume(
                                                   "@(posedge tb_adder8.clk)");
    }
    if ((4ULL & vlSelfRef.__VactTriggered[0U])) {
        vlSelfRef.__VdlySched.resume();
    }
}

void Vtb_adder8___024root___trigger_orInto__act(VlUnpacked<QData/*63:0*/, 1> &out, const VlUnpacked<QData/*63:0*/, 1> &in) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___trigger_orInto__act\n"); );
    // Locals
    IData/*31:0*/ n;
    // Body
    n = 0U;
    do {
        out[n] = (out[n] | in[n]);
        n = ((IData)(1U) + n);
    } while ((1U > n));
}

bool Vtb_adder8___024root___eval_phase__act(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___eval_phase__act\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    CData/*0:0*/ __VactExecute;
    // Body
    Vtb_adder8___024root___eval_triggers__act(vlSelf);
    Vtb_adder8___024root___timing_commit(vlSelf);
    Vtb_adder8___024root___trigger_orInto__act(vlSelfRef.__VnbaTriggered, vlSelfRef.__VactTriggered);
    __VactExecute = Vtb_adder8___024root___trigger_anySet__act(vlSelfRef.__VactTriggered);
    if (__VactExecute) {
        Vtb_adder8___024root___timing_resume(vlSelf);
    }
    return (__VactExecute);
}

void Vtb_adder8___024root___trigger_clear__act(VlUnpacked<QData/*63:0*/, 1> &out) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___trigger_clear__act\n"); );
    // Locals
    IData/*31:0*/ n;
    // Body
    n = 0U;
    do {
        out[n] = 0ULL;
        n = ((IData)(1U) + n);
    } while ((1U > n));
}

bool Vtb_adder8___024root___eval_phase__nba(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___eval_phase__nba\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = Vtb_adder8___024root___trigger_anySet__act(vlSelfRef.__VnbaTriggered);
    if (__VnbaExecute) {
        Vtb_adder8___024root___eval_nba(vlSelf);
        Vtb_adder8___024root___trigger_clear__act(vlSelfRef.__VnbaTriggered);
    }
    return (__VnbaExecute);
}

void Vtb_adder8___024root___eval(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___eval\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    IData/*31:0*/ __VnbaIterCount;
    // Body
    __VnbaIterCount = 0U;
    do {
        if (VL_UNLIKELY(((0x00000064U < __VnbaIterCount)))) {
#ifdef VL_DEBUG
            Vtb_adder8___024root___dump_triggers__act(vlSelfRef.__VnbaTriggered, "nba"s);
#endif
            VL_FATAL_MT("tb_adder8.sv", 9, "", "NBA region did not converge after 100 tries");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        vlSelfRef.__VactIterCount = 0U;
        do {
            if (VL_UNLIKELY(((0x00000064U < vlSelfRef.__VactIterCount)))) {
#ifdef VL_DEBUG
                Vtb_adder8___024root___dump_triggers__act(vlSelfRef.__VactTriggered, "act"s);
#endif
                VL_FATAL_MT("tb_adder8.sv", 9, "", "Active region did not converge after 100 tries");
            }
            vlSelfRef.__VactIterCount = ((IData)(1U) 
                                         + vlSelfRef.__VactIterCount);
        } while (Vtb_adder8___024root___eval_phase__act(vlSelf));
    } while (Vtb_adder8___024root___eval_phase__nba(vlSelf));
}

#ifdef VL_DEBUG
void Vtb_adder8___024root___eval_debug_assertions(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___eval_debug_assertions\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}
#endif  // VL_DEBUG
