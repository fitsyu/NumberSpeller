# Meet numspel
A Robot that spells a number

# Multiple language support
- English
- Bahasa

# How it works
- Give it a number from 0 up to maximum 999,999,999,999
  e.g: 1234567
  
- Split your number into triples
  e.g: 1234567 becomes 1, 234, 567
  
- Translate each triple:
  1   -> one
  234 -> two hundred thirty-four
  567 -> five hundred sixty-seven
  
- Assign each triple its unit name based on its position
  1   -> "million"
  234 -> "thousand"
  567 -> ""
  
- Combine the translated triples into the final form
  one million, two hundred thirty-four thousand, five hundred sixty-seven

__todo__
# How to add language to the system
