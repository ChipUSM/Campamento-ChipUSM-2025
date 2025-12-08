// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vadder8__Syms.h"


void Vadder8___024root__trace_chg_0_sub_0(Vadder8___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vadder8___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root__trace_chg_0\n"); );
    // Body
    Vadder8___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vadder8___024root*>(voidSelf);
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    Vadder8___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vadder8___024root__trace_chg_0_sub_0(Vadder8___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root__trace_chg_0_sub_0\n"); );
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    bufp->chgBit(oldp+0,(vlSelfRef.clk_i));
    bufp->chgBit(oldp+1,(vlSelfRef.rst_ni));
    bufp->chgCData(oldp+2,(vlSelfRef.a_i),8);
    bufp->chgCData(oldp+3,(vlSelfRef.b_i),8);
    bufp->chgCData(oldp+4,(vlSelfRef.sum_o),8);
    bufp->chgBit(oldp+5,(vlSelfRef.carry_o));
    bufp->chgCData(oldp+6,((0x000000ffU & ((IData)(vlSelfRef.a_i) 
                                           + (IData)(vlSelfRef.b_i)))),8);
    bufp->chgCData(oldp+7,(vlSelfRef.adder8__DOT__sum_q),8);
    bufp->chgBit(oldp+8,(vlSelfRef.adder8__DOT__carry_q));
}

void Vadder8___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root__trace_cleanup\n"); );
    // Locals
    VlUnpacked<CData/*0:0*/, 1> __Vm_traceActivity;
    for (int __Vi0 = 0; __Vi0 < 1; ++__Vi0) {
        __Vm_traceActivity[__Vi0] = 0;
    }
    // Body
    Vadder8___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vadder8___024root*>(voidSelf);
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    vlSymsp->__Vm_activity = false;
    __Vm_traceActivity[0U] = 0U;
}
