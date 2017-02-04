#ifndef BAHASANUMBER_H
#define BAHASANUMBER_H

#include "bahasa.h"
#include "number.h"

/**
 * @brief The BahasaNumber class
 * A Number which translate its value into Bahasa.
 */
class BahasaNumber: public Number {
public:
    explicit BahasaNumber();
    explicit BahasaNumber(const int integer);

    string translate();

    Language* lang();

private:

    string toBase(const int value);

    string toTeen(const int value);
    string toTens(int value);

    string dealWithTens(int num);

    string dealWithHundreds(int num);
private:
    Bahasa bahasa = Bahasa();

};



#endif // BAHASANUMBER_H
