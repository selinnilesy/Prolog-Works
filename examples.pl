% Find the last element of a list.
my_last(X,[X]).
my_last(X,[H|T]) :- my_last(X,T).

% Find the last but one element of a list.
my_last(X,[X,P]).
my_last(X,[H|T]) :- my_last(X,T).

% Find the K'th element of a list, the first element in the list is number 1.
element_at(Answer,[Answer|_],1). 
element_at(Answer,[Head|Tail],N) :- New_N is N-1, element_at(Answer,Tail,New_N).
