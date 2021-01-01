%%%-------------------------------------------------------------------
%%% @author snowcicada
%%% @copyright (C) 2021, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 01. Jan 2021 8:33 PM
%%%-------------------------------------------------------------------
-module(fruit_price02).
-author("snowcicada").

%% API
-export([fruit_price/1, discount/2, discount_case/2, discount_guard/2, discount_if/2]).

fruit_price(Count) ->
	io:format("~p~n", [discount(Count, 10)]),
	io:format("~p~n", [discount_case(Count, 10)]),
	io:format("~p~n", [discount_guard(Count, 10)]),
	io:format("~p~n", [discount_if(Count, 10)]).

%% 函数形参进行模式匹配
%% 买1个没打折，买2个打8折，买3个以上打5折
discount(1 = Count, Price) ->
	Count * Price;
discount(2 = Count, Price) ->
	Count * Price * 0.8;
discount(Count, Price) ->
	Count * Price * 0.5.

%% 参数模式匹配
%% 买1个没打折，买2个打8折，买3个以上打5折
discount_case(Count, Price) ->
	case Count of
		1 ->
			Count * Price;
		2 ->
			Count * Price * 0.8;
		_ ->
			Count * Price * 0.5
	end.

%% 函数形参关卡判断
%% 买1个没打折，买2个打8折，买3个以上打5折
discount_guard(Count, Price) when Count =:= 1 ->
	Count * Price;
discount_guard(Count, Price) when Count =:= 2 ->
	Count * Price * 0.8;
discount_guard(Count, Price) ->
	Count * Price * 0.5.

%% 参数关卡判断
%% 买1个没打折，买2个打8折，买3个以上打5折
discount_if(Count, Price) ->
	if
		Count =:= 1 ->
			Count * Price;
		Count =:= 2 ->
			Count * Price * 0.8;
		true ->
			Count * Price * 0.5
	end.