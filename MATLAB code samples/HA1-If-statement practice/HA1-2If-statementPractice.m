%Write a function called eligible that helps the admission officer of the Graduate School of Vanderbilt University
%decide whether the applicant is eligible for admission based on GRE scores. The function takes two positive
%scalars called v and q as input and returns the logical admit as output.
%They represent the percentiles of the verbal and quantitative portions of the GRE respectively.
%You do not need to check the inputs.
%The applicant is eligible if the average percentile is at least 92% and both of individual 
%percentiles are over 88%. 
%The function returns logical true of false value.

function admit = eligible(v,q)
    if ((v+q)/2)>=92 & (v > 88) & q > 88 
        admit = true;
    else
        admit = false;
end

%Call to call your function

admit = eligible(96,89)
admit = eligible(88,99)
admit = eligible(92,91)

