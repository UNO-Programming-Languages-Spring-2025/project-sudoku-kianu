% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

sudoku(X,Y,N) :- initial(X,Y,N).
1 {sudoku(X,Y,1..4)} 1 :- X=1..4, Y=1..4.
:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 != Y2.
:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 != X2.

#show sudoku/3.
