-module(p06).
-export([is_palindrome/1]).

is_palindrome(N) ->
        rev(N) == N.

rev([]) -> 
    [];
rev([H|T]) ->
     rev(T) ++ [H].

