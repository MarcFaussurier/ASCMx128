#include <ASCMx128.hpp>
# define g(x) (sc_signal<bool>[x])
# define s(x) ((sc_signal<bool>) x)

int     main()
{
    sc_signal<bool>     half_adder_in[2][] = {{s(1), s(2)}};

    cout << VERSIONSTR;
    cout << "Test is starting..." << endl;
    sc_start();

    test_half_adder();
}
