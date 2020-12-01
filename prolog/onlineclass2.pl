% Recursive functin
%    f(0) = 1
%    f(n) = 2n + f(n-1)
% f(0) = 1
recfunc(0,1).
%                  N - 1      f(n-1)         2N + f(n-1) (F1=f(n-1))
recfunc(N,F) :- N1 is N - 1, recfunc(N1,F1), F is (2 * N) + F1.

% Unify two parameters to the same value
same(X,X).

% lists & pairs
% PAIR: [ Head | Tail ]
% LIST: [] or [ Head | TailIsAList ]

pairparts([H|T], H, T).

is_pair([_H|_T]).

is_list([]).
is_list([_H|T]) :- is_list(T).

% swap the head and the tail
swap_head_tail([H|T],[T|H]).

% does the list have at least 4 elements?
at_least_four_elements([_,_,_,_|_T]).

% the third element of the list is X
third_element_is([_,_,X|_T],X).

% add the elements of a list
add_list([],0).
add_list([H|T], Sum) :- add_list(T, SumTail), Sum is H + SumTail.

% increment each element of a list
increment([],[]).
increment([H|T], [H1|TailInc]) :- H1 is H + 1, increment(T, TailInc).

% get only multiples of N
multiples_of_n([],_N,[]).
multiples_of_n([H|T], N, [H|TailMultiples]) :- 0 is H mod N, multiples_of_n(T,N,TailMultiples).
multiples_of_n([H|T], N, TailMultiples) :- X is H mod N, X > 0, multiples_of_n(T,N,TailMultiples).

clear :- nl,nl,nl,nl,nl,nl,nl,nl,nl,nl,nl,nl,nl,nl,nl,nl,nl,nl,nl,nl.
