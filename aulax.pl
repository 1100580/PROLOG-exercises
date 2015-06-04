liga(a,b).
liga(a,d).
liga(a,c).
liga(b,e).
liga(b,f).
liga(c,f).
liga(c,g).
liga(d,g).
liga(d,h).
liga(d,i).
liga(d,a).
liga(e,j).
liga(f,j).
liga(f,k).
liga(g,f).
liga(g,o).
liga(g,h).
liga(h,d).
liga(h,l).
liga(i,l).
liga(j,m).
liga(j,n).
liga(k,n).
liga(k,p).
liga(l,p).


caminho(O,D,R):-caminho(O,D,[O],R).
caminho(O,O,_,[O]).
caminho(O,D,V,[O|R]):-liga(O,Y),
			not member(Y,V),
			caminho(Y,D,[Y|V],R).
menorPath(X,O,D):-getPath(TL,O,D),menor(TL,X).
menor([X],X).
menor([C,Z|TL],X):-length(C,A),length(X,B),A<B,!,menor([C|TL],C).
menor([C|TL],X):-menor(TL,X).
getPath(TL,O,D):-findall(L,caminho(O,D,L),TL).
		
linha(1,[a,b,c,d,e,f]).
linha(2,[g,b,h,i,j,k]).
linha(3,[l,j,m,n,o,d,p]).
linha(4,[f,q,r,s,t]).
linha(5,[t,u,j,v,a,g]).


gera_cruzamentos:-findall(_,cruzamento,_).
cruzamento:- linha(N1,LE1),
		 linha(N2,LE2),
		 not N1=N2,
		intersecção(LE1,LE2,LI),
		length(LI,X),X>0,
		assertz(cruza(N1,N2,LI)).
membro(X,[X|_]).
membro(X,[_|L]):-membro(X,L).
intersecção([ ],_,[ ]).
intersecção([X|L1],L2,[X|LU]):-membro(X,L2),intersecção(L1,L2,LU).
intersecção([_|L1],L2, LU):- intersecção(L1,L2,LU).


get_estação(L):-findall(X,linha(_,X),LE),forma(LE,L).
forma([],[]).
forma([X|LE],L):-formaLista(X,L).

formaLista([],[]).
formaLista([X|LE],L):- formaLista(LE,[X|L]),not member(X,L).
formaLista([X|LE],L):-formaLista(LE,L).


