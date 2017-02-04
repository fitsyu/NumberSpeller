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

    /**
     * @brief Number
     * construct a Number object with value of 0
     */
    explicit Number() {
        this->value = 0;
    }

    /**
     * @brief Number
     * @param integer
     * constract a Number object with value of @integer
     */
    explicit Number(const int integer) {
        this->value = integer;
    }

    /**
     * @brief translate
     * @return
     * translate @value into its textual form for given @language
     */
    virtual string translate() = 0;

    /**
     * @brief lang
     * @return
     * A Language this object will use to translate its @value to
     */
    virtual Language* lang() = 0;

    /**
     * @brief setValue
     * @param value
     * change the @value
     */
    void setValue(const int value) {
        this->value = value;
    }

    /**
     * @brief revise
     * @param probablyWrong
     * if probablyWrong found in @replacement it'll going to be
     * updated here else probablyWrong remains the same
     */
    void revise(string &probablyWrong) {
        try {
            probablyWrong = lang()->replacements().at(probablyWrong);
        }
        catch (out_of_range) {}
    }

    /**
     * @brief ~Number
     * delete Number polymorphically
     */
    virtual ~Number() {}

protected:
    /**
     * @brief value
     * Integer value of this object
     */
    int value;
};

#endif // NUMBER_H
