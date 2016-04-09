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
%	==> Generation Date : Sat Apr 25 21:13:53 2015
%
%	==> Project name : Limousine_Originale_GR05
%	==> using XML input file 
%
%	==> Number of joints : 63
%
%	==> Function : F19 : External Forces
%	==> Flops complexity : 0
%
%	==> Generation Time :  0.010 seconds
%	==> Post-Processing :  0.000 seconds
%
%-------------------------------------------------------------
%
function [frc,trq] = extforces(s,tsim,usrfun)

 frc = zeros(3,63);
 trq = zeros(3,63);

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

  frc(1,6) = s.frc(1,6);
  frc(2,6) = s.frc(2,6);
  frc(3,6) = s.frc(3,6);
  frc(1,9) = s.frc(1,9);
  frc(2,9) = s.frc(2,9);
  frc(3,9) = s.frc(3,9);
  frc(1,12) = s.frc(1,12);
  frc(2,12) = s.frc(2,12);
  frc(3,12) = s.frc(3,12);
  frc(1,15) = s.frc(1,15);
  frc(2,15) = s.frc(2,15);
  frc(3,15) = s.frc(3,15);
  frc(1,17) = s.frc(1,17);
  frc(2,17) = s.frc(2,17);
  frc(3,17) = s.frc(3,17);
  frc(1,19) = s.frc(1,19);
  frc(2,19) = s.frc(2,19);
  frc(3,19) = s.frc(3,19);
  frc(1,21) = s.frc(1,21);
  frc(2,21) = s.frc(2,21);
  frc(3,21) = s.frc(3,21);
  frc(1,23) = s.frc(1,23);
  frc(2,23) = s.frc(2,23);
  frc(3,23) = s.frc(3,23);
  frc(1,26) = s.frc(1,26);
  frc(2,26) = s.frc(2,26);
  frc(3,26) = s.frc(3,26);
  frc(1,29) = s.frc(1,29);
  frc(2,29) = s.frc(2,29);
  frc(3,29) = s.frc(3,29);
  frc(1,32) = s.frc(1,32);
  frc(2,32) = s.frc(2,32);
  frc(3,32) = s.frc(3,32);
  frc(1,33) = s.frc(1,33);
  frc(2,33) = s.frc(2,33);
  frc(3,33) = s.frc(3,33);
  frc(1,36) = s.frc(1,36);
  frc(2,36) = s.frc(2,36);
  frc(3,36) = s.frc(3,36);
  frc(1,39) = s.frc(1,39);
  frc(2,39) = s.frc(2,39);
  frc(3,39) = s.frc(3,39);
  frc(1,42) = s.frc(1,42);
  frc(2,42) = s.frc(2,42);
  frc(3,42) = s.frc(3,42);
  frc(1,44) = s.frc(1,44);
  frc(2,44) = s.frc(2,44);
  frc(3,44) = s.frc(3,44);
  frc(1,46) = s.frc(1,46);
  frc(2,46) = s.frc(2,46);
  frc(3,46) = s.frc(3,46);
  frc(1,49) = s.frc(1,49);
  frc(2,49) = s.frc(2,49);
  frc(3,49) = s.frc(3,49);
  frc(1,52) = s.frc(1,52);
  frc(2,52) = s.frc(2,52);
  frc(3,52) = s.frc(3,52);
  frc(1,55) = s.frc(1,55);
  frc(2,55) = s.frc(2,55);
  frc(3,55) = s.frc(3,55);
  frc(1,57) = s.frc(1,57);
  frc(2,57) = s.frc(2,57);
  frc(3,57) = s.frc(3,57);
  frc(1,59) = s.frc(1,59);
  frc(2,59) = s.frc(2,59);
  frc(3,59) = s.frc(3,59);
  frc(1,60) = s.frc(1,60);
  frc(2,60) = s.frc(2,60);
  frc(3,60) = s.frc(3,60);
  frc(1,61) = s.frc(1,61);
  frc(2,61) = s.frc(2,61);
  frc(3,61) = s.frc(3,61);
  frc(1,62) = s.frc(1,62);
  frc(2,62) = s.frc(2,62);
  frc(3,62) = s.frc(3,62);
  frc(1,63) = s.frc(1,63);
  frc(2,63) = s.frc(2,63);
  frc(3,63) = s.frc(3,63);
  trq(1,6) = s.trq(1,6);
  trq(2,6) = s.trq(2,6);
  trq(3,6) = s.trq(3,6);
  trq(1,9) = s.trq(1,9);
  trq(2,9) = s.trq(2,9);
  trq(3,9) = s.trq(3,9);
  trq(1,12) = s.trq(1,12);
  trq(2,12) = s.trq(2,12);
  trq(3,12) = s.trq(3,12);
  trq(1,15) = s.trq(1,15);
  trq(2,15) = s.trq(2,15);
  trq(3,15) = s.trq(3,15);
  trq(1,17) = s.trq(1,17);
  trq(2,17) = s.trq(2,17);
  trq(3,17) = s.trq(3,17);
  trq(1,19) = s.trq(1,19);
  trq(2,19) = s.trq(2,19);
  trq(3,19) = s.trq(3,19);
  trq(1,21) = s.trq(1,21);
  trq(2,21) = s.trq(2,21);
  trq(3,21) = s.trq(3,21);
  trq(1,23) = s.trq(1,23);
  trq(2,23) = s.trq(2,23);
  trq(3,23) = s.trq(3,23);
  trq(1,26) = s.trq(1,26);
  trq(2,26) = s.trq(2,26);
  trq(3,26) = s.trq(3,26);
  trq(1,29) = s.trq(1,29);
  trq(2,29) = s.trq(2,29);
  trq(3,29) = s.trq(3,29);
  trq(1,32) = s.trq(1,32);
  trq(2,32) = s.trq(2,32);
  trq(3,32) = s.trq(3,32);
  trq(1,33) = s.trq(1,33);
  trq(2,33) = s.trq(2,33);
  trq(3,33) = s.trq(3,33);
  trq(1,36) = s.trq(1,36);
  trq(2,36) = s.trq(2,36);
  trq(3,36) = s.trq(3,36);
  trq(1,39) = s.trq(1,39);
  trq(2,39) = s.trq(2,39);
  trq(3,39) = s.trq(3,39);
  trq(1,42) = s.trq(1,42);
  trq(2,42) = s.trq(2,42);
  trq(3,42) = s.trq(3,42);
  trq(1,44) = s.trq(1,44);
  trq(2,44) = s.trq(2,44);
  trq(3,44) = s.trq(3,44);
  trq(1,46) = s.trq(1,46);
  trq(2,46) = s.trq(2,46);
  trq(3,46) = s.trq(3,46);
  trq(1,49) = s.trq(1,49);
  trq(2,49) = s.trq(2,49);
  trq(3,49) = s.trq(3,49);
  trq(1,52) = s.trq(1,52);
  trq(2,52) = s.trq(2,52);
  trq(3,52) = s.trq(3,52);
  trq(1,55) = s.trq(1,55);
  trq(2,55) = s.trq(2,55);
  trq(3,55) = s.trq(3,55);
  trq(1,57) = s.trq(1,57);
  trq(2,57) = s.trq(2,57);
  trq(3,57) = s.trq(3,57);
  trq(1,59) = s.trq(1,59);
  trq(2,59) = s.trq(2,59);
  trq(3,59) = s.trq(3,59);
  trq(1,60) = s.trq(1,60);
  trq(2,60) = s.trq(2,60);
  trq(3,60) = s.trq(3,60);
  trq(1,61) = s.trq(1,61);
  trq(2,61) = s.trq(2,61);
  trq(3,61) = s.trq(3,61);
  trq(1,62) = s.trq(1,62);
  trq(2,62) = s.trq(2,62);
  trq(3,62) = s.trq(3,62);
  trq(1,63) = s.trq(1,63);
  trq(2,63) = s.trq(2,63);
  trq(3,63) = s.trq(3,63);

% ====== END Task 0 ====== 

  

