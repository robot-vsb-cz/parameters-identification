%% Tranformation
% This script calculates transformation matrix based on MDH
% Use this script to define TbE and J matrices, which are later used in
% "identification.m" script

clear all
clc

% d - distance from Xi-1 to Xi along Zi
% r - distance from Zi to Zi+1 along Xi
% a - angle from Zi to Zi+1 about Xi
% t - angle from Xi-1 to Xi about Zi
syms ti ai ri di 
Tij=[cos(ti) -sin(ti) 0 di;cos(ai)*sin(ti) cos(ai)*cos(ti) -sin(ai) -ri*sin(ai);sin(ai)*sin(ti) sin(ai)*cos(ti) cos(ai) ri*cos(ai);0 0 0 1];

% Trasformation matrices between the particular frames
syms x0 y0 z0 r11 r12 r13 r21 r22 r23 r31 r32 r33
Tb0=[r11 r12 r13 x0; r21 r22 r23 y0; r31 r32 r33 z0; 0 0 0 1];

syms q1 o1 
T01=subs(Tij,[ri di ai ti],[151.9 0 0 q1+o1]); 

syms q2 o2
T12=subs(Tij,[ri di ai ti],[119.85 0 pi/2 q2+o2]);

syms q3 o3
T23=subs(Tij,[ri di ai ti],[0 243.65 0 q3+o3]); 

syms q4 o4 
T34=subs(Tij,[ri di ai ti],[-9.45 213.25 0 q4+o4]); 

syms q5 o5
T45=subs(Tij,[ri di ai ti],[85.35 0 -pi/2 q5+o5]);

syms q6 o6
T56=subs(Tij,[ri di ai ti],[81.9 0 pi/2 q6+o6]);

syms xE yE zE
T6E=[1 0 0 xE; 0 1 0 yE; 0 0 1 zE;0 0 0 1];

% Transformation matrix
TbE = Tb0*T01*T12*T23*T34*T45*T56*T6E
% TbE = simplify(TbE)

% Calculate Jacobian
J = jacobian(TbE(1:3,4), [x0 y0 z0 r11 r21 r31 r12 r22 r32 r13 r23 r33 xE yE zE])
