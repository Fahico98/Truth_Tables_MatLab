
function response = propType(matrix)

    trueValue = false;
    falseValue = false;
    
    for i = 1 : length(matrix)
        if matrix(i)
            trueValue = true;
        else
            falseValue = true;
        end
    end
    
    if trueValue && falseValue
        r = "Contingencia";
    elseif ~trueValue && falseValue
        r = "Contradicción";
    elseif trueValue && ~falseValue
        r = "Tautología";
    end
    
    response = r;