#include "ASCMx128.h"
# define build 1
//concurrent method prc_half_adder of the half adder
void half_adder :: prc_half_adder() { 
	s = a ^ b;
	c = a & b;
}

int main()
{
    cout << "\t\tSystemC - CPUx128 build " << build << "\t\t" << endl;
    cout << "by mfaussur <mfaussur@student.42lyon.fr>" << endl;
    cout << endl;
    cout << "Now booting CPUx128..." << endl;

	sc_time T(0.333, SC_NS);
	sc_signal<bool> 	a("A", 1);
    sc_signal<bool>     b("B", 1);                                      
    sc_signal<bool>     s("S", 0);                                      
    sc_signal<bool>     c("C", 0);                                      
                                                                        
    half_adder            hf("Half_adder");                             
                                                                        
                                                                        


    hf.a(a);                                                                                  
    hf.b(b);                                                                                  
    hf.s(s);                                                                                  
    hf.c(c);                                                                                  
                                                                                              
                                                                                              
    sc_start(0.8100,SC_NS);                                                                   
    cout << " ... " << sc_time_stamp() << " " << sc_delta_count() << endl;                 
	
    cout << " a: " << a.read() << " b: " << b.read() << " s: " << s.read() << " c: " << c.read() << endl;
    return 0;
}











                                                             
                                                             
                                                             
                                                             
                                                             
                                                             
                                                             
