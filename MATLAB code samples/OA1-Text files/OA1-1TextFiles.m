%Write a function called char_counter that counts the number of a certain character in a text file. 
%The function takes two input arguments, fname, a char vector of the filename and character, 
%the char it counts in the file. The function returns charnum, the number of characters found. 
%If the file is not found or character is not a valid char, the function return -1. 
%As an example, consider the following run. The file "simple.txt" contains a single line: 
%"This file should have exactly three a-s..."
%charnum = char_counter('simple.txt','a')
%charnum =    3
%You may find it helpful to download the files for testing and dubugging in MATLAB.
%simple.txtOpens in new tab
%Frankenstein-by-Shelley.txt

function charnum= char_counter(filename, letter)
fid = fopen(filename,'rt');
charnum=0;
number_of_letter=double(letter);
if fid < 0 
    %error('error opening file %s\n', filename);
    charnum=-1;
else
    if (number_of_letter)>=32 && (number_of_letter)<=126
    % Read file as a set of strings, one string per line:
        oneline = fgets(fid)
        counter=0;
        while ischar(oneline)
        fprintf('%s',oneline) % display one line
            for ii=1:1:length(oneline)
                if (oneline(ii)==letter)
                charnum=charnum+1;
                end
            end
        oneline = fgets(fid);
        end
    fprintf('\n');
    fclose(fid);
    else
        charnum=-1;
    end
charnum
end

%Code to call your function

type('simple.txt')
charnum = char_counter('simple.txt','a')
charnum = char_counter('Frankenstein-by-Shelley.txt','?')