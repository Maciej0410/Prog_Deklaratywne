osoba(maciek).
osoba(konrad).
osoba(bartek).
osoba(oliwia).
osoba(basia).
osoba(tobiasz).
osoba(rafal).

mieszka(maciek, myszyniec).
mieszka(konrad, myszyniec).
mieszka(bartek, gdansk).
mieszka(oliwia, gdansk).
mieszka(basia, gdansk).
mieszka(tobiasz, myszyniec).
mieszka(rafal, myszyniec).


p(a, d).
p(X,Y):-q(X,Z), r(Z,Y).

q(a,b).
q(c,a).

r(a,d).
r(b,c).


sasiedzi(X,Y):-mieszka(X, Z),mieszka(Y,Z).






