gamma(_,_,[],0).
gamma(X,Y,[A|L],N):-A>=X,A=<Y,!,
			gamma(X,Y,L,N1),
			N is 1+N1.
gamma(X,Y,[_|L],N):-gamma(X,Y,L,N).