function [ C, s ] = computeTransitiveClosure( R )
    C_prev = R;
    i = 2;
    while true
        T = selfComposeRelation(R,i);
        C = or(T, C_prev);
        if C == C_prev
            s = i;
            break;
        else
            C_prev = C;
            i = i + 1;
        end
    end
end