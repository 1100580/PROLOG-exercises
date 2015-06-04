estrada(a,d).

estrada(f,c).

estrada(b,c).

estrada(b,f).

estrada(a,b).

estrada(a,e).

estrada(e,f).

estrada(h,f).

estrada(e,d).

estrada(g,d).

estrada(g,h).

liga(a,b).

liga(a,c).

liga(a,d).

liga(b,e).

liga(b,f).

liga(c,f).

liga(c,g).

liga(d,a). 

liga(d,g).

liga(d,h).

liga(d,i).

liga(e,j).

liga(f,a).

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

caminho(O,R):-caminho(O,Y,R), (estrada(Y,O);estrada(O,Y)),todos_nos(L), mesma_lista(R,L).
caminho(O,D,R):-caminho(O,D,[O],R).
caminho(O,O,_,[O]).
caminho(O,D,V,[O|R]):-(estrada(O,Y);estrada(Y,O)),
			not member(Y,V),
			caminho(Y,D,[Y|V],R).

todos_nos(L):-findall(X,estrada(X,_),Lx), findall(Y,estrada(_,Y),Ly), append(Lx,Ly,Lz),elimina_repetidos(Lz,[],L).

elimina_repetidos([],L,L).
elimina_repetidos([X|L1],V,R):- not member(X,V),!,elimina_repetidos(L1,[X|V],R).
elimina_repetidos([_|L],V,L1):-elimina_repetidos(L,V,L1).

mesma_lista(L1,R1):-length(L1,N),length(R1,N).