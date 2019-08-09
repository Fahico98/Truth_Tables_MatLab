
function response = conditional(A, B)
    if(A && ~B)
        r = 0;
    else
        r = 1;
    end
    response = r;