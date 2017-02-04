#ifndef LANGUAGE_H
#define LANGUAGE_H

#include <vector>
#include <string>
#include <unordered_map>

using namespace std;

/**
 * @brief The Language class
 * Base of all supported language
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
    Language(){}

    virtual vector<string> base() = 0;

    virtual vector<string> units() = 0;

    virtual unordered_map<string, string> replacements() = 0;
};

#endif // LANGUAGE_H
