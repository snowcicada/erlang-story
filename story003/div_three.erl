%%%-------------------------------------------------------------------
%%% @author snowcicada
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 01. Jan 2021 8:33 PM
%%%-------------------------------------------------------------------
-module(div_three).
-author("snowcicada").

%% API
-export([print/1]).

print(N) when N =:= 0 ->
	io:format("~n");
print(N) when N rem 3 =:= 0 ->
	io:format("~p ", [N]),
	print(N - 1);
print(N) ->
	print(N - 1).
