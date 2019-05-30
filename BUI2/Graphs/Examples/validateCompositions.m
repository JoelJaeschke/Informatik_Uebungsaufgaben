addpath("../Library");
R=[1,0,1,0;0,1,1,0;1,1,0,1;0,0,1,1];
S=[0,0,0,1;1,0,0,1;1,1,0,0;0,0,1,0];
T_composed=composeRelations(R,S);
T=[1,1,0,1;1,1,0,1;1,0,1,1;1,1,1,0];
assert(all(T_composed(:) == T(:)), "Composed relation did not match solution");