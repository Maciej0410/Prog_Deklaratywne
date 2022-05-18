%Tematyk¹ programu jest akwarystyka, czyli dziedzina widzy na temat
% hodowli zwierz¹t wodnych. Celem programu jest wskazanie konkretnych
% elementów akwariów wykorzystywanych do hodowli(nazwa akwarium,
% pojemnoœæ, kszta³t, model pokrywy, rozmiar pokrywy oraz rodzaje
% filtrów do konkretnej pojemnoœci). Program rozwi¹zuje problem doboru
% akwarium, oraz jego poszczególnych elementów.


%zadefiniowanie predykatu pojemnosc/1
%
pojemnosc(20).
pojemnosc(50).
pojemnosc(100).
%
%Przyk³adowe wywo³anie predykatu: pojemnosc(X).
%
%Przyk³adowy wynik: X=50
%Predykat po wywolaniu ma na celu wskazanie pojemnosci akwarium.




%zadefiniowanie predykatów akwarium_model/1
%
akwarium_model(aquael).
akwarium_model(juwel).
akwarium_model(sunSun).
akwarium_model(fluwal).
akwarium_model(rybka).
%
%Przyk³adowe wywo³anie predykatu: akwarium_model(X).
%
%Przyk³adowy wynik: X=sunSun
%Predykat po wywolaniu ma na celu wskazanie modelu akwarium.





%zadefiniowanie predykatów typ/1
%
typ(tradycyjne).
typ(robota_reczna).
%
%Przyk³adowe wywo³anie predykatu: typ(X).
%
%Przyk³adowy wynik: X=tradycyjne.
%Predykat po wywolaniu ma na celu wskazanie typu akwarium.







%zadefiniowanie predykatów akwarium_pojemnosc/2
akwarium_pojemnosc(aquael, 50).
akwarium_pojemnosc(juwel, 20).
akwarium_pojemnosc(sunSun, 100).
akwarium_pojemnosc(fluwal, 50).
akwarium_pojemnosc(rybka, 20).
%
%Przyk³adowe wywo³ania predykatu: akwarium_pojemnosc(sunSun,X);
% akwarium_pojemnosc(Y, 50).
%
%Przyk³adowe wynik: X=100; Y=aquael.
%
% Predykat po wywolaniu ma na celu wskazanie pojemnoœci akwarium
% konkretnej marki lub wskazania marki akwarium dla konkretnej
% pojemnoœci.






%zadefiniowanie predykatów akwarium_typ/2
akwarium_typ(aquael, tradycyjne).
akwarium_typ(juwel, robota_reczna).
akwarium_typ(sunSun, tradycyjne).
akwarium_typ(fluwal, robota_reczna).
akwarium_typ(rybka, tradycyjne).
%
%Przyk³adowe wywo³ania predykatu: akwarium_typ(fluwal,X);
% akwarium_typ(Y, tradycyjne).
%
%Przyk³adowe wynik: X=robota_reczna; Y=rybka.
%
% Predykat po wywo³aniu ma na celu wskazanie typu akwarium dla
% konkretnej marki lub markê akwarium do konkretnego typu.


%zadefiniowanie predykatu akwarium_info/3
akwarium_info(X,Y,Z):-akwarium_typ(X, Y), akwarium_pojemnosc(X,Z).
%
%Przyk³adowe wywo³ania predykatu: akwarium_info(aquael,X,Y);
% akwarium_info(X2,tradycyjne,y2); akwarium_info(X3,Y3,50).
%
%
%Przyk³adowe wynik: X=tradycyjne, Y=50 ; X2=rybka, Y2=20 ;
% X3=fluwal, Y3=robota_reczna
%
% Predykat po wywo³aniu ma na celu wskazanie informacji o akwarium,
% u¿ytkownik ma 3 mo¿liwoœci: 1. informacje o akwarium konkretnej marki,
% 2. informacje o akwariach konkretnego typu,
% 3. informacje o akwariach konkretnej pojemnoœci.







%zadefiniowanie predykatu pokrywa_model/1
pokrywa_model(aqua4).
pokrywa_model(classic).
pokrywa_model(leddy).
%
%Przyk³adowe wywo³anie predykatu: pokrywa_model(X).
%
%Przyk³adowy wynik: X=classic
%
%Predykat po wywolaniu ma na celu wskazanie modelu pokrywy do akwarium.





%zadefiniowanie predykatu pokrywa_rozmiar/1
pokrywa_rozmiar(maly).
pokrywa_rozmiar(sredni).
pokrywa_rozmiar(duzy).
%
%Przyk³adowe wywo³anie predykatu: pokrywa_rozmiar(X).
%
%Przyk³adowy wynik: X=duzy
%
% Predykat po wywolaniu ma na celu wskazanie rozmiary pokrywy do
% akwarium.





%zadefiniowanie predykatu pojemnosc_rozmiar/2
pojemnosc_rozmiar(20, maly).
pojemnosc_rozmiar(50, sredni).
pojemnosc_rozmiar(100, duzy).
%
%Przyk³adowe wywo³ania predykatu: pojemnosc_rozmiar(X,sredni) ;
% pojemnosc_rozmiar(50,X2).
%
%Przyk³adowe wyniki: X=50 ; X2=sredni
%
% Predykat po wywolaniu ma na celu wskazanie, która z objêtnoœci jest
% klasyfikowana jako ma³a, œrednia lub du¿a.



%zadefiniowanie predykatu pokrywa_info/2
pokrywa_info(aqua4, maly).
pokrywa_info(classic, sredni).
pokrywa_info(leddy, duzy).
%
%Przyk³adowe wywo³ania predykatu: pokrywa_info(X,sredni) ;
% pokrywa_info(leddy,X2).
%
%Przyk³adowe wyniki: X=classic ; X2=duzy
%
% Predykat po wywolaniu ma na celu wskazanie informacji o rozmiarze
% pokrywy konkretnej marki lub markê konkretnego rozmiaru pokrywy do
% akwarium.




%zadefiniowanie predykatu pokrywa_akwarium/2
pokrywa_akwarium(X,Y):- pokrywa_info(X, Z1), akwarium_pojemnosc(Y,Z2), pojemnosc_rozmiar(Z2, Z1).
%
%Przyk³adowe wywo³ania predykatu: pokrywa_akwarium(X, fluwal) ;
% pokrywa_akwarium(leddy, X2).
%
%Przyk³adowe wyniki: X=classic ; X2=sunSun
%
% Predykat po wywolaniu ma na celu wskazanie, która pokrywa pasuje do
% konkretnego akwarium.


%zadefiniowanie predykatu filtr_model/1
filtr_model(ultramax).
filtr_model(greenLine).
filtr_model(bioactive).
filtr_model(xTreme).
%
%Przyk³adowe wywo³anie predykatu: filtr_model(X).
%
%Przyk³adowe wyniki: X=greenLine.
%
% Predykat po wywolaniu ma na celu wskazanie modelu filtra do akwarium.






%zadefiniowanie predykatu moc/1
moc('1W').
moc('2W').
moc('5W').
moc('10W').
%
%Przyk³adowe wywo³anie predykatu: moc(X).
%
%Przyk³adowe wyniki: X='2W'.
%
% Predykat po wywolaniu ma na celu wskazanie wartoœæ mocy.


%zadefiniowanie predykatu filtr_moc/2
filtr_moc(ultramax, '10W').
filtr_moc(xTreme, '5W').
filtr_moc(bioactive, '2W').
filtr_moc(greenLine, '1W').
%
%Przyk³adowe wywo³ania predykatu: filtr_moc(X, '2W') ;
% filtr_moc(ultramax, X2).
%
%Przyk³adowe wyniki: X=bioactive ; X2='10W'
%
% Predykat po wywolaniu ma na celu wskazanie zasilacza o odpowiedniej
% mocy lub jak¹ moc ma konkretny zasilacz.






%zadefiniowanie predykatu moc_pojemnosc/2
moc_pojemnosc('10W', 100).
moc_pojemnosc('10W', 50).
moc_pojemnosc('10W', 20).
moc_pojemnosc('5W', 50).
moc_pojemnosc('5W', 20).
moc_pojemnosc('2W', 20).
moc_pojemnosc('1W', 20).
%
%Przyk³adowe wywo³ania predykatu: moc_pojemnosc(X, 50);
% filtr_moc('10W', X2).
%
%Przyk³adowe wyniki: X='5W' ; X2=20.
%
% Predykat po wywolaniu ma na celu wskazanie, jaka moc filtra jest
% odpowiednia do konkretnej pojemnosci lub jaka pojemnoœæ jest
% odpowiednia dla danego filtra.


%zadefiniowanie predykatu filtr_akwarium/2
filtr_akwarium(X,Y):-filtr_moc(X, Z1), akwarium_pojemnosc(Y,Z2), moc_pojemnosc(Z1,Z2).
%
%Przyk³adowe wywo³ania predykatu: filtr_akwarium(ultramax, X);
% filtr_akwarium(X2, juwel).
%
%Przyk³adowe wyniki: X=aquael ; X2=xTreme.
%
% Predykat po wywolaniu ma na celu wskazanie, który filtr najlepiej
% pasuje do akwarium konkretnej marki lub do jakiego akwarium pasuje
% filtr konkretnej marki.





%zadefiniowanie predykatu kompatybilne_zestawy_Ak_Pok_Fil/3
kompatybilne_zestawy_Ak_Pok_Fil(X,Y,Z):-pokrywa_akwarium(Y, X), filtr_akwarium(Z,X).
%
%Przyk³adowe wywo³ania predykatu:
% kompatybilne_zestawy_Ak_Pok_Fil(juwel, X, Y).
% kompatybilne_zestawy_Ak_Pok_Fil(X2,aqua4,Y2).
% kompatybilne_zestawy_Ak_Pok_Fil(X3, Y2, ultramax).
%
%Przyk³adowe wyniki: X=aqua4 ; Y=ultramax
% X2=juwel ,Y2=xTreme ; X3=rybka , Y3=aqua4.
%
% Predykat po wywolaniu ma na celu dobranie kompatybilnego zestawu
% (akwarium, pokrywa, filtr), zestaw mo¿na wyszukaæ do konkretnej marki
% akwarium, konkretnej pokrywy lub konkretnego filtra.


