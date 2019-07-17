close all;
clear;
clc;
addpath('../Library');

v = [1 1;
     1 2
     2 1
     1 1];
 
  
figure;
subplot(1,2,1) 
plot( v(:,1), v(:,2), '-ro' );
hold on;
axis equal;
axis([0 4 0 4]);
 

centerOfRotation = [2,1];
q = transformPoints( v, rotate(45 , centerOfRotation ) );
plot( q(:,1), q(:,2), '-bo' );
subplot(1,2,2)
plot( v(:,1), v(:,2), '-ro' );
hold on;
axis equal;
axis([0 4 0 4]);
pointsOfMirrorAxis = [ 1,3; 3,1];
plot( pointsOfMirrorAxis(:,1), pointsOfMirrorAxis(:,2), '-ko' );
 
q = transformPoints(v, mirrorAtAxis(pointsOfMirrorAxis) );
plot( q(:,1), q(:,2), '-bo' );