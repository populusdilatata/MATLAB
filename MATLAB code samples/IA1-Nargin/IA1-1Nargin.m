function too_young=under_age(age, limit)
    if (nargin==1)
        if (age<21)
            too_young=true;
        else
            too_young=false;
        end
    else if (nargin ==2)
            if (age<limit)
            too_young=true;
        else
            too_young=false;
        end
    end
    

end

%Code to call your function
too_young = under_age(18,18)
too_young = under_age(20)