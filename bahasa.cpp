#include "bahasa.h"


Bahasa::Bahasa() : Language() {}

vector<string> Bahasa::base() {
    return _base;
}

vector<string> Bahasa::units() {
    return _units;
}

unordered_map<string, string> Bahasa::replacements() {
    return _replacements;
}
