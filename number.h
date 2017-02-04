#ifndef NUMBER_H
#define NUMBER_H

#include "language.h"

/**
 * @brief The Number class
 *
 * Base of translatable Number class
 *
 * Given an integer ranged from 0 - 999, it should be able
 * to translate the integer into it textual form.
 *
 * This is virtual class, thus it has to be subclassed,
 * and subclass has to override translate() method
 * to support the language that the number will be translated into.
 *
 *
 */

class Number {
public:
    explicit Number() {
        this->value = 0;
    }

    explicit Number(const int integer) {
        this->value = integer;
    }

    virtual string translate() = 0;

    virtual Language* lang() = 0;

    void setValue(const int value) {
        this->value = value;
    }

    void revise(string &probablyWrong) {
        try {
            probablyWrong = lang()->replacements().at(probablyWrong);
        }
        catch (out_of_range) {}
    }

protected:
    int value;
};

#endif // NUMBER_H
