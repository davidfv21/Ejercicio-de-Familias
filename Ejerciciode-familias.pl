%Padres, hermano, yo

padreDe('Nidia','David').
padreDe('Edgar','David').
padreDe('Nidia','Diego').
padreDe('Edgar','Diego').

%Abuelos y Bisabuelos Maternos

padreDe('Nidia','Nidia').
padreDe('Jose','Nidia').

padreDe('Isabel','Nidia').
padreDe('Carlos','Nidia').

padreDe('Alba','Jose').
padreDe('Ricardo','Jose').

%Abuelos y Bisabuelos Paternos

padreDe('Maribel','Luis').
padreDe('Maribel','Elena').
padreDe('Maribel','Diana').
padreDe('Grabriel','Luis').
padreDe('Grabriel','Elena').
padreDe('Grabriel','Diana').

padreDe('Hernesto','Maribel').
padreDe('sofia','Maribel').

padreDe('Agustin','Gabriel').
padreDe('Ana','Gabriel').

%Primos y tios

padreDe('Elena,'Fernanda').
padreDe('Elena','Paola').
padreDe('Wilson','Fernanda').
padreDe('Wilson','Paola').
padreDe('Diana','Leonardo').
padreDe('Diana','Catalina').
padreDe('Fabian','Leonardo').
padreDe('Fabian','Catalina').

hermanoDe(A,B) :-padreDe(C,A), padreDe(C,B), A \== B.


tioDe(A,B) :- hermanoDe(A,C), hijoDe(B,C).
primo(A,B) :- tioDe(C,A), hijoDe(B,C).
hijoDe(A,B) :- padreDe(B,A).
abueloDe(A,B) :-padreDe(A,C), padreDe(C,B).

casado(A,B) :- hijoDe(C,A), hijoDe(C,B), A \== B.
nietoDe(A,B) :- padreDe(B,C), padreDe(C,A).
sobrinode(A,B):-tioDe(B,A).

feliz(A) :-(casado(A,_).
