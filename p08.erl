-module(p08).
-export([compress/1]).

compress([])    -> [];
compress([A,A,A|T]) -> compress([A,A|T]);
compress([A,A|T]) -> [A|compress(T)];
compress([_H|T]) -> compress(T).
