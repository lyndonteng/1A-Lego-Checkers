function [Bestmove] = ScoreMove( move, oldboard, positionDanger, captures)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
board = oldboard;

y1 = move(1, 1);
x1 = move(1, 2);
y2 = move(2, 1);
x2 = move(2, 2);

global begin;

% 
% make a thing that accounts for captures
%

persistent highscore;
persistent Best;

if(begin == 1)
    highscore = -5;
    begin = 0;
end

if(length(captures) == 0)
    captures = [0, 0];
end


score = 0;
% count captures
score = score + length(captures) * 2;
% count Danger
score = score - GetDanger(board) + positionDanger;
% count aggression

if((board(y2 - 1 , x2 + 1) == -1) && (board(y2 + 1, x2 - 1) ~= 0) && (board(y2 - 2, x2 + 2) == 0))
    score = score + 1;
elseif(board(y2 - 1, x2 + 1) == -1 && board(y2 + 1, x2 - 1) == 0)
    score = score - 1;
end

if(board(y2 - 1, x2 - 1) == -1 && board(y2 + 1, x2 + 1) ~= 0 && board(y2 - 2, x2 - 2) == 0)
    score = score + 1;
elseif(board(y2 - 1, x2 - 1) == -1 && board(y2 + 1 , x2 + 1) == 0)
    score = score - 1;
end

%disp([move; captures]);
%disp(score);
%disp(highscore);

if(score > highscore)
    Best = [move; captures];
    highscore = score;
end

Bestmove = Best;

end

