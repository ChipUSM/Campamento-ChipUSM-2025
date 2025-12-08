// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vtb_adder8__Syms.h"


VL_ATTR_COLD void Vtb_adder8___024root__trace_init_sub__TOP__0(Vtb_adder8___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root__trace_init_sub__TOP__0\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    const int c = vlSymsp->__Vm_baseCode;
    tracep->pushPrefix("tb_adder8", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declDouble(c+16,0,"T_CLK_HI",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::DOUBLE, false,-1);
    tracep->declDouble(c+16,0,"T_CLK_LO",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::DOUBLE, false,-1);
    tracep->declDouble(c+18,0,"T_CLK",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::DOUBLE, false,-1);
    tracep->declDouble(c+20,0,"T_APPL_DEL",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::DOUBLE, false,-1);
    tracep->declDouble(c+16,0,"T_ACQ_DEL",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::DOUBLE, false,-1);
    tracep->declBus(c+22,0,"NUM_VECTOR",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->declArray(c+23,0,"STIMULI_FILE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 167,0);
    tracep->declArray(c+29,0,"RESPONSE_FILE",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 247,0);
    tracep->declBit(c+1,0,"eoc",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+8,0,"clk",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"rst_n",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+2,0,"a",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+3,0,"b",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+10,0,"sum",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+11,0,"carry_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("actual_response", VerilatedTracePrefixType::STRUCT_PACKED);
    tracep->declBit(c+12,0,"carry_out",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+13,0,"sum",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->popPrefix();
    tracep->declBus(c+4,0,"load_stimuli__Vstatic__file",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->declBus(c+5,0,"load_stimuli__Vstatic__temp",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+14,0,"load_exp_response__Vstatic__file",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->declBus(c+15,0,"load_exp_response__Vstatic__temp",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->pushPrefix("i_dut", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+8,0,"clk_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+9,0,"rst_ni",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+2,0,"a_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+3,0,"b_i",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+10,0,"sum_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+11,0,"carry_o",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+6,0,"sum_d",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+10,0,"sum_q",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+37,0,"carry_d",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+11,0,"carry_q",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+6,0,"temp_result",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->popPrefix();
    tracep->pushPrefix("stim_apply", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->pushPrefix("unnamedblk1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+7,0,"i",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::INT, false,-1, 31,0);
    tracep->popPrefix();
    tracep->popPrefix();
    tracep->popPrefix();
}

VL_ATTR_COLD void Vtb_adder8___024root__trace_init_top(Vtb_adder8___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root__trace_init_top\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    Vtb_adder8___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vtb_adder8___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void Vtb_adder8___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vtb_adder8___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vtb_adder8___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vtb_adder8___024root__trace_register(Vtb_adder8___024root* vlSelf, VerilatedVcd* tracep) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root__trace_register\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    tracep->addConstCb(&Vtb_adder8___024root__trace_const_0, 0, vlSelf);
    tracep->addFullCb(&Vtb_adder8___024root__trace_full_0, 0, vlSelf);
    tracep->addChgCb(&Vtb_adder8___024root__trace_chg_0, 0, vlSelf);
    tracep->addCleanupCb(&Vtb_adder8___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vtb_adder8___024root__trace_const_0_sub_0(Vtb_adder8___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vtb_adder8___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root__trace_const_0\n"); );
    // Body
    Vtb_adder8___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_adder8___024root*>(voidSelf);
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    Vtb_adder8___024root__trace_const_0_sub_0((&vlSymsp->TOP), bufp);
}

extern const VlWide<8>/*255:0*/ Vtb_adder8__ConstPool__CONST_hb0160424_0;

VL_ATTR_COLD void Vtb_adder8___024root__trace_const_0_sub_0(Vtb_adder8___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root__trace_const_0_sub_0\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Locals
    VlWide<6>/*191:0*/ __Vtemp_1;
    // Body
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    bufp->fullDouble(oldp+16,(5.0));
    bufp->fullDouble(oldp+18,(10.0));
    bufp->fullDouble(oldp+20,(1.0));
    bufp->fullIData(oldp+22,(0x00000020U),32);
    __Vtemp_1[0U] = 0x2e747874U;
    __Vtemp_1[1U] = 0x6d756c69U;
    __Vtemp_1[2U] = 0x2f737469U;
    __Vtemp_1[3U] = 0x6d756c69U;
    __Vtemp_1[4U] = 0x2f737469U;
    __Vtemp_1[5U] = 0x0000002eU;
    bufp->fullWData(oldp+23,(__Vtemp_1),168);
    bufp->fullWData(oldp+29,(Vtb_adder8__ConstPool__CONST_hb0160424_0),248);
    bufp->fullBit(oldp+37,(0U));
}

VL_ATTR_COLD void Vtb_adder8___024root__trace_full_0_sub_0(Vtb_adder8___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vtb_adder8___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root__trace_full_0\n"); );
    // Body
    Vtb_adder8___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtb_adder8___024root*>(voidSelf);
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    Vtb_adder8___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vtb_adder8___024root__trace_full_0_sub_0(Vtb_adder8___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtb_adder8___024root__trace_full_0_sub_0\n"); );
    Vtb_adder8__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    auto& vlSelfRef = std::ref(*vlSelf).get();
    // Body
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    bufp->fullBit(oldp+1,(vlSelfRef.tb_adder8__DOT__eoc));
    bufp->fullCData(oldp+2,(vlSelfRef.tb_adder8__DOT__a),8);
    bufp->fullCData(oldp+3,(vlSelfRef.tb_adder8__DOT__b),8);
    bufp->fullIData(oldp+4,(vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__file),32);
    bufp->fullIData(oldp+5,(vlSelfRef.tb_adder8__DOT__load_stimuli__Vstatic__temp),32);
    bufp->fullCData(oldp+6,((0x000000ffU & ((IData)(vlSelfRef.tb_adder8__DOT__a) 
                                            + (IData)(vlSelfRef.tb_adder8__DOT__b)))),8);
    bufp->fullIData(oldp+7,(vlSelfRef.tb_adder8__DOT__stim_apply__DOT__unnamedblk1__DOT__i),32);
    bufp->fullBit(oldp+8,(vlSelfRef.tb_adder8__DOT__clk));
    bufp->fullBit(oldp+9,(vlSelfRef.tb_adder8__DOT__rst_n));
    bufp->fullCData(oldp+10,(vlSelfRef.tb_adder8__DOT__i_dut__DOT__sum_q),8);
    bufp->fullBit(oldp+11,(vlSelfRef.tb_adder8__DOT__i_dut__DOT__carry_q));
    bufp->fullBit(oldp+12,((1U & ((IData)(vlSelfRef.tb_adder8__DOT__actual_response) 
                                  >> 8U))));
    bufp->fullCData(oldp+13,((0x000000ffU & (IData)(vlSelfRef.tb_adder8__DOT__actual_response))),8);
    bufp->fullIData(oldp+14,(vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__file),32);
    bufp->fullIData(oldp+15,(vlSelfRef.tb_adder8__DOT__load_exp_response__Vstatic__temp),32);
}
