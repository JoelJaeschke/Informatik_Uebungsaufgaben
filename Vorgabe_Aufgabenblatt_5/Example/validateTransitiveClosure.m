clear all;
close all;
clc;

%% Pfade zuruecksetzen
restoredefaultpath;
addpath( genpath( '../Library' ) );

%%

R = [ 0 1 0 0 
      0 0 0 1
      1 0 0 1
      1 0 0 0 ];

[ C, s ] = computeTransitiveClosure( R );

disp(s); % should be 3

disp(C); 
% should be
%      1     1     0     1
%      1     1     0     1
%      1     1     0     1
%      1     1     0     1