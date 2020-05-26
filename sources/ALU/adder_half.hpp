#include <ASCMx128.hpp>

SC_MODULE               (sc_half_adder)
{
    sc_in<bool>         a;
    sc_in<bool>         b;
    sc_out<bool>        s;
    sc_out<bool>        c;

    void                proceed()
    {
        s = a or b;
        c = a and b;
    }

    SC_CTOR             (sc_half_adder)
    {
        SC_METHOD       (proceed);
    }
};

bool                    test_half_adder()
{
    sc_signal<bool>     a;
    sc_signal<bool>     b;
    sc_signal<bool>     s;
    sc_signal<bool>     c;
    sc_half_adder       half_adder("half_adder");

    half_adder.a(a);
    half_adder.b(b);
    half_adder.s(s);
    half_adder.c(c);

    a = 1;
    b = 1;
    sc_start();
    half_adder.proceed();
    assert(s == 1 and c == 1);
    sc_stop();
    sc_start();
    a = 1;
    b = 0;
    half_adder.proceed();
    assert(s == 1 and c == 0);
    return (true);
}













