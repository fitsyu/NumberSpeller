
// BUGGY
//    for (auto i=number.cbegin()+overhead; i!=number.cend(); i+=3 ) {
//        string triple;
//        triple.push_back(*i);
//        triple.push_back(*i+1);
//        triple.push_back(*i+2);

//        cout << triple << endl;

//        triples.push_back(triple);
//    }


//// basic names of numbers
//vector<string> base { "", "one", "two", "three", "four",
//                      "five", "six", "seven", "eight", "nine" };

//// also known as convention
//unordered_map<string, string> corrections {
//    // teens
//    {"teen","ten"},
//    {"oneteen","eleven"},
//    {"twoteen", "twelve"},
//    {"threeteen", "thirteen"},
//    {"fiveteen", "fifteen"},

//    // tens
//    {"onety", "ten"},
//    {"twoty", "twenty"},
//    {"threety", "thirty"},
//    {"fourty", "forty"},
//    {"fivety", "fifty"},
//    {"eightty", "eighty"}
//};

//// =========================================================================

//// translate 0 - 9
//string toBase(int value) {
//    return base.at(value);
//}

//// translate 10 - 19
//string toTeen(int value) {
//    int lastDigit = value % 10;
//    string output = toBase(lastDigit) + "teen";

//    try { output = corrections.at(output); }
//    catch (out_of_range) {}

//    return output;
//}

//// translate 20 - 99
//string toTens(int value) {
//    int firstDigit, lastDigit;

//    // first digit
//    firstDigit = value / 10;
//    string output = toBase(firstDigit) + "ty";

//    try { output = corrections.at(output); }
//    catch (out_of_range) {}

//    // last digit
//    lastDigit = value % 10;
//    string lastDigitSpell = toBase(lastDigit);

//    return output + ( lastDigitSpell == "" ? "" : "-" + lastDigitSpell );
//}

//// =========================================================================

//// deal with two numbers
//string dealWithTwoNumbers(int num) {


//    if ( num == 00 ) {
//        return "";
//    }
//    else if ( num < 10 ) {
//        return toBase(num);
//    }
//    else if ( num < 20 ) {
//        return toTeen(num);
//    }
//    else if ( num < 100 ) {
//        return toTens(num);
//    }


//    return "unknown";
//}

//// deal with three numbers
//string dealWithThreeNumbers(int num) {
//    const int firstDigit = num / 100;
//    string output = toBase(firstDigit) + " hundred";

//    const int theLastTwo = num % 100;
//    string output2 = dealWithTwoNumbers(theLastTwo);

//    return output + ( output2.empty() ? "" : " and " + output2 );

//}

//// 1st delegator
//string what(int num) {

//    if ( num < 0 ) return "";

//    if ( num <  100 ) {
//        return dealWithTwoNumbers(num);
//    }
//    else if ( num < 1000 ) {
//        return dealWithThreeNumbers(num);
//    } else {
//        return "unknown";
//    }

//}
//// =========================================================================

//// only 0-9 that allowed to pass
//// anything else rejected
//bool isValid(const string input) {
//    for (auto it = input.cbegin(); it!=input.cend(); ++it) {
//        char c = *it;
//        switch (c) {
//        case '0': case '1': case '2': case '3': case '4':
//        case '5': case '6': case '7': case '8': case '9':
//            break;
//        default:
//            return false;
//        }
//    }
//    return true;
//}

//// return number in positive integer
//// on fails return -1
//int toNumberZ(const string input) {
//    if (isValid(input)) {
//        try {
//            return stoi(input);
//        } catch (out_of_range) {
//            return -1;
//        }
//    }

//    return -1;
//}

//// split a string into triples
//vector<string> groupFrom(const string input) {

//    vector<string> triples;

//    int overhead = input.size()%3;

//    string prefix;
//    for (auto i=input.cbegin(); i!=input.cbegin()+overhead; ++i) {
//        prefix.push_back(*i);
//    }

//    if (!prefix.empty()) triples.push_back(prefix);



//    for ( auto x=overhead; x<input.length(); x+=3 ) {
//        string triple;
//        triple.push_back(input.at(x));
//        triple.push_back(input.at(x+1));
//        triple.push_back(input.at(x+2));

//        triples.push_back(triple);
//    }

//    return triples;
//}

// =========================================================================
