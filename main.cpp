#include <iostream>
#include <vector>
#include <forward_list>
#include <unordered_map>
#include <stack>
#include <string>

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


/**
 * @brief The Eng class
 * Example implementation of English language
 */
class English: public Language {
public:
    English() : Language()
    {}

    vector<string> base() {
        return _base;
    }

    vector<string> units() {
        return _units;
    }

    unordered_map<string, string> replacements() {
        return _replacements;
    }

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

/**
 * @brief The Bahasa class
 * Example implementation of Bahasa Indonesia
 */
class Bahasa: public Language {
public:
    Bahasa() : Language() {}

    vector<string> base() {
        return _base;
    }

    vector<string> units() {
        return _units;
    }

    unordered_map<string, string> replacements() {
        return _replacements;
    }

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


/**
 * @brief The EngNumber class
 * A Number which translate its value into English word.
 */
class EnglishNumber : public Number {
public:

    explicit EnglishNumber() : Number()
    {}

    explicit EnglishNumber(const int integer) :
    Number(integer) {}

    string translate() {

        if ( value <  100 ) {
            return dealWithTens(value);
        }
        else if ( value < 1000 ) {
            return dealWithHundreds(value);
        }
        else {
            return "unknown";
        }
    }

    Language* lang() {
        return &language;
    }

// utilities
private:

    string toBase(const int value) {
        return language.base().at(value);
    }

    string toTeen(const int value) {
        int lastDigit = value % 10;

        // don't spell zero
        string output = "";
        if ( lastDigit > 0 ) {
            output = toBase(lastDigit);
        }

        output += language.O;

        revise(output);

        return output;
    }

    string toTens(int value) {
        int firstDigit, lastDigit;

        // first digit
        firstDigit = value / 10;
        string output = toBase(firstDigit) + language.OO;

        revise(output);

        // last digit
        lastDigit = value % 10;
        string lastDigitSpell = "";
        if ( lastDigit > 0 ) {
           lastDigitSpell = toBase(lastDigit);
        }

        return output + ( lastDigitSpell == "" ? "" : "-" + lastDigitSpell );
    }

    string dealWithTens(int num) {
        if ( num == 00 ) {
            return "";
        }
        else if ( num < 10 ) {
            return toBase(num);
        }
        else if ( num < 20 ) {
            return toTeen(num);
        }
        else if ( num < 100 ) {
            return toTens(num);
        }


        return "unknown";
    }

    string dealWithHundreds(int num) {
        if ( num == 000 ) {
            return "";
        }

        const int firstDigit = num / 100;
        string output = toBase(firstDigit) + " " + language.OOO;

        const int theLastTwo = num % 100;
        string output2 = dealWithTens(theLastTwo);

        return output + ( output2.empty() ? "" : " and " + output2 );
    }


private:
    English language = English();
};

/**
 * @brief The BahasaNumber class
 * A Number which translate its value into Bahasa.
 */
class BahasaNumber: public Number {
public:
    explicit BahasaNumber() : Number() {}

    explicit BahasaNumber(const int integer) :
        Number(integer) {}

    string translate() {

        string output;

        if ( value <  100 ) {
            output = dealWithTens(value);
        }
        else if ( value < 1000 ) {
            output = dealWithHundreds(value);
        } else {
            output = "unknown";
        }

        return output;
    }

    Language* lang() {
        return &bahasa;
    }

private:

    string toBase(const int value) {
        return bahasa.base().at(value);
    }

    string toTeen(const int value) {
        int lastDigit = value % 10;

        // don't spell zero
        string output = "";
        if ( lastDigit > 0 ) {
            output = toBase(lastDigit);
        }

        output += " " + bahasa.O;

        revise(output);

        return output;
    }

    string toTens(int value) {
        int firstDigit, lastDigit;

        // first digit
        firstDigit = value / 10;
        string output = toBase(firstDigit) + " " + bahasa.OO;

        revise(output);

        // last digit
        lastDigit = value % 10;
        string lastDigitSpell = "";
        if ( lastDigit > 0 ) {
           lastDigitSpell = toBase(lastDigit);
        }

        output += ( lastDigitSpell == "" ? "" : " " + lastDigitSpell );

        revise(output);

        return output;
    }

    string dealWithTens(int num) {
        if ( num == 00 ) {
            return "";
        }
        else if ( num < 10 ) {
            return toBase(num);
        }
        else if ( num < 20 ) {
            return toTeen(num);
        }
        else if ( num < 100 ) {
            return toTens(num);
        }


        return "unknown";
    }

    string dealWithHundreds(int num) {
        const int firstDigit = num / 100;
        string output = toBase(firstDigit) + " " + bahasa.OOO;

        revise(output);

        const int theLastTwo = num % 100;
        string output2 = dealWithTens(theLastTwo);

        output += ( output2.empty() ? "" : " " + output2 );

        revise(output);




        return output;
    }

private:
    Bahasa bahasa = Bahasa();

};



/**
 * @brief The Speller class
 *  It splits the number into triples,
 *  turn each triple into Number object from which the textual form of particular number
 *  could be retreived,
 *  then form a complete textual form for each triple with their corresponding units respectively.
 *
 *  usage:
 *  Create new instance of Speller with number to spell, as in:
 *  Speller speller("1123");
 *
 *  The instance will be able to process() only if the number is valid
 *  i.e only contains digit character nothing else.
 *  the ability can be queried using ready() method.
 */
class Speller {
public:
    enum SpellingLanguage {
        EN, ID
    };

public:

    /**
     * @brief Speller
     * @param input
     * @param language
     * construct the Speller to spell 'input' in the given 'language'
     */
    explicit Speller(const string input, const SpellingLanguage language) {
        this->input = input;
        this->language = language;

        isAbleToWork = false;

        this->validate();
    }

    /**
     * @brief Speller
     * @param input
     * convenience constructor using EN by default
     */
    explicit Speller(const string input) {
        Speller(input, EN);
    }

    /**
     * @brief ready
     * @return
     *  Ask me prior to doing process()
     * to make sure the work done on the right thing
     */
    bool ready() {
        return isAbleToWork;
    }

    /**
     * @brief process
     * @return
     *
     * order the Speller to do its hard work converting
     * numbers into their textual form of their language
     *
     * don't forget to ask ready() before calling this function,
     * for best result.
     *
     */
    string process(){

        // make sure ready
        if ( !ready() ) return "unable to proceed!";

        // the final output
        string textualForm;

        // group the string by three chars each
        vector<string> triples = group();

        // setting the language to use
        Number* number;
        switch (language) {
        case EN:
            number = new EnglishNumber();
            break;

        case ID:
            number = new BahasaNumber();
            break;

        default:
            number = new EnglishNumber();
        }

        // shortcut for '0'
        if ( input == "0" ) return number->lang()->base().at(0);

        // create the stack of unit to use
        for (unsigned int i=0; i<triples.size(); ++i) {
            unitStack.push( number->lang()->units().at(i) );
        }

        // translate each triple
        for (unsigned int i=0; i<triples.size(); ++i ) {

            string triple = triples.at(i);

            number->setValue( toNumber(triple) );

            string translated = number->translate();

            if ( !translated.empty() ) {
                textualForm
                        .append( translated )
                        .append( unitStack.top().empty() ? "" : " " )
                        .append( unitStack.top() );

                number->revise(textualForm);

                textualForm.append( ", " );
            }

            unitStack.pop();
        }

        // remove the last ', '
        int idx = textualForm.find_last_of(", ");
        textualForm.replace(idx-1, 2, "");

        // done
        return textualForm;
    }

    /**
     * @brief setLanguage
     * @param language
     * set the language to use
     */
    void setLanguage(const SpellingLanguage language) {
        this->language = language;
    }


// utilities    
private:
    /**
     * @brief validate
     * check the input and update ready() status
     */
    void validate() {
        isAbleToWork = isValid() && input.length() < 13;
    }

    /**
     * @brief isValid
     * @return
     *
     * return true if input contains exactly digit characters only
     * return false otherwise
     *
     */
    bool isValid(){
        for (auto it = input.cbegin(); it!=input.cend(); ++it) {
            char c = *it;
            switch (c) {
            case '0': case '1': case '2': case '3': case '4':
            case '5': case '6': case '7': case '8': case '9':
                break;
            default:
                return false;
            }
        }
        return true;
    }

    /**
     * @brief toNumber
     * @param num
     * @return
     *
     * convert num char to its integer equivalent
     */
    int toNumber(const string num) {
        if (isValid()) {
            try {
                return stoi(num);
            } catch (out_of_range) {
                return -1;
            }
        }
        return -1;
    }

    /**
     * @brief group
     * @return
     *
     * take 3 char, group them and add them into triples
     * triples: vector of triple
     */
    vector<string> group() {
        vector<string> triples;

        unsigned int overhead = input.size()%3;

        string prefix;
        for (auto i=input.cbegin(); i!=input.cbegin()+overhead; ++i) {
            prefix.push_back(*i);
        }

        if (!prefix.empty()) triples.push_back(prefix);



        for ( auto x=overhead; x<input.length(); x+=3 ) {
            string triple;
            triple.push_back(input.at(x));
            triple.push_back(input.at(x+1));
            triple.push_back(input.at(x+2));

            triples.push_back(triple);
        }

        return triples;
    }

private:
    /**
     * @brief input
     * string of digit char that will be translated
     */
    string input;

    /**
     * @brief isAbleToWork
     * mark of capability to translate
     */
    bool isAbleToWork;

    /**
     * @brief unitStack
     * collection of units of number in the language
     */
    stack<string> unitStack;

    SpellingLanguage language;
};

// =========================================================================

void printUsage() {

    string programName;

#if (defined(__GNUC__) || defined(__GNUG__)) && !(defined(__clang__) || defined(__INTEL_COMPILER))

    programName = program_invocation_short_name;
#else
    programName = "numspel";
#endif

    cout
            << "usage: " << programName << " [n]" << endl
            << "n: positive number from 0 to maximum of 999999999999" << endl
            << "example: " << programName << " 2300" << endl;
}

int main(int argc, char* argv[])
{
    // check args
    if ( argc == 2 ) {
        string input = argv[1];

        // bussiness
        Speller robot(input, Speller::EN);

        if ( robot.ready() ) {
            string output = robot.process();
            cout << output << endl;

        } else {
            cout << "invalid input!" << endl;
            printUsage();
        }

    } else {
        printUsage();
    }

    return 0;
}






























