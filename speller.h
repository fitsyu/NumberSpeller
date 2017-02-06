#ifndef SPELLER_H
#define SPELLER_H

#include <vector>
#include <string>
#include <stack>

using namespace std;

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
    explicit Speller(const string input, const SpellingLanguage language);

    /**
     * @brief Speller
     * @param input
     * convenience constructor using EN by default
     */
    explicit Speller(const string input);

    /**
     * @brief ready
     * @return
     *  Ask me prior to doing process()
     * to make sure the work done on the right thing
     */
    bool ready();

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
    string process() ;

    /**
     * @brief setLanguage
     * @param language
     * set the language to use
     */
    void setLanguage(const SpellingLanguage language);


// utilities
private:
    /**
     * @brief validate
     * check the input and update ready() status
     */
    void validate();

    /**
     * @brief isValid
     * @return
     *
     * return true if input contains exactly digit characters only
     * return false otherwise
     *
     */
    bool isValid();

	/**
	 * @brief isValid2
	 * @return 
	 * isValid version using regex
	 * @note: only works with VS C++ Compiler
	 */
	bool isValid2();

    /**
     * @brief toNumber
     * @param num
     * @return
     *
     * convert num char to its integer equivalent
     */
    int toNumber(const string num);

    /**
     * @brief group
     * @return
     *
     * take 3 char, group them and add them into triples
     * triples: vector of triple
     */
    vector<string> group();

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

#endif // SPELLER_H
