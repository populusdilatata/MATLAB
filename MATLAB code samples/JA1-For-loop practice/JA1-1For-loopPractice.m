%Write a function called halfsum that takes as input a matrix and computes the sum of its element that are in the diagonal
%and are to the right of it. The diagonal is defined as the set of those elements whose column and row indexes
%are the same. 
%In other words, the function adds up the element in the uppertriangular part of the matrix. 
%The name of the output argument is summa.

function summa=halfsum(A)
    U=A;
    [row, col]=size(A)
    for i=1:1:row
        for j=1:1:col
             if (i>j)
                 U(i,j)=0
             end
        end
    end
    U
    summa=sum(U,'all')
    
        
end

%Code to call your function

summa = halfsum([1 2 3; 4 5 6; 7 8 9])