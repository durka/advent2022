data =. fread 'input'
lines =: split data

string_elves =: split (lines , (<''))
int_elves =: ". each each string_elves
sums =: +/ each (> each int_elves)

max =: >./ >sums
topthree =: +/ >(3 {. |. sort sums)

NB. short version

s =: +/ each (> each (". each each (< ;. _2 (< ;. _2 fread 'input') , <'')))
a =: >./ >s
b =: +/ >(3 {. |. sort s)

