
board = [ 5  5  5  5  5  5  5  5  5  5;    % 1
          5 -1  0  0  0  0  0  0  0  5;
          5  0 -1  0  0  0  0  0 -1  5;
          5 -1  0 -1  0 -1  0  1  0  5;
          5  0  0  0 -1  0  0  0  0  5;    % 5
          5  0  0 -1  0  0  0  0  0  5;
          5  0  0  0  1  0  0  0  1  5;
          5  1  0  0  0  1  0 -1  0  5;
          5  0  1  0  1  0  0  0  0  5;
          5  5  5  5  5  5  5  5  5  5 ];  % 10
      
      %   1           5              10
      
global begin;
begin = 1;
currentMove = ChoseMove(board);

%board = updateboard(board, currentMove);   another function
%currently it does not know its amde moves and will do the same move twice,
%so run the program then type the changes it made into the array, and then
%its oponents move. it is playing 1.

%current move is an array ( oldYcoordinate oldXcoordinate ;
%                           newYcoordinate newXcoordinate ; 
%                           capturedYcoordinate capturedXcoordinate )

% actually cannot do double jumps right now


%some debugging comments in Score move

disp(currentMove);






