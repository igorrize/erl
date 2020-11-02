-module(p07).
-export([flatten/1]).
flatten(X) -> 
flatten(X, []).

flatten([H|T], Tail) ->
    flatten(H, flatten(T, Tail));
flatten([], Tail) -> Tail;
flatten(E, Tail) -> [E|Tail].






