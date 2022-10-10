%The attached Distances.xlsxOpens in new tab file contains a spreadsheet with the pairwise distances 
%in miles of the top 100 US cities by population. 
%A preview of the spreadsheet is shown below. The first row and first column contain the city names using the following format: 
%city name comma space capitalized state abbreviation, e.g., Nashville, TN. 
%Note that the very first cell of the spresheet, A1, is blank. 
%Write a function called get_distance that accepts two character vector inputs representing the names of two cities. %The function returns the distance between them as an output argument called distance. 
%For example, the call get_distance('Seattle, WA','Miami, FL') should return 3723. 
%If one or both of the specified cities are not in the file, the function returns -1.
%Preview of the first five cities of Distances.xlsx 

function distance = get_distance(city1, city2)
[num,txt,raw] = xlsread('Distances.xlsx');
[a b]=size(raw);
q=0;
w=0;
for i = 2:a
    if strcmp(raw{i,1},city1)==1
        q=i
    end
end
for j = 2:b
    if strcmp(raw{1,j},city2)==1
        w=j
    end
end
if q>1 && w>1
    distance = raw{q,w};
else 
    distance = -1;
end
end

%Code to call your function

distance = get_distance('Seattle, WA','Miami, FL')
