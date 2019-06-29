addpath("../Library");
clear;
clc;

% Test matrix
v = [1,1;
    1,2;
    2,1;
    1,1];

rotationTarget = [
    1.2929 1.7071;
    2.0000 2.4142;
    2.0000 1.0000; 
    1.2929 1.7071];

mirrorTarget = [
    3 3;
    2 3;
    3 2;
    3 3];

rotate45DegreesNegative = transformPoints(v,rotate(-45,[2 1]));
mirrorAtAxis = transformPoints(v ,mirrorAtAxis([1,3;3,1]));

hold on;
plot(v);
plot(rotate45DegreesNegative);
hold off;

hold on;
plot(v);
plot(mirrorAtAxis);
hold off;
