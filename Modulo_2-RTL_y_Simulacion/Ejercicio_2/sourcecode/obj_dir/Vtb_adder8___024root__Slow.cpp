// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtb_adder8.h for the primary calling header

#include "Vtb_adder8__pch.h"

void Vtb_adder8___024root___ctor_var_reset(Vtb_adder8___024root* vlSelf);

Vtb_adder8___024root::Vtb_adder8___024root(Vtb_adder8__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , __VdlySched{*symsp->_vm_contextp__}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vtb_adder8___024root___ctor_var_reset(this);
}

void Vtb_adder8___024root::__Vconfigure(bool first) {
    (void)first;  // Prevent unused variable warning
}

Vtb_adder8___024root::~Vtb_adder8___024root() {
}
