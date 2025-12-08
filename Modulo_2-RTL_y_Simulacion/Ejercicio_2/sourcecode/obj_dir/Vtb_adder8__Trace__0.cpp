// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtb_adder8__Syms.h"


void Vtb_adder8___024root__trace_chg_0_sub_0(Vtb_adder8___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vtb_adder8___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root__trace_chg_0\n"); );
    // Body
    Vtb_adder8___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_adder8___024root*>(voidSelf);
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    Vtb_adder8___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vtb_adder8___024root__trace_chg_0_sub_0(Vtb_adder8___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root__trace_chg_0_sub_0\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    if (VL_UNLIKELY(((vlSelfRef.__Vm_traceActivity[1U] 
                      | vlSelfRef.__Vm_traceActivity
                      [2U])))) {
        bufp->chgBit(oldp+0,(vlSelfRef.tb_adder8__DOT__eoc));
        bufp->chgCData(oldp+1,(vlSelfRef.tb_adder8__DOT__a),8);
        bufp->chgCData(oldp+2,(vlSelfRef.tb_adder8__DOT__b),8);
        bufp->chgIData(oldp+3,(vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__file),32);
        bufp->chgIData(oldp+4,(vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__temp),32);
        bufp->chgCData(oldp+5,((0x000000ffU & ((IData)(vlSelfRef.tb_adder8__DOT__a) 
                                               + (IData)(vlSelfRef.tb_adder8__DOT__b)))),8);
        bufp->chgIData(oldp+6,(vlSelfRef.tb_adder8__DOT__stim_apply__DOT__unnamedblk1__DOT__i),32);
    }
    bufp->chgBit(oldp+7,(vlSelfRef.tb_adder8__DOT__clk));
    bufp->chgBit(oldp+8,(vlSelfRef.tb_adder8__DOT__rst_n));
    bufp->chgCData(oldp+9,(vlSelfRef.tb_adder8__DOT__i_dut__DOT__sum_q),8);
    bufp->chgBit(oldp+10,(vlSelfRef.tb_adder8__DOT__i_dut__DOT__carry_q));
    bufp->chgBit(oldp+11,((1U & ((IData)(vlSelfRef.tb_adder8__DOT__actual_response) 
                                 >> 8U))));
    bufp->chgCData(oldp+12,((0x000000ffU & (IData)(vlSelfRef.tb_adder8__DOT__actual_response))),8);
    bufp->chgIData(oldp+13,(vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__file),32);
    bufp->chgIData(oldp+14,(vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__temp),32);
}

void Vtb_adder8___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root__trace_cleanup\n"); );
    // Body
    Vtb_adder8___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_adder8___024root*>(voidSelf);
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[2U] = 0U;
}
