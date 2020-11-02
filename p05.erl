-module(p05).
-export([rev/1]).

rev([]) -> 
    [];
rev([H|T]) ->
     rev(T) ++ [H].

