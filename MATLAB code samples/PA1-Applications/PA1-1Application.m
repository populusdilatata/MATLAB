%Write a function called saddle that finds saddle points in the input matrix M. 
%For the purposes of this problem, a saddle point is defined as an element 
%whose value is greater than or equal to every element in its row, and less than or equal to every element 
%in its column. 
%Note that there may be more than one saddle point in M. 
%Return a matrix called indices that has exactly two columns. 
%Each row of indices corresponds to one saddle point with the first element of the row 
%containing the row index of the saddle point 
%and the second element containing the column index. 
%If there is no saddle point in M, then indices is the empty array.

function indices = saddle(M)
 saddle_m =  zeros(size(M));
 row_maximum = max(M, [], 2);
 col_minimum = min(M, [], 1);
 indices = [];
 for i = 1:size(M, 1)
    for j = 1:size(M, 2)
        if M(i, j) == row_maximum(i) && M(i, j) == col_minimum(j)
            saddle_m(i, j) = 1;
            indices = [i, j; indices];
        end
    end
 end
end

%Code to call your function

% create an interesting surface
[X,Y] = meshgrid(-15:0.5:10,-10:0.5:10);
Z = (X.^2-Y.^2)';
% find saddle points
indices = saddle(Z)
% plot surface
surf(Z);
hold on
% mark saddle points with red dots in the same figure
for ii = 1:size(indices,1)
    h = scatter3(indices(ii,2),indices(ii,1),Z(indices(ii,1),indices(ii,2)),'red','filled');
    h.SizeData = 120;
end
% adjust viewpoint
view(-115,14);
hold off

