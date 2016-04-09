%
%-------------------------------------------------------------
%
%	ROBOTRAN - Version 6.6 (build : february 22, 2008)
%
%	Copyright 
%	Universite catholique de Louvain 
%	Departement de Mecanique 
%	Unite de Production Mecanique et Machines 
%	2, Place du Levant 
%	1348 Louvain-la-Neuve 
%	http://www.robotran.be// 
%
%	==> Generation Date : Sat Apr  9 11:27:13 2016
%
%	==> Project name : MBS_Suspension
%	==> using XML input file 
%
%	==> Number of joints : 6
%
%	==> Function : F 1 : Direct Dynamics (Semi-Explicit formulation) : RNEA
%	==> Flops complexity : 94
%
%	==> Generation Time :  0.000 seconds
%	==> Post-Processing :  0.000 seconds
%
%-------------------------------------------------------------
%
function [M,c] = dirdyna(s,tsim,usrfun)

 M = zeros(6,6);
 c = zeros(6,1);

q = s.q; 
qd = s.qd; 
qdd = s.qdd; 
frc = s.frc; 
trq = s.trq; 

% === begin imp_aux === 

% === end imp_aux === 

% ===== BEGIN task 0 ===== 

% = = Block_0_0_0_0_0_2 = = 
 
% Trigonometric Variables  

  C2 = cos(q(2));
  S2 = sin(q(2));

% = = Block_0_0_0_0_0_3 = = 
 
% Trigonometric Variables  

  C3 = cos(q(3));
  S3 = sin(q(3));
  C4 = cos(q(4));
  S4 = sin(q(4));
  C5 = cos(q(5));
  S5 = sin(q(5));
  C6 = cos(q(6));
  S6 = sin(q(6));

% = = Block_0_1_0_1_0_3 = = 
 
% Trigonometric Variables  

  C3p4 = C3*C4-S3*S4;
 
% Forward Kinematics 

  OM14 = qd(3)+qd(4);
  BS54 = -OM14*OM14;
  OM15 = qd(5)+OM14;
  AlF35 = -BS54*s.dpt(2,6)*S5;

% = = Block_0_2_0_1_0_3 = = 
 
% Backward Dynamics 

  FA26 = -(s.frc(2,6)-s.m(6)*BS54*s.dpt(2,6)*C5);
  FF5_36 = -(C6*(s.frc(3,6)-s.m(6)*AlF35*C6)-S6*(s.frc(1,6)+s.m(6)*AlF35*S6));
  CF5_16 = -(C6*(s.trq(1,6)+qd(6)*s.In(5,6)*OM15*S6)+S6*(s.trq(3,6)-qd(6)*s.In(5,6)*OM15*C6));
  FF24 = -(s.frc(2,4)-FA26*C5+FF5_36*S5);
  FF34 = -(s.frc(3,4)-FA26*S5-FF5_36*C5);
  CF14 = -(s.trq(1,4)-CF5_16-s.dpt(2,6)*(FA26*S5+FF5_36*C5));
  CM41_15 = s.m(6)*s.dpt(2,6)*C3p4;
  CM43_15 = s.m(6)*s.dpt(2,6)*s.dpt(2,6);
  CM44_15 = s.m(6)*s.dpt(2,6)*s.dpt(2,6);
  CF13 = -(s.trq(1,3)-CF14);
  CM13_3 = s.In(1,3)+CM43_15;

% = = Block_0_2_0_2_0_1 = = 
 
% Backward Dynamics 

  FF31 = -(s.frc(3,1)+s.frc(2,2)*S2+s.frc(3,2)*C2+C3*(s.frc(3,3)-FF24*S4-FF34*C4)+S3*(s.frc(2,3)-FF24*C4+FF34*S4));
  FM31_1 = s.m(1)+s.m(2)+s.m(3)+s.m(4)+s.m(6);

% = = Block_0_3_0_0_0_0 = = 
 
% Symbolic Outputs  

  M(1,1) = FM31_1;
  M(1,3) = CM41_15;
  M(1,4) = CM41_15;
  M(2,2) = s.In(1,2);
  M(3,1) = CM41_15;
  M(3,3) = CM13_3;
  M(3,4) = CM43_15;
  M(4,1) = CM41_15;
  M(4,3) = CM43_15;
  M(4,4) = CM44_15;
  M(6,6) = s.In(5,6);
  c(1) = FF31;
  c(2) = -s.trq(1,2);
  c(3) = CF13;
  c(4) = CF14;
  c(5) = CF5_16;
  c(6) = -s.trq(2,6);

% ====== END Task 0 ====== 

  

