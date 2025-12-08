// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vadder8.h for the primary calling header

#ifndef VERILATED_VADDER8___024ROOT_H_
#define VERILATED_VADDER8___024ROOT_H_  // guard

#include "verilated.h"


class Vadder8__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vadder8___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk_i,0,0);
    VL_IN8(rst_ni,0,0);
    VL_IN8(a_i,7,0);
    VL_IN8(b_i,7,0);
    VL_OUT8(sum_o,7,0);
    VL_OUT8(carry_o,0,0);
    CData/*7:0*/ adder8__DOT__sum_q;
    CData/*0:0*/ adder8__DOT__carry_q;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk_i__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__rst_ni__0;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<QData/*63:0*/, 1> __VstlTriggered;
    VlUnpacked<QData/*63:0*/, 1> __VactTriggered;
    VlUnpacked<QData/*63:0*/, 1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vadder8__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vadder8___024root(Vadder8__Syms* symsp, const char* v__name);
    ~Vadder8___024root();
    VL_UNCOPYABLE(Vadder8___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
