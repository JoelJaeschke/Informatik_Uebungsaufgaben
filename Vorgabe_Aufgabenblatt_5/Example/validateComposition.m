clear all;
close all;
clc;

%% Pfade zuruecksetzen
restoredefaultpath;
addpath( genpath( '../Library' ) );

%%

R = [ 1 0 1 0
      0 1 1 0
      1 1 0 1
      0 0 1 1 ];

S = [ 0 0 0 1
      1 0 0 1 
      1 1 0 0
      0 0 1 0 ];
  
T = composeRelations( R, S );

disp(T);

% should be:
%      1     1     0     1
%      1     1     0     1
%      1     0     1     1
%      1     1     1     0

%% sefl composition

R = [ 0 1 0 0 
      0 0 0 1
      1 0 0 1
      1 0 0 0 ];
 
T = selfComposeRelation(R,1);
disp(T);
% should be R:
%      0     1     0     0
%      0     0     0     1
%      1     0     0     1
%      1     0     0     0

T = selfComposeRelation(R,2);
disp(T);
% should be:
%      0     0     0     1
%      1     0     0     0
%      1     1     0     0
%      0     1     0     0

T = selfComposeRelation(R,3);
disp(T);
% should be:
%      1     0     0     0
%      0     1     0     0
%      0     1     0     1
%      0     0     0     1

T = selfComposeRelation(R,4);
disp(T);
% should be:
%      0     1     0     0
%      0     0     0     1
%      1     0     0     1
%      1     0     0     0


