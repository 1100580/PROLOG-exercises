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

go(O,D,R):-largura([[O]],D,R).

largura([[D|T]|_],D,[D|T]).

largura([O|T],D,R):-findall([N|O],prox(O,N),P),append(P,T,LR),largura(LR,D,R).

prox([H|T],N):-liga(H,N), not member(N,[H|T]).