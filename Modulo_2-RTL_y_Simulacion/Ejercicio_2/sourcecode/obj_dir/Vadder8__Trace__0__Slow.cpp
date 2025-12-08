// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vadder8__Syms.h"


VL_ATTR_COLD void Vadder8___024root__trace_init_sub__TOP__0(Vadder8___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root__trace_init_sub__TOP__0\n"); );
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    const int c = vlSymsp->__Vm_baseCode;
    tracep->pushPrefix("$rootio", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+1,0,"clk_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"rst_ni",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+3,0,"a_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+4,0,"b_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+5,0,"sum_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+6,0,"carry_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("adder8", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+1,0,"clk_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"rst_ni",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+3,0,"a_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+4,0,"b_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+5,0,"sum_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+6,0,"carry_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+7,0,"sum_d",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+8,0,"sum_q",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+10,0,"carry_d",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"carry_q",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+7,0,"temp_result",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->popPrefix();
}

VL_ATTR_COLD void Vadder8___024root__trace_init_top(Vadder8___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root__trace_init_top\n"); );
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    Vadder8___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vadder8___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void Vadder8___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vadder8___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vadder8___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vadder8___024root__trace_register(Vadder8___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root__trace_register\n"); );
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    tracep->addConstCb(&Vadder8___024root__trace_const_0, 0, vlSelf);
    tracep->addFullCb(&Vadder8___024root__trace_full_0, 0, vlSelf);
    tracep->addChgCb(&Vadder8___024root__trace_chg_0, 0, vlSelf);
    tracep->addCleanupCb(&Vadder8___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vadder8___024root__trace_const_0_sub_0(Vadder8___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vadder8___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root__trace_const_0\n"); );
    // Body
    Vadder8___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vadder8___024root*>(voidSelf);
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    Vadder8___024root__trace_const_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vadder8___024root__trace_const_0_sub_0(Vadder8___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root__trace_const_0_sub_0\n"); );
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    bufp->fullBit(oldp+10,(0U));
}

VL_ATTR_COLD void Vadder8___024root__trace_full_0_sub_0(Vadder8___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vadder8___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root__trace_full_0\n"); );
    // Body
    Vadder8___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vadder8___024root*>(voidSelf);
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    Vadder8___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vadder8___024root__trace_full_0_sub_0(Vadder8___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vadder8___024root__trace_full_0_sub_0\n"); );
    Vadder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    bufp->fullBit(oldp+1,(vlSelfRef.clk_i));
    bufp->fullBit(oldp+2,(vlSelfRef.rst_ni));
    bufp->fullCData(oldp+3,(vlSelfRef.a_i),8);
    bufp->fullCData(oldp+4,(vlSelfRef.b_i),8);
    bufp->fullCData(oldp+5,(vlSelfRef.sum_o),8);
    bufp->fullBit(oldp+6,(vlSelfRef.carry_o));
    bufp->fullCData(oldp+7,((0x000000ffU & ((IData)(vlSelfRef.a_i) 
                                            + (IData)(vlSelfRef.b_i)))),8);
    bufp->fullCData(oldp+8,(vlSelfRef.adder8__DOT__sum_q),8);
    bufp->fullBit(oldp+9,(vlSelfRef.adder8__DOT__carry_q));
}
