#ifndef ENGLISHNUMBER_H
#define ENGLISHNUMBER_H

#include "english.h"
#include "number.h"

/**
 * @brief The EngNumber class
 * A Number which translate its value into English word.
 */
class EnglishNumber : public Number {
public:

    explicit EnglishNumber();

    explicit EnglishNumber(const int integer);

    string translate();

    Language* lang();

// utilities
private:

    string toBase(const int value);

    string toTeen(const int value);

    string toTens(int value);

    string dealWithTens(int num);

    string dealWithHundreds(int num);


private:
    English language = English();
};

#endif // ENGLISHNUMBER_H
