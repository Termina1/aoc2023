load 'regex'
data =. 'm' fread 'day2/day2.txt'
rmgm =. ('Game \d+:';'')&rxrplc
parse =. ('red'; '* (1 0 0)';'green';'* (0 1 0)';'blue';'* (0 0 1)';';';'));((';',';'),(')
wrap =. '('&,@,&')'
m =. >@(+/@(_3&(]\)) each)@(".@(wrap^:2@rmgm@rplc&parse)) each <"1 data

] part1 =. +/ 1 + I. 0 = > +/^:2@:((12 13 14)&<"1) each m
] part2 =. +/ > (*/ each) >./ each m
