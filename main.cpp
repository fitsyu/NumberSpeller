#include <iostream>
#include <string>

using namespace std;

#include "english.h"
#include "bahasa.h"

#include "english_number.h"
#include "bahasa_number.h"

#include "speller.h"

// =========================================================================

void printUsage() {

    string programName;

#if (defined(__GNUC__) || defined(__GNUG__)) && !(defined(__clang__) || defined(__INTEL_COMPILER))

    programName = program_invocation_short_name;
#else
    programName = "numspel";
#endif

    cout
            << "usage: " << programName << " [n]" << endl
            << "n: positive number from 0 to maximum of 999999999999" << endl
            << "example: " << programName << " 2300" << endl;
}

int main(int argc, char* argv[])
{
    // check args
    if ( argc == 2 ) {
        string input = argv[1];

        // bussiness
        Speller robot(input, Speller::EN);

        if ( robot.ready() ) {
            string output = robot.process();
            cout << output << endl;

        } else {
            cout << "invalid input!" << endl;
            printUsage();
        }

    } else {
        printUsage();
    }

    return 0;
}






























