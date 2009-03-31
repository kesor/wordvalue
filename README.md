Wordvalue
=========

A parser written with the excellent Treetop PEG that can read numbers as they are writen in words, and provide the value of these numbers.

Examples:

    parse("12,002").value # => 12002
    parse("one hundred and thirty-one").value # => 131
    parse("pair").value # => 2
    parse("a dozen").value # => 12

Stackoverflow.com question and discussion is here:
http://stackoverflow.com/questions/70161/how-to-read-values-from-numbers-written-as-words

