function [ T ] = selfComposeRelation(R, orderOfComposure)
    if orderOfComposure <= 1
        T = R;
    else
        T = composeRelations(R,R);
        for i=2:orderOfComposure - 1
            T = composeRelations(T,R);
        end
    end
end