addpath("../Library");

R=[0,1,0,0;0,0,0,1;1,0,0,1;1,0,0,0];
R_plus=[1,1,0,1;1,1,0,1;1,1,0,1;1,1,0,1];
R_transitiveHull=computeTransitiveClosure(R);
assert(all(R_plus(:) == R_transitiveHull(:)), "Compued hull does not match correct solution");