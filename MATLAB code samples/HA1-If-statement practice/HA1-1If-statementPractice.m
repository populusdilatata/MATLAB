%Write a function called picker that takes three input arguments called condition, in1 and in2
%in this order.
%The argument condition is a logical. If it is true, the function assign the value of in1 
%to the output argument out, otherwise, it assigns the value of in2 to out.
%See the examples below to see how picker works in practice

function out = picker(condition, in1, in2)
    if (condition)
        out=in1
    else
        out=in2
    end
end

%Code to call your function
out = picker(true,1,2)
out = picker(false,1,2)

