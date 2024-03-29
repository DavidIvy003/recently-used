Tests:
======

To run tests, just type 'rake'


Display Output:
===============

To run script, use: './recently_used.rb'

To run with upper capacity, use: './recently_used.rb <capacity>'
e.g.: './recently_used.rb 20' will only save 20 items


Instructions:
=============

Found on: http://cyber-dojo.org/setup/show/

Develop a recently-used-list class to hold strings
uniquely in Last-In-First-Out order.

o) A recently-used-list is initially empty.

o) The most recently added item is first, the least
   recently added item is last.

o) Items can be looked up by index, which counts from zero.

o) Items in the list are unique, so duplicate insertions
   are moved rather than added.

Optional extras

o) Null insertions (empty strings) are not allowed.

o) A bounded capacity can be specified, so there is an upper
   limit to the number of items contained, with the least
   recently added items dropped on overflow.
