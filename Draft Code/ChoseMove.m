function [BestMove] = ChoseMove(board)
%GetMoves Summary of this function goes here
%   Detailed explanation goes here

captures = {};
BestMove = {};
BestCaptures = {};
positionDanger = 0;
positionDanger = GetDanger(board);

for i = 2:9
    for j = 2:9
        if(board(i, j) == 1)
            % move 1
            move = [ i j ; 0 0 ];
            
            if(board(i - 1 , j - 1) == 0)
                % make move 
                move = [ i j ; i - 1 j - 1];
                % end make move
                captures = [];
                BestMove = ScoreMove(move, board, positionDanger, captures);  % scores the move and if its the best it sets it to be the best move
            end
            
            % move 2
                       
            if(board(i - 1 , j + 1) == 0)
                % make move 
                move = [ i j ; i - 1 j + 1];
                % end make move
                captures = [];
                BestMove = ScoreMove(move, board, positionDanger, captures);
            end
            
            % move 3
                        
            if(board(i - 1 , j - 1) == -1 && board(i - 2 , j - 2) == 0)
                % make move 
                move = [ i j ; i - 2 j - 2];
                % end make move
                captures =  [i - 1 , j - 1];
                
                BestMove = ScoreMove(move, board, positionDanger, captures);
                captures = [];
            end
            
            
            if(board(i - 1 , j + 1) == -1 && board(i - 2 , j + 2) == 0)
                % make move 
                move = [ i j ; i - 2 j + 2];
                % end make move
                captures = [i - 1 , j - 1];
                
                BestMove = ScoreMove(move, board, positionDanger, captures);
            end
            
            % end of moves

        end
    end
end

end

