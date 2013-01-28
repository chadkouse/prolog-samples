myReverse([Head], [Head|[]]).
myReverse(Reverse, [Head|Tail]) :- myReverse(Rev2, Tail), append(Rev2, [Head], Reverse).

myMinCompare(A, A, B) :- A < B.
myMinCompare(B, A, B) :- B =< A.
myMin([Head], [Head|[]]).
myMin(Minimum, [Head|Tail]) :- myMin(Minimum2, Tail), myMinCompare(Minimum, Minimum2, Head).

mySort([], []).
mySort(Sorted, [Head|Tail]) :- mySort(Sorted2, Tail), myInsert(Head, Sorted2, Sorted).
myInsert(Head, [], [Head]).
myInsert(Head, [SortedHead|SortedTail], [Head|[SortedHead|SortedTail]]) :- Head =< SortedHead.
myInsert(Head, [SortedHead|SortedTail], [SortedHead|SortedTail2]) :-
  Head > SortedHead,
  myInsert(Head, SortedTail, SortedTail2).

