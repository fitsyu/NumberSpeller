#include "english.h"

English::English() : Language() {}

vector<string> English::base()  {
    return _base;
}

vector<string> English::units() {
    return _units;
}

unordered_map<string, string> English::replacements() {
    return _replacements;
}
