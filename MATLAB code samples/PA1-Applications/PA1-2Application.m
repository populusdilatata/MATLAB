%Write a function called blur the input image

% The function is to be called like this:
%output = blur(img,w);
%where img, the input image is a two-dimensional matrix of grayscale pixel values between 0 and 255. 
%Blurring is to be carried out by averaging the pixel values in the vicinity of every pixel. 
%Specifically, the output pixel value is the mean of the pixels in a square submatrix of size 
%2w+1 where the given pixel sits in the center. 
%For example, if w is 1, then we use a 3x3 matrix, that is, we average all the neighboring pixels of the given pixel and itself. 
%Only use valid pixels when portions of the blurring matrix fall outside the image. 
%For example, the blurred value corresponding to w = 1 at index (1,1) would be the mean of of elements 
%(1,1), (1, 2), (2,1) and (2, 2). Both input img and output output are of type uint8.
%You can download the test image here to use in MATLAB.

function output = blur(A,w)
 A1=double(A)
 class(A1);
 newA = -2*ones(size(A)+2*w);
 newA((1+w):(end-w),(1+w):(end-w))=A1;
 [rownewA, colnewA]= size(newA);
 [rowA, colA]= size(A);
 output=A;
 newA
 for ii=(1+w):1:(rowA+w)
     ii;
     for jj=(1+w):1:(colA+w)
         temp=0;
         jj;
         true_area=0;
         for index=(ii-w):1:(ii+w)
             for jindex=(jj-w):1:(jj+w)
                 if(newA(index,jindex)>=0)
                    temp=newA(index,jindex)+temp;
                    true_area=true_area+1;
                 end
             end
         end
         true_area;
         subA(ii,jj)=temp/true_area; 
     end
 end

 subA
 subB=subA(1+w:rowA+w,1+w:colA+w)

 subB
 output=uint8(subB)
end

%Code to call your function

img = imread('vandy.png');
output = blur(img,2);
imshow(output);