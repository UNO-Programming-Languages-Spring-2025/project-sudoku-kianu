% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
#const n=3.

sudoku(X,Y,N) :- initial(X,Y,N).
1 {sudoku(X,Y,1..n*n)} 1 :- X=1..n*n, Y=1..n*n.
:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 != Y2.
:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 != X2.

subgrid(X,Y,1+(((X-1)/n)*n+(Y-1)/n)) :- X=1..n*n, Y=1..n*n.

:- subgrid(X1,Y1,N), subgrid(X2,Y2,N), sudoku(X1,Y1,M), sudoku(X2,Y2,M), X1 != X2, Y1 != Y2.

#show sudoku/3.
