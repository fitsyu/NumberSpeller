#include <iostream>
#include <vector>
#include <forward_list>
#include <unordered_map>
#include <stack>

using namespace std;

struct Eng {
    static vector<string> units;
    static vector<string> base;
    static unordered_map<string, string> replacements;


    static string O;
    static string OO;
    static string OOO;
};

string Eng::O     = "teen";
string Eng::OO    = "ty";
string Eng::OOO   = "hundred";

vector<string> Eng::units { "", "thousand", "million", "billion" };

// basic names of numbers
vector<string> Eng::base { "zero", "one", "two", "three", "four",
                      "five", "six", "seven", "eight", "nine" };

// also known as convention
unordered_map<string, string> Eng::replacements {
    // teens
    {"teen","ten"},
    {"oneteen","eleven"},
    {"twoteen", "twelve"},
    {"threeteen", "thirteen"},
    {"fiveteen", "fifteen"},

    // tens
    {"onety", "ten"},
    {"twoty", "twenty"},
    {"threety", "thirty"},
    {"fourty", "forty"},
    {"fivety", "fifty"},
    {"eightty", "eighty"}
};

class Number {
public:
    explicit Number(const int integer) {
        this->value = integer;
    }

    string translate() {

        if ( value == 0 )
            return "";

        if ( value <  100 ) {
            return dealWithTwoNumbers(value);
        }
        else if ( value < 1000 ) {
            return dealWithThreeNumbers(value);
        } else {
            return "unknown";
        }
    }

// utilities
private:
    string toBase(const int value) {
        return Eng::base.at(value);
    }

    string toTeen(const int value) {
        int lastDigit = value % 10;

        // don't spell zero
        string output = "";
        if ( lastDigit > 0 ) {
            output = toBase(lastDigit);
        }

        output += Eng::O;

        try { output = Eng::replacements.at(output); }
        catch (out_of_range) {}

        return output;
    }

    string toTens(int value) {
        int firstDigit, lastDigit;

        // first digit
        firstDigit = value / 10;
        string output = toBase(firstDigit) + Eng::OO;

        try { output = Eng::replacements.at(output); }
        catch (out_of_range) {}

        // last digit
        lastDigit = value % 10;
        string lastDigitSpell = "";
        if ( lastDigit > 0 ) {
           lastDigitSpell = toBase(lastDigit);
        }

        return output + ( lastDigitSpell == "" ? "" : "-" + lastDigitSpell );
    }

    string dealWithTwoNumbers(int num) {
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

    string dealWithThreeNumbers(int num) {
        const int firstDigit = num / 100;
        string output = toBase(firstDigit) + " " + Eng::OOO;

        const int theLastTwo = num % 100;
        string output2 = dealWithTwoNumbers(theLastTwo);

        return output + ( output2.empty() ? "" : " and " + output2 );
    }


private:
    int value;

};

class Speller {
public:
    explicit Speller(const string input) {
        this->input = input;

        isAbleToWork = false;

        this->validate();
    }

    bool ready() {
        return isAbleToWork;
    }

    string process(){

        if (input == "0") return Eng::base.at(0);

        string textualForm;

        vector<string> triples = group();


        for (unsigned int i=0; i<triples.size(); ++i) {
            unitStack.push( Eng::units.at(i) );
        }

        for (unsigned int i=0; i<triples.size(); ++i ) {

            string triple = triples.at(i);

            Number number( toNumber(triple) );

            string translated = number.translate();

            if ( !translated.empty() ) {
                textualForm
                        .append( translated )
                        .append( unitStack.top().empty() ? "" : " " )
                        .append( unitStack.top() )
                        .append( ", " );
            }

            unitStack.pop();
        }

        // remove the last ', '
        int idx = textualForm.find_last_of(", ");
        textualForm.replace(idx-1, 2, "");

        return textualForm;
    }

private:

    void validate() {
        isAbleToWork = isValid() && input.length() < 13;
    }

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
    string input;

    bool isAbleToWork;

    stack<string> unitStack;
};

// =========================================================================

void printUsage() {
    cout
            << "usage: NumberSpeller [N]" << endl
            << "N: positive number from 0 to maximum of 999999999999" << endl
            << "example: NumberSpeller 2300" << endl;
}


int main(int argc, char* argv[])
{
    // check args
    if ( argc == 2 ) {
        string input = argv[1];

        // bussiness
        Speller robot(input);
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






























