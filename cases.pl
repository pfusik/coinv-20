use strict;
# https://www.worldometers.info/coronavirus/coronavirus-cases/#total-cases
my @a = qw(
580
845
1317
2015
2800
4581
6058
7813
9823
11950
14553
17391
20630
24545
28266
31439
34876
37552
40553
43099
45134
59287
64438
67100
69197
71329
73332
75184
75700
76677
77673
78651
79205
80087
80828
81820
83112
84615
86604
88585
90443
93016
95314
98425
102050
106099
109991
114381
118948
126214
134509
145416
156475
169517
182414
198159
218744
244902
275550
304979
337459
378830
422574
471035
531865
596366
663124
);
print "cases0\tdta\t", join ',', map { sprintf '$%02d', $_ % 100 } @a;
print "\n";
print "cases1\tdta\t", join ',', map { sprintf '$%02d', int($_ / 100) % 100} @a;
print "\n";
print "cases2\tdta\t", join ',', map { sprintf '$%02d', int($_ / 10000)} @a;
print "\n";