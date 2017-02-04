#include "speller.h"

#include "english_number.h"
#include "bahasa_number.h"

Speller::Speller(const string input, const SpellingLanguage language) {
    this->input = input;
    this->language = language;

    isAbleToWork = false;

    this->validate();
}

Speller::Speller(const string input) {
    Speller(input, EN);
}


bool Speller::ready() {
    return isAbleToWork;
}


string Speller::process(){

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


void Speller::setLanguage(const SpellingLanguage language) {
    this->language = language;
}


// utilities

void Speller::validate() {
    isAbleToWork = isValid() && input.length() < 13;
}


bool Speller::isValid(){
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


int Speller::toNumber(const string num) {
    if (isValid()) {
        try {
            return stoi(num);
        } catch (out_of_range) {
            return -1;
        }
    }
    return -1;
}


vector<string> Speller::group() {
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
