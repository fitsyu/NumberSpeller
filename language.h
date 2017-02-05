#ifndef LANGUAGE_H
#define LANGUAGE_H

#include <vector>
#include <string>
#include <unordered_map>

using namespace std;

/**
 * @brief The Language class
 * Base of all supported language.
 *
 * In order to support certain language into the system, one has to
 * provide:
 * - the basic names for basic number from 0 to 9
 *   e.g zero, one, two, three..
 *
 * - list of unit number for each 3 digits.
 *   e.g thousand, million, billion, ..
 *   note: must be started from thousand-equivalent
 *
 * - replacements dictionary.
 *   each language has its own rule and there are always exceptions to
 *   that rule.
 *   for example: obeying the rule, one would spell 12 as 'twoteen'.
 *   using exception, 12 then becomes 'twelve'.
 *
 */
class Language {
public:
    /**
     * @brief Language
     * create new instance of Language object
     */
    explicit Language(){}

    /**
     * @brief base
     * @return
     * how to spell base numbers in a language
     * e.g: "zero" to "nine" for 0-9 in English
     */
    virtual vector<string> base() = 0;

    /**
     * @brief units
     * @return
     * how to spell units of number in a language
     * e.g: "thousand" in English
     */
    virtual vector<string> units() = 0;

    /**
     * @brief replacements
     * @return
     * correction table for particular number
     * e.g "oneteen" : "eleven" in English
     */
    virtual unordered_map<string, string> replacements() = 0;
};

#endif // LANGUAGE_H
