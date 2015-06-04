concatena([ ],L,L):-!.
concatena([A|B],C,[A|D]):-concatena(B,C,D).