
colouring(DE,CH,IT,HU,AT,SI,CZ,SK,PL,HR,ADS):-
ADS=blue,
different(ADS,IT),
different(ADS,SI),
different(ADS,HR),
different(IT,CH),
different(IT,AT),
different(IT,SI),
different(SI,HR),
different(SI,HU),
different(SI,AT),
different(HR,HU),
different(CH,AT),
different(CH,DE),
different(AT,DE),
different(AT,HU),
different(AT,SK),
different(AT,CZ),
different(HU,SK),
different(DE,PL),
different(DE,CZ),
different(CZ,PL),
different(PL,SK),
different(CZ,SK).
different(red,blue).
different(red,yellow).
different(red,green).
different(blue,yellow).
different(blue,green).
different(yellow,green).
different(blue,red).
different(yellow,red).
different(green,red).
different(yellow,blue).
different(green,blue).
different(green,yellow).


%   6 ?- colouring(DE,CH,IT,HU,AT,SI,CZ,SK,PL,HR,ADS). --> run this command