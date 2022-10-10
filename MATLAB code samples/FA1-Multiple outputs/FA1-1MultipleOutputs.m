%Write a function called corners that takes a matrix as an input argument
%and returns four outputs:
%The elements at its four corners in this order: top_left, top_right, bottom_left,
%and bottom_right
%(Note that loops and if-statements are neither necessary nor allowed as we have not
%covered them yet.)

function [a, b, c, d]=corners(A)
    [numRows,numCols] = size(A);
    numRows;
    numCols;
    a=A(1, 1)
    b=A(1, numCols);
    c=A(numRows, 1);
    d=A(numRows, numCols);
end

%Code to call your function
A = randi(100,4,5)
[top_left, top_right, bottom_left, bottom_right] = corners(A)
B = [1; 2]
[top_left, top_right, bottom_left, bottom_right] = corners(B)
