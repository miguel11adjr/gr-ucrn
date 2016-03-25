/* -*- c++ -*- */

#define UCRN_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "ucrn_swig_doc.i"

%{
#include "ucrn/amplificador.h"
#include "ucrn/amplifier.h"
%}

%include "ucrn/amplificador.h"
GR_SWIG_BLOCK_MAGIC2(ucrn, amplificador);
%include "ucrn/amplifier.h"
GR_SWIG_BLOCK_MAGIC2(ucrn, amplifier);
