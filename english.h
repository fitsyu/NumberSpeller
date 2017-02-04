#ifndef ENGLISH_H
#define ENGLISH_H


#include "language.h"

/**
 * @brief The Eng class
 * Example implementation of English language
 */
class English: public Language {
public:
    English();

    vector<string> base();

    vector<string> units();

    unordered_map<string, string> replacements();

    const string O     = "teen";
    const string OO    = "ty";
    const string OOO   = "hundred";

private:
    // basic names of numbers
    vector<string> _base { "zero", "one", "two", "three", "four",
                          "five", "six", "seven", "eight", "nine" };

    // units of numbers
    vector<string> _units { "", "thousand", "million", "billion" };


    // also known as convention
    unordered_map<string, string> _replacements {
        // teens
        {"teen","ten"},
        {"oneteen","eleven"},
        {"twoteen", "twelve"},
        {"threeteen", "thirteen"},
        {"fiveteen", "fifteen"},
        {"eightteen", "eighteen"},

        // tens
        {"onety", "ten"},
        {"twoty", "twenty"},
        {"threety", "thirty"},
        {"fourty", "forty"},
        {"fivety", "fifty"},
        {"eightty", "eighty"}
    };

};


#endif // ENGLISH_H
