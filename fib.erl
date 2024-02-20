-module(fib).
-export([ fib_p/1,fib_g/1, fib_tail/1]).


%Без хвостовой рекурсии
fib_p(N) ->
if
	N== 0 -> 0;
	N== 1 -> 1;
	true -> fib_p(N-1) + fib_p(N-2)
end.




%when
fib_g(N) when N == 0 -> 0;
fib_g(N) when N == 1 -> 1;
fib_g(N) when N > 0 -> fib_g(N-1) + fib_g(N-2).


% Хвостовая рекурсия

fib_tail(N) -> fib_tail(N, 0, 1).
fib_tail(0, X, _) -> X;
fib_tail(N, X, Next) -> fib_tail(N-1, Next, X + Next).






