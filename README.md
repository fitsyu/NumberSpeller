# Meet numspel
A Robot that spells a number

# Multiple language support
Currently supported languages are:
- English
- Bahasa

# How it works
- Given a number from 0 up to maximum 999,999,999,999

  e.g: 1234567
  
- Splits your number into triples starting from the rear

  i.e: 1234567 becomes 1, 234, 567
  
- Translates each triple

  1   -> one

  234 -> two hundred and thirty-four

  567 -> five hundred and sixty-seven
  
- Assigns each triple its unit name based on its position

  1   -> "million"

  234 -> "thousand"

  567 -> ""
  
- Combines the translated triples into the final form

  > one million, two hundred and thirty-four thousand, five hundred and sixty-seven

- Done

# How to add language to the system
  You need to subclass two things:
  1. **Language** class
  2. **Number** class

  See **English** class and **EnglishNumber** class to see how number in English is implemented
