#include "bahasa_number.h"

BahasaNumber::BahasaNumber() : Number() {}

BahasaNumber::BahasaNumber(const int integer) :
    Number(integer) {}

string BahasaNumber::translate() {

    string output;

    if ( value <  100 ) {
        output = dealWithTens(value);
    }
    else if ( value < 1000 ) {
        output = dealWithHundreds(value);
    } else {
        output = "unknown";
    }

    return output;
}

Language* BahasaNumber::lang() {
    return &bahasa;
}

// utilities
string BahasaNumber::toBase(const int value) {
    return bahasa.base().at(value);
}

string BahasaNumber::toTeen(const int value) {
    int lastDigit = value % 10;

    // don't spell zero
    string output = "";
    if ( lastDigit > 0 ) {
        output = toBase(lastDigit);
    }

    output += " " + bahasa.O;

    revise(output);

    return output;
}

string BahasaNumber::toTens(int value) {
    int firstDigit, lastDigit;

    // first digit
    firstDigit = value / 10;
    string output = toBase(firstDigit) + " " + bahasa.OO;

    revise(output);

    // last digit
    lastDigit = value % 10;
    string lastDigitSpell = "";
    if ( lastDigit > 0 ) {
       lastDigitSpell = toBase(lastDigit);
    }

    output += ( lastDigitSpell == "" ? "" : " " + lastDigitSpell );

    revise(output);

    return output;
}

string BahasaNumber::dealWithTens(int num) {
    if ( num == 00 ) {
        return "";
    }
    else if ( num < 10 ) {
        return toBase(num);
    }
    else if ( num < 20 ) {
        return toTeen(num);
    }
    else if ( num < 100 ) {
        return toTens(num);
    }


    return "unknown";
}

string BahasaNumber::dealWithHundreds(int num) {
    const int firstDigit = num / 100;
    string output = toBase(firstDigit) + " " + bahasa.OOO;

    revise(output);

    const int theLastTwo = num % 100;
    string output2 = dealWithTens(theLastTwo);

    output += ( output2.empty() ? "" : " " + output2 );

    revise(output);




    return output;
}
