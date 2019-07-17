clear;
close all;
clc;

addpath(genpath("../Library"));

[x_s1,y_s1] = clothoidFresnel(50,200,100);
[x_s2,y_s2] = clothoidSeries(50,200,100);
[x_s3,y_s3] = clothoidSeriesVariable(50,200,100,5000);

hold on;
axis equal;
subplot(1,3,1);
plot(x_s1,y_s1);
subplot(1,3,2);
plot(x_s2,y_s2);
subplot(1,3,3);
plot(x_s3,y_s3);
hold off;