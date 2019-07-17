clear;
clc;
close all;
addpath(genpath("../Library"));

[x_arc,y_arc] = arc([1,2],5,deg2rad(35),deg2rad(115),20);

hold on;
axis equal;
plot(x_arc,y_arc);
hold off;