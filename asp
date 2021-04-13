#const n = 6.
{ color(X,1..n) } = 1 :- area(X).
:- hasborder(X,Y), color(X,C), color(Y,C).

area(north_hempstead).
area(olyster_bay).
area(huntington).
area(smithtown).
area(riverhead).
area(southhold).
area(shelter_island).
area(east_hampton).
area(southampton).
area(brookhaven).
area(islip).
area(babylon).
area(hempstead).


%Borders

hasborder(north_hempstead,(olyster_bay;hempstead)).
hasborder(olyster_bay,(north_hempstead;hempstead;huntington;babylon)).
hasborder(huntington,(olyster_bay;smithtown;islip;babylon)).
hasborder(smithtown,(brookhaven;huntington;islip)).
hasborder(riverhead,(brookhaven;southhold;southampton)).
hasborder(southhold,(shelter_island;riverhead)).
hasborder(shelter_island,(east_hampton;southhold;southampton)).
hasborder(east_hampton,(shelter_island;southampton)).
hasborder(southampton,(riverhead;brookhaven)).
hasborder(brookhaven,(southampton;riverhead;smithtown;islip)).
hasborder(islip,(brookhaven;babylon;smithtown;huntington)).
hasborder(babylon,(islip;olyster_bay)).
hasborder(hempstead,(north_hempstead;olyster_bay)).


%Display
#show color/2
