-module(p10).
-export([encode/1]).

encode([])->
[];
encode([[Count,Elem]|[Elem|[]]])->
[[Count+1,Elem]];
encode([[Count,Elem]|[Elem|T]])->
encode([[Count+1,Elem]|T]);
encode([[Count,Elem1]|[Elem2|[]]])->
[[Count,Elem1]|[[1,Elem2]]];
encode([[Count,Elem1]|[Elem2|T]])->
[[Count,Elem1]|encode([[1,Elem2]|T])];
encode([H|T])->
encode([[1,H]|T]).
