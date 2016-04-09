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
%	==> Function : F18 : Constraints Quadratic Velocity Terms (Jdqd)
%	==> Flops complexity : 19
%
%	==> Generation Time :  0.000 seconds
%	==> Post-Processing :  0.000 seconds
%
%-------------------------------------------------------------
%
function [Jdqd] = cons_jdqd(s,tsim,usrfun)

 Jdqd = zeros(2,1);

q = s.q; 
qd = s.qd; 
qdd = s.qdd; 
frc = s.frc; 
trq = s.trq; 

% === begin imp_aux === 

% === end imp_aux === 

% ===== BEGIN task 0 ===== 

% = = Block_0_0_0_0_0_3 = = 
 
% Trigonometric Variables  

  C3 = cos(q(3));
  S3 = sin(q(3));
  C4 = cos(q(4));
  S4 = sin(q(4));

% = = Block_0_1_0_0_0_3 = = 
 
% Trigonometric Variables  

%
  S3p4 = C3*S4+S3*C4;
  C3p4 = C3*C4-S3*S4;

% = = Block_0_2_0_0_0_0 = = 
 
% Constraints Quadratic Terms 

%
  OM_1_14 = qd(3)+qd(4);
  Apqp_1_28 = -OM_1_14*OM_1_14*s.dpt(2,7)*C3p4;
  Apqp_1_38 = -OM_1_14*OM_1_14*s.dpt(2,7)*S3p4;

% = = Block_0_3_0_0_0_0 = = 
 
% Symbolic Outputs  

  Jdqd(1) = -Apqp_1_28;
  Jdqd(2) = -Apqp_1_38;

% ====== END Task 0 ====== 

  

