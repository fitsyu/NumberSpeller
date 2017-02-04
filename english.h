#ifndef ENGLISH_H
#define ENGLISH_H


#include "language.h"

/**
 * @brief The Eng class
 * Example implementation of English language
 */
class English: public Language {
public:
    /**
     * @brief English
     * Create English object
     */
    explicit English();

    /**
     * @brief base
     * @return
     * base numbers in English
     */
    vector<string> base();

    /**
     * @brief units
     * @return
     * unit of numbers in English
     */
    vector<string> units();

    /**
     * @brief replacements
     * @return
     * correction for the wrongly generated word by rule
     */
    unordered_map<string, string> replacements();

    const string O     = "teen";
    const string OO    = "ty";
    const string OOO   = "hundred";

private:
    vector<string> _base { "zero", "one", "two", "three", "four",
                          "five", "six", "seven", "eight", "nine" };

    vector<string> _units { "", "thousand", "million", "billion" };


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
