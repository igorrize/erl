-module(p12).
-export([decode_modified/1]).

decode_modified([])->
    [];
decode_modified([[2,X]|[]])->
    [X,X];
decode_modified([[Count,X]|[]])->
    [X|decode_modified([[Count-1,X]])];
decode_modified([[2,X]|T])->
    [X|[X|decode_modified(T)]];
decode_modified([[Count,X]|T])->
    [X|decode_modified([[Count-1,X]|T])];
decode_modified([H|[[Count,X]|T]])->
    [H|decode_modified([[Count,X]|T])];
decode_modified([H|[]])->
    [H].


