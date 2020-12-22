%%%-------------------------------------------------------------------
%%% @author snowcicada
%%% @copyright (C) 2020, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 22. Dec 2020 11:25 PM
%%%-------------------------------------------------------------------
-module(hello_world).
-author("snowcicada").

-include("hello_world.hrl").

%% API
-export([hello/0, world/0]).

hello() ->
  "Hello Erlang".

world() ->
  ?TEXT.