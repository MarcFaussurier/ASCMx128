#ifndef CPUx128
# define CPUx128
# include "systemc.h"
# pragma GCC diagnostic ignored "-Wold-style-cast"
# pragma GCC diagnostic ignored "-Wweak-vtables"
# pragma GCC diagnostic ignored "-Wunused-command-line-argument"

int         sc_main();

SC_MODULE           (half_adder) 
{
  sc_in <bool>      a;
  sc_in <bool>      b;
  sc_out <bool>     s;
  sc_out <bool>     c;

  void prc_half_adder();
  SC_CTOR(half_adder)
  {
    SC_METHOD (prc_half_adder);
  //  sensitive << a << b;
  }
};

#endif                                                                                       
                                                                                             
                                                                                             
                                                                                             
                                                                                             
                                                                                             
                                                                                             
                                                              
                                                              
                                                              
                                                              
                                                              
                                                              
