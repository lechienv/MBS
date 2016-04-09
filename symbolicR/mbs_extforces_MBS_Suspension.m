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
%	==> Function : F19 : External Forces
%	==> Flops complexity : 0
%
%	==> Generation Time :  0.000 seconds
%	==> Post-Processing :  0.000 seconds
%
%-------------------------------------------------------------
%
function [frc,trq] = extforces(s,tsim,usrfun)

 frc = zeros(3,6);
 trq = zeros(3,6);

q = s.q; 
qd = s.qd; 
qdd = s.qdd; 
frc = s.frc; 
trq = s.trq; 

% === begin imp_aux === 

% === end imp_aux === 

% ===== BEGIN task 0 ===== 
 
% Sensor Kinematics 



% = = Block_0_0_1_0_0_0 = = 
 
% Symbolic Outputs  

  frc(1,1) = s.frc(1,1);
  frc(2,1) = s.frc(2,1);
  frc(3,1) = s.frc(3,1);
  frc(1,2) = s.frc(1,2);
  frc(2,2) = s.frc(2,2);
  frc(3,2) = s.frc(3,2);
  frc(1,3) = s.frc(1,3);
  frc(2,3) = s.frc(2,3);
  frc(3,3) = s.frc(3,3);
  frc(1,4) = s.frc(1,4);
  frc(2,4) = s.frc(2,4);
  frc(3,4) = s.frc(3,4);
  frc(1,6) = s.frc(1,6);
  frc(2,6) = s.frc(2,6);
  frc(3,6) = s.frc(3,6);
  trq(1,1) = s.trq(1,1);
  trq(2,1) = s.trq(2,1);
  trq(3,1) = s.trq(3,1);
  trq(1,2) = s.trq(1,2);
  trq(2,2) = s.trq(2,2);
  trq(3,2) = s.trq(3,2);
  trq(1,3) = s.trq(1,3);
  trq(2,3) = s.trq(2,3);
  trq(3,3) = s.trq(3,3);
  trq(1,4) = s.trq(1,4);
  trq(2,4) = s.trq(2,4);
  trq(3,4) = s.trq(3,4);
  trq(1,6) = s.trq(1,6);
  trq(2,6) = s.trq(2,6);
  trq(3,6) = s.trq(3,6);

% ====== END Task 0 ====== 

  

