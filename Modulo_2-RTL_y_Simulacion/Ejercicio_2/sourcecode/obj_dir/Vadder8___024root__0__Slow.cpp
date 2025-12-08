// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vadder8.h for the primary calling header

#include "Vadder8__pch.h"

VL_ATTR_COLD void Vadder8___024root___eval_static(Vadder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root___eval_static\n"); );
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__Vtrigprevexpr___TOP__clk_i__0 = vlSelfRef.clk_i;
    vlSelfRef.__Vtrigprevexpr___TOP__rst_ni__0 = vlSelfRef.rst_ni;
}

VL_ATTR_COLD void Vadder8___024root___eval_initial(Vadder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root___eval_initial\n"); );
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

VL_ATTR_COLD void Vadder8___024root___eval_final(Vadder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root___eval_final\n"); );
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vadder8___024root___dump_triggers__stl(const VlUnpacked<QData/*63:0*/, 1> &triggers, const std::string &tag);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vadder8___024root___eval_phase__stl(Vadder8___024root* vlSelf);

VL_ATTR_COLD void Vadder8___024root___eval_settle(Vadder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root___eval_settle\n"); );
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    IData/*31:0*/ __VstlIterCount;
    // Body
    __VstlIterCount = 0U;
    vlSelfRef.__VstlFirstIteration = 1U;
    do {
        if (VL_UNLIKELY(((0x00000064U < __VstlIterCount)))) {
#ifdef VL_DEBUG
            Vadder8___024root___dump_triggers__stl(vlSelfRef.__VstlTriggered, "stl"s);
#endif
            VL_FATAL_MT("adder8.sv", 8, "", "Settle region did not converge after 100 tries");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
    } while (Vadder8___024root___eval_phase__stl(vlSelf));
}

VL_ATTR_COLD void Vadder8___024root___eval_triggers__stl(Vadder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root___eval_triggers__stl\n"); );
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.__VstlTriggered[0U] = ((0xfffffffffffffffeULL 
                                      & vlSelfRef.__VstlTriggered
                                      [0U]) | (IData)((IData)(vlSelfRef.__VstlFirstIteration)));
    vlSelfRef.__VstlFirstIteration = 0U;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vadder8___024root___dump_triggers__stl(vlSelfRef.__VstlTriggered, "stl"s);
    }
#endif
}

VL_ATTR_COLD bool Vadder8___024root___trigger_anySet__stl(const VlUnpacked<QData/*63:0*/, 1> &in);

#ifdef VL_DEBUG
VL_ATTR_COLD void Vadder8___024root___dump_triggers__stl(const VlUnpacked<QData/*63:0*/, 1> &triggers, const std::string &tag) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(Vadder8___024root___trigger_anySet__stl(triggers))))) {
        VL_DBG_MSGS("         No '" + tag + "' region triggers active\n");
    }
    if ((1U & (IData)(triggers[0U]))) {
        VL_DBG_MSGS("         '" + tag + "' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD bool Vadder8___024root___trigger_anySet__stl(const VlUnpacked<QData/*63:0*/, 1> &in) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root___trigger_anySet__stl\n"); );
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

VL_ATTR_COLD void Vadder8___024root___stl_sequent__TOP__0(Vadder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root___stl_sequent__TOP__0\n"); );
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.sum_o = vlSelfRef.adder8__DOT__sum_q;
    vlSelfRef.carry_o = vlSelfRef.adder8__DOT__carry_q;
}

VL_ATTR_COLD void Vadder8___024root___eval_stl(Vadder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root___eval_stl\n"); );
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VstlTriggered[0U])) {
        Vadder8___024root___stl_sequent__TOP__0(vlSelf);
    }
}

VL_ATTR_COLD bool Vadder8___024root___eval_phase__stl(Vadder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root___eval_phase__stl\n"); );
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    CData/*0:0*/ __VstlExecute;
    // Body
    Vadder8___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = Vadder8___024root___trigger_anySet__stl(vlSelfRef.__VstlTriggered);
    if (__VstlExecute) {
        Vadder8___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

bool Vadder8___024root___trigger_anySet__act(const VlUnpacked<QData/*63:0*/, 1> &in);

#ifdef VL_DEBUG
VL_ATTR_COLD void Vadder8___024root___dump_triggers__act(const VlUnpacked<QData/*63:0*/, 1> &triggers, const std::string &tag) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(Vadder8___024root___trigger_anySet__act(triggers))))) {
        VL_DBG_MSGS("         No '" + tag + "' region triggers active\n");
    }
    if ((1U & (IData)(triggers[0U]))) {
        VL_DBG_MSGS("         '" + tag + "' region trigger index 0 is active: @(posedge clk_i)\n");
    }
    if ((1U & (IData)((triggers[0U] >> 1U)))) {
        VL_DBG_MSGS("         '" + tag + "' region trigger index 1 is active: @(negedge rst_ni)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vadder8___024root___ctor_var_reset(Vadder8___024root* vlSelf) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root___ctor_var_reset\n"); );
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    const uint64_t __VscopeHash = VL_MURMUR64_HASH(vlSelf->name());
    vlSelf->clk_i = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 11908517815223722933ull);
    vlSelf->rst_ni = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 3161515032326629241ull);
    vlSelf->a_i = VL_SCOPED_RAND_RESET_I(8, __VscopeHash, 12042468572559684522ull);
    vlSelf->b_i = VL_SCOPED_RAND_RESET_I(8, __VscopeHash, 15122488259574687123ull);
    vlSelf->sum_o = VL_SCOPED_RAND_RESET_I(8, __VscopeHash, 2190071439391853909ull);
    vlSelf->carry_o = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 6511112893579309160ull);
    vlSelf->adder8__DOT__sum_q = VL_SCOPED_RAND_RESET_I(8, __VscopeHash, 10554065292657199988ull);
    vlSelf->adder8__DOT__carry_q = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 3489405444629798130ull);
    for (int __Vi0 = 0; __Vi0 < 1; ++__Vi0) {
        vlSelf->__VstlTriggered[__Vi0] = 0;
    }
    for (int __Vi0 = 0; __Vi0 < 1; ++__Vi0) {
        vlSelf->__VactTriggered[__Vi0] = 0;
    }
    vlSelf->__Vtrigprevexpr___TOP__clk_i__0 = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 12668644789224949103ull);
    vlSelf->__Vtrigprevexpr___TOP__rst_ni__0 = VL_SCOPED_RAND_RESET_I(1, __VscopeHash, 2605432789578622122ull);
    for (int __Vi0 = 0; __Vi0 < 1; ++__Vi0) {
        vlSelf->__VnbaTriggered[__Vi0] = 0;
    }
}
