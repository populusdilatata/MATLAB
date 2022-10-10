%Write a function called minimax that takes M, a matrix input argument and returns mmr,
%a row vector containing the absolute values of the difference between the maximun
%and minimum element in the entire matrix. See the code below for an example
function [mmr, mmm]=minimax(A)
    [numRows,numCols] = size(A);
    numRows
    numCols
    
    c=min(min(A));
    d=max(max(A)); 
    mmm=abs(d-c) 
    
    e=min(A,[],2).' 
    f=max(A,[],2).' 
    mmr=abs (f-e);
end
% Code to call your function
[mmr, mmm] = minimax([1:4;5:8;9:12])
