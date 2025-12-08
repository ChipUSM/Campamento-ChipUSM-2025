// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vtb_adder8.h for the primary calling header

#ifndef VERILATED_VTB_ADDER8___024ROOT_H_
#define VERILATED_VTB_ADDER8___024ROOT_H_  // guard

#include "verilated.h"
#include "verilated_timing.h"


class Vtb_adder8__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vtb_adder8___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    CData/*0:0*/ tb_adder8__DOT__eoc;
    CData/*0:0*/ tb_adder8__DOT__clk;
    CData/*0:0*/ tb_adder8__DOT__rst_n;
    CData/*7:0*/ tb_adder8__DOT__a;
    CData/*7:0*/ tb_adder8__DOT__b;
    CData/*7:0*/ tb_adder8__DOT__i_dut__DOT__sum_q;
    CData/*0:0*/ tb_adder8__DOT__i_dut__DOT__carry_q;
    CData/*0:0*/ __Vtrigprevexpr___TOP__tb_adder8__DOT__clk__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__tb_adder8__DOT__rst_n__0;
    SData/*8:0*/ tb_adder8__DOT__actual_response;
    IData/*31:0*/ tb_adder8__DOT__load_stimuli__Vstatic__file;
    IData/*31:0*/ tb_adder8__DOT__load_stimuli__Vstatic__temp;
    IData/*31:0*/ tb_adder8__DOT__load_exp_response__Vstatic__file;
    IData/*31:0*/ tb_adder8__DOT__load_exp_response__Vstatic__temp;
    IData/*31:0*/ tb_adder8__DOT__stim_apply__DOT__unnamedblk1__DOT__i;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<QData/*63:0*/, 1> __VactTriggered;
    VlUnpacked<QData/*63:0*/, 1> __VnbaTriggered;
    VlUnpacked<CData/*0:0*/, 3> __Vm_traceActivity;
    VlQueue<SData/*15:0*/> tb_adder8__DOT__stimuli;
    VlQueue<SData/*8:0*/> tb_adder8__DOT__exp_response;
    std::string tb_adder8__DOT__load_stimuli__Vstatic__line;
    std::string tb_adder8__DOT__load_exp_response__Vstatic__line;
    VlDelayScheduler __VdlySched;
    VlTriggerScheduler __VtrigSched_h13499b7c__0;

    // INTERNAL VARIABLES
    Vtb_adder8__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vtb_adder8___024root(Vtb_adder8__Syms* symsp, const char* v__name);
    ~Vtb_adder8___024root();
    VL_UNCOPYABLE(Vtb_adder8___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
