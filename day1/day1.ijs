data =. <"1 ('m' fread 'day1/day1.txt')
cal =. ({. (a.&({~))@, {:)@(((48&< *. 58&>) # ]))@(a.&i.)
] part1 =. +/ > ".@cal each data

sub =. 'one';'1e';'two';'2o';'three';'3e';'four';'4';'five';'5e';'six';'6';'seven';'7';'eight';'8t';'nine';'9e'
data2 =. (''&([ F.. ((rplc&sub)@(,~)))) each data
] part2 =. +/ > ".@cal each data2

154 { (cal each data2)
