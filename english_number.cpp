#include "english_number.h"


EnglishNumber::EnglishNumber() : Number()
    {}

EnglishNumber::EnglishNumber(const int integer) :
    Number(integer) {}

string EnglishNumber::translate() {

        if ( value <  100 ) {
            return dealWithTens(value);
        }
        else if ( value < 1000 ) {
            return dealWithHundreds(value);
        }
        else {
            return "unknown";
        }
    }

Language* EnglishNumber::lang() {
        return &language;
    }

// utilities
string EnglishNumber::toBase(const int value) {
        return language.base().at(value);
    }

string EnglishNumber::toTeen(const int value) {
        int lastDigit = value % 10;

        // don't spell zero
        string output = "";
        if ( lastDigit > 0 ) {
            output = toBase(lastDigit);
        }

        output += language.O;

        revise(output);

        return output;
    }

string EnglishNumber::toTens(int value) {
        int firstDigit, lastDigit;

        // first digit
        firstDigit = value / 10;
        string output = toBase(firstDigit) + language.OO;

        revise(output);

        // last digit
        lastDigit = value % 10;
        string lastDigitSpell = "";
        if ( lastDigit > 0 ) {
           lastDigitSpell = toBase(lastDigit);
        }

        return output + ( lastDigitSpell == "" ? "" : "-" + lastDigitSpell );
    }

string EnglishNumber::dealWithTens(int num) {
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

string EnglishNumber::dealWithHundreds(int num) {
        if ( num == 000 ) {
            return "";
        }

        const int firstDigit = num / 100;
        string output = toBase(firstDigit) + " " + language.OOO;

        const int theLastTwo = num % 100;
        string output2 = dealWithTens(theLastTwo);

        return output + ( output2.empty() ? "" : " and " + output2 );
    }

