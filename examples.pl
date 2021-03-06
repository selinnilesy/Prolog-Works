% Find the last element of a list.
my_last(X,[X]).
my_last(X,[H|T]) :- my_last(X,T).

% Find the last but one element of a list.
my_last(X,[X,P]).
my_last(X,[H|T]) :- my_last(X,T).

% Find the K'th element of a list, the first element in the list is number 1.
element_at(Answer,[Answer|_],1). 
element_at(Answer,[Head|Tail],N) :- New_N is N-1, element_at(Answer,Tail,New_N).

% Find the number of elements of a list
how_many(Answer,[],Answer).
how_many(Answer,[Head|Tail],N) :- New_N is N+1, how_many(Answer,Tail,New_N).

% Reverse a list
my_reverse(Temp_list,[],Temp_list).
my_reverse(Answer,[Head|Tail],Temp_list) :- my_reverse(Answer,Tail,[Head|Temp_list]).

% Find out whether a list is a palindrome
is_palindrome(List) :- reverse(List,List).

% Duplicate the elements of a list.
dupli(Answer,[],Answer).
dupli(Answer,[Head|Tail], Temp) :-  append(Temp,[Head,Head],New_Temp), dupli(Answer, Tail, New_Temp).

% Flatten a nested list structure.
my_flatten(X,[X]) :- \+ is_list(X).
my_flatten([],[]).
my_flatten([Head|Tail],Temp_List) :- my_flatten(Head,Temp_List1), my_flatten(Tail,Temp_List2), append(Temp_List1,Temp_List2,Temp_List).

% Eliminate consecutive duplicates of list elements.
compress([],[]).
compress([X],[X]).
compress([X,X|Xs],Zs) :- compress([X|Xs],Zs).
compress([X,Y|Ys],Zs) :- X \= Y, compress([Y|Ys],Zs_prime), append([X], Zs_prime, Zs).

