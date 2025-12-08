// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_adder8.h for the primary calling header

#include "Vtb_adder8__pch.h"

VL_ATTR_COLD void Vtb_adder8___024root___eval_static(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___eval_static\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__Vtrigprevexpr___TOP__tb_adder8__DOT__clk__0 
        = vlSelfRef.tb_adder8__DOT__clk;
    vlSelfRef.__Vtrigprevexpr___TOP__tb_adder8__DOT__rst_n__0 
        = vlSelfRef.tb_adder8__DOT__rst_n;
}

VL_ATTR_COLD void Vtb_adder8___024root___eval_final(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___eval_final\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

VL_ATTR_COLD void Vtb_adder8___024root___eval_settle(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___eval_settle\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

bool Vtb_adder8___024root___trigger_anySet__act(const VlUnpacked<QData/*63:0*/, 1> &in);

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtb_adder8___024root___dump_triggers__act(const VlUnpacked<QData/*63:0*/, 1> &triggers, const std::string &tag) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(Vtb_adder8___024root___trigger_anySet__act(triggers))))) {
        VL_DBG_MSGS("         No '" + tag + "' region triggers active\n");
    }
    if ((1U & (IData)(triggers[0U]))) {
        VL_DBG_MSGS("         '" + tag + "' region trigger index 0 is active: @(posedge tb_adder8.clk)\n");
    }
    if ((1U & (IData)((triggers[0U] >> 1U)))) {
        VL_DBG_MSGS("         '" + tag + "' region trigger index 1 is active: @(negedge tb_adder8.rst_n)\n");
    }
    if ((1U & (IData)((triggers[0U] >> 2U)))) {
        VL_DBG_MSGS("         '" + tag + "' region trigger index 2 is active: @([true] __VdlySched.awaitingCurrentTime())\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vtb_adder8___024root___ctor_var_reset(Vtb_adder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root___ctor_var_reset\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    const uint64_t __VscopeHash = VL_MURMUR64_HASH(vlSelf->name());
    vlSelf->tb_adder8__DOT__eoc = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 9875328614640964653ull);
    vlSelf->tb_adder8__DOT__stimuli.atDefault() = VL_SCOPED_RAND_RESET_I(16, __VscopeHash, 7834469742855007826ull);
    vlSelf->tb_adder8__DOT__exp_response.atDefault() = VL_SCOPED_RAND_RESET_I(9, __VscopeHash, 7887058595340449309ull);
    vlSelf->tb_adder8__DOT__clk = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 4852475320144971342ull);
    vlSelf->tb_adder8__DOT__rst_n = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 13435092552555027886ull);
    vlSelf->tb_adder8__DOT__a = VL_SCOPED_RAND_RESET_I(8, __VscopeHash, 5326874894910984269ull);
    vlSelf->tb_adder8__DOT__b = VL_SCOPED_RAND_RESET_I(8, __VscopeHash, 948895350002039312ull);
    vlSelf->tb_adder8__DOT__actual_response = VL_SCOPED_RAND_RESET_I(9, __VscopeHash, 6222214476292816740ull);
    vlSelf->tb_adder8__DOT__load_stimuli__Vstatic__file = 0;
    vlSelf->tb_adder8__DOT__load_stimuli__Vstatic__temp = VL_SCOPED_RAND_RESET_I(32, __VscopeHash, 15139624483119373368ull);
    vlSelf->tb_adder8__DOT__load_exp_response__Vstatic__file = 0;
    vlSelf->tb_adder8__DOT__load_exp_response__Vstatic__temp = VL_SCOPED_RAND_RESET_I(32, __VscopeHash, 7908054736481412545ull);
    vlSelf->tb_adder8__DOT__stim_apply__DOT__unnamedblk1__DOT__i = 0;
    vlSelf->tb_adder8__DOT__i_dut__DOT__sum_q = VL_SCOPED_RAND_RESET_I(8, __VscopeHash, 2137847227088180626ull);
    vlSelf->tb_adder8__DOT__i_dut__DOT__carry_q = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 463738482283082473ull);
    for (int __Vi0 = 0; __Vi0 < 1; ++__Vi0) {
        vlSelf->__VactTriggered[__Vi0] = 0;
    }
    vlSelf->__Vtrigprevexpr___TOP__tb_adder8__DOT__clk__0 = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 5182754034930407953ull);
    vlSelf->__Vtrigprevexpr___TOP__tb_adder8__DOT__rst_n__0 = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 2076459963118583407ull);
    for (int __Vi0 = 0; __Vi0 < 1; ++__Vi0) {
        vlSelf->__VnbaTriggered[__Vi0] = 0;
    }
    for (int __Vi0 = 0; __Vi0 < 3; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}
