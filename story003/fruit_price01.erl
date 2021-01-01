%%%-------------------------------------------------------------------
%%% @author snowcicada
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 01. Jan 2021 8:33 PM
%%%-------------------------------------------------------------------
-module(fruit_price01).
-author("snowcicada").

%% API
-export([fruit_price/0, fruit_price/1]).

%% 买1个水果的价格
fruit_price() ->
	fruit_price(1).

%% 买多个水果的价格
fruit_price(Count) ->
	Count * 10.
