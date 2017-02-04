#ifndef BAHASA_H
#define BAHASA_H

#include "language.h"

/**
 * @brief The Bahasa class
 * Example implementation of Bahasa Indonesia
 */
class Bahasa: public Language {
public:
    Bahasa();

    vector<string> base();

    vector<string> units();

    unordered_map<string, string> replacements();

    const string O     = "belas";
    const string OO    = "puluh";
    const string OOO   = "ratus";

private:
    // basic names of numbers
    vector<string> _base { "nol", "satu", "dua", "tiga", "empat",
                          "lima", "enam", "tujuh", "delapan", "sembilan" };

    // units of numbers
    vector<string> _units { "", "ribu", "juta", "milyar" };


    // also known as convention
    unordered_map<string, string> _replacements {
        {" belas","sepuluh"},
        {"satu belas","sebelas"},

        {"satu ratus", "seratus"},
        {"satu ribu", "seribu"},

    };

};

#endif // BAHASA_H
