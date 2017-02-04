#ifndef BAHASA_H
#define BAHASA_H

#include "language.h"

/**
 * @brief The Bahasa class
 * Example implementation of Bahasa Indonesia
 */
class Bahasa: public Language {
public:
    /**
     * @brief Bahasa
     * Create Bahasa object
     */
    explicit Bahasa();

    /**
     * @brief base
     * @return
     * base numbers in Bahasa
     */
    vector<string> base();

    /**
     * @brief units
     * @return
     * units of number in Bahasa
     */
    vector<string> units();

    /**
     * @brief replacements
     * @return
     * correction for the wrongly generated word by rule
     */
    unordered_map<string, string> replacements();

    const string O     = "belas";
    const string OO    = "puluh";
    const string OOO   = "ratus";

private:
    vector<string> _base { "nol", "satu", "dua", "tiga", "empat",
                          "lima", "enam", "tujuh", "delapan", "sembilan" };

    vector<string> _units { "", "ribu", "juta", "milyar" };

    unordered_map<string, string> _replacements {
        {" belas","sepuluh"},
        {"satu belas","sebelas"},

        {"satu ratus", "seratus"},
        {"satu ribu", "seribu"},

    };

};

#endif // BAHASA_H
