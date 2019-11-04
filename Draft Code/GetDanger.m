function [Danger] = GetDanger(board)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
Danger = 0;
for m = 2:9
    for n = 2:9
        if(board(m, n) == 1)
            if((board(m - 1, n - 1) == -1 && board(m + 1, n + 1) == -1) || (board(m - 1, n - 1) == 1) && board(m - 1, n - 1) == -1)
                Danger = Danger + 1;
            end
        end
    end
end
end

