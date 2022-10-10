%Write a function called freezing that takes a vector of numbers that correspond to daily low temperatures in Fahrenheit.
%Return numfreeze, the number of days with sub freezing temperatures ( that is, lower than 32 F) without using loops

function numfreeze = freezing(v)
    w=v(v<32);
    numfreeze = length(w)
end

%Code to call your function

numfreeze = freezing([45 21 32 31 51 12])