%%%-------------------------------------------------------------------
%%% @author snowcicada
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 01. Jan 2021 8:33 PM
%%%-------------------------------------------------------------------
-module(fruit_price03).
-author("snowcicada").

%% API
-export([fruit_price/1, discount/2, get_discount_func/0]).

fruit_price(Count) ->
	Discount = get_discount_func(),
	io:format("~p~n", [Discount(Count, 10)]).

get_discount_func() ->
	fun discount/2.

%% 函数形参进行模式匹配
%% 买1个没打折，买2个打8折，买3个以上打5折
discount(1 = Count, Price) ->
	Count * Price;
discount(2 = Count, Price) ->
	Count * Price * 0.8;
discount(Count, Price) ->
	Count * Price * 0.5.
