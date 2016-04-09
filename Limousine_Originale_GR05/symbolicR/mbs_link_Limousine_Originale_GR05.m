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
%	==> Function : F 7 : Point to point Link Forces (frc,trq,Flnk) 
%	==> Flops complexity : 356
%
%	==> Generation Time :  0.010 seconds
%	==> Post-Processing :  0.010 seconds
%
%-------------------------------------------------------------
%
function [frc,trq,Flnk,Z,Zd] = link(s,tsim,usrfun)

 frc = zeros(3,63);
 trq = zeros(3,63);
 Flnk = zeros(4,1);
 Z = zeros(4,1);
 Zd = zeros(4,1);

q = s.q; 
qd = s.qd; 
qdd = s.qdd; 
frc = s.frc; 
trq = s.trq; 

% === begin imp_aux === 

% === end imp_aux === 

% ===== BEGIN task 0 ===== 

% = = Block_0_0_0_0_0_4 = = 
 
% Trigonometric Variables  

  C18 = cos(q(18));
  S18 = sin(q(18));
  C19 = cos(q(19));
  S19 = sin(q(19));

% = = Block_0_0_0_0_0_5 = = 
 
% Trigonometric Variables  

  C20 = cos(q(20));
  S20 = sin(q(20));
  C21 = cos(q(21));
  S21 = sin(q(21));

% = = Block_0_0_0_0_0_11 = = 
 
% Trigonometric Variables  

  C45 = cos(q(45));
  S45 = sin(q(45));
  C46 = cos(q(46));
  S46 = sin(q(46));

% = = Block_0_0_0_0_0_14 = = 
 
% Trigonometric Variables  

  C58 = cos(q(58));
  S58 = sin(q(58));
  C59 = cos(q(59));
  S59 = sin(q(59));

% = = Block_0_1_0_0_1_4 = = 
 
% Link Kinematics: Distance Z , Relative Velocity ZD 

  ROlnk0_419 = -S18*C19;
  ROlnk0_519 = C18*C19;
  ROlnk0_719 = S18*S19;
  ROlnk0_819 = -C18*S19;
  OMlnk0_119 = qd(19)*C18;
  OMlnk0_219 = qd(19)*S18;
  RLlnk0_196 = ROlnk0_419*s.dpt(2,33)+ROlnk0_719*s.dpt(3,33)+s.dpt(1,33)*C18;
  RLlnk0_296 = ROlnk0_519*s.dpt(2,33)+ROlnk0_819*s.dpt(3,33)+s.dpt(1,33)*S18;
  RLlnk0_396 = s.dpt(2,33)*S19+s.dpt(3,33)*C19;

% = = Block_0_1_0_0_2_5 = = 
 
% Link Kinematics: Distance Z , Relative Velocity ZD 

  ROlnk3_421 = -S20*C21;
  ROlnk3_521 = C20*C21;
  ROlnk3_721 = S20*S21;
  ROlnk3_821 = -C20*S21;
  OMlnk3_121 = qd(21)*C20;
  OMlnk3_221 = qd(21)*S20;
  RLlnk3_199 = ROlnk3_421*s.dpt(2,35)+ROlnk3_721*s.dpt(3,35)+s.dpt(1,35)*C20;
  RLlnk3_299 = ROlnk3_521*s.dpt(2,35)+ROlnk3_821*s.dpt(3,35)+s.dpt(1,35)*S20;
  RLlnk3_399 = s.dpt(2,35)*S21+s.dpt(3,35)*C21;

% = = Block_0_1_0_0_3_11 = = 
 
% Link Kinematics: Distance Z , Relative Velocity ZD 

  ROlnk5_446 = -S45*C46;
  ROlnk5_546 = C45*C46;
  ROlnk5_746 = S45*S46;
  ROlnk5_846 = -C45*S46;
  OMlnk5_146 = qd(46)*C45;
  OMlnk5_246 = qd(46)*S45;
  RLlnk5_1101 = ROlnk5_446*s.dpt(2,55)+ROlnk5_746*s.dpt(3,55)+s.dpt(1,55)*C45;
  RLlnk5_2101 = ROlnk5_546*s.dpt(2,55)+ROlnk5_846*s.dpt(3,55)+s.dpt(1,55)*S45;
  RLlnk5_3101 = s.dpt(2,55)*S46+s.dpt(3,55)*C46;

% = = Block_0_1_0_0_4_14 = = 
 
% Link Kinematics: Distance Z , Relative Velocity ZD 

  ROlnk7_459 = -S58*C59;
  ROlnk7_559 = C58*C59;
  ROlnk7_759 = S58*S59;
  ROlnk7_859 = -C58*S59;
  OMlnk7_159 = qd(59)*C58;
  OMlnk7_259 = qd(59)*S58;
  RLlnk7_1103 = ROlnk7_459*s.dpt(2,65)+ROlnk7_759*s.dpt(3,65)+s.dpt(1,65)*C58;
  RLlnk7_2103 = ROlnk7_559*s.dpt(2,65)+ROlnk7_859*s.dpt(3,65)+s.dpt(1,65)*S58;
  RLlnk7_3103 = s.dpt(2,65)*S59+s.dpt(3,65)*C59;

% = = Block_0_1_0_1_1_1 = = 
 
% Link Kinematics: Distance Z , Relative Velocity ZD 

  Plnk11 = -(RLlnk0_196+s.dpt(1,3)-s.dpt(1,8));
  Plnk21 = -(RLlnk0_296+s.dpt(2,3)-s.dpt(2,8));
  Plnk31 = -(RLlnk0_396+s.dpt(3,3)-s.dpt(3,8));
  Z1 = sqrt(Plnk11*Plnk11+Plnk21*Plnk21+Plnk31*Plnk31);
  e11 = Plnk11/Z1;
  e21 = Plnk21/Z1;
  e31 = Plnk31/Z1;
  Zd1 = e11*(qd(18)*RLlnk0_296-OMlnk0_219*RLlnk0_396)-e21*(qd(18)*RLlnk0_196-OMlnk0_119*RLlnk0_396)-e31*(OMlnk0_119*RLlnk0_296-OMlnk0_219*...
 RLlnk0_196);
 
% Link Force Computation 

  Flink1 = usrfun.flink(Z1,Zd1,s,tsim,1);

% = = Block_0_1_0_1_2_5 = = 
 
% Link Kinematics: Distance Z , Relative Velocity ZD 

  Plnk12 = RLlnk3_199+s.dpt(1,4)-s.dpt(1,7);
  Plnk22 = RLlnk3_299+s.dpt(2,4)-s.dpt(2,7);
  Plnk32 = RLlnk3_399+s.dpt(3,4)-s.dpt(3,7);
  Z2 = sqrt(Plnk12*Plnk12+Plnk22*Plnk22+Plnk32*Plnk32);
  e12 = Plnk12/Z2;
  e22 = Plnk22/Z2;
  e32 = Plnk32/Z2;
  Zd2 = (OMlnk3_121*RLlnk3_299-OMlnk3_221*RLlnk3_199)*e32-e12*(qd(20)*RLlnk3_299-OMlnk3_221*RLlnk3_399)+e22*(qd(20)*RLlnk3_199-OMlnk3_121*...
 RLlnk3_399);
 
% Link Force Computation 

  Flink2 = usrfun.flink(Z2,Zd2,s,tsim,2);

% = = Block_0_1_0_1_3_11 = = 
 
% Link Kinematics: Distance Z , Relative Velocity ZD 

  Plnk13 = RLlnk5_1101+s.dpt(1,12)-s.dpt(1,13);
  Plnk23 = RLlnk5_2101+s.dpt(2,12)-s.dpt(2,13);
  Plnk33 = RLlnk5_3101+s.dpt(3,12)-s.dpt(3,13);
  Z3 = sqrt(Plnk13*Plnk13+Plnk23*Plnk23+Plnk33*Plnk33);
  e13 = Plnk13/Z3;
  e23 = Plnk23/Z3;
  e33 = Plnk33/Z3;
  Zd3 = (OMlnk5_146*RLlnk5_2101-OMlnk5_246*RLlnk5_1101)*e33-e13*(qd(45)*RLlnk5_2101-OMlnk5_246*RLlnk5_3101)+e23*(qd(45)*RLlnk5_1101-OMlnk5_146*...
 RLlnk5_3101);
 
% Link Force Computation 

  Flink3 = usrfun.flink(Z3,Zd3,s,tsim,3);

% = = Block_0_1_0_1_4_14 = = 
 
% Link Kinematics: Distance Z , Relative Velocity ZD 

  Plnk14 = RLlnk7_1103+s.dpt(1,17)-s.dpt(1,18);
  Plnk24 = RLlnk7_2103+s.dpt(2,17)-s.dpt(2,18);
  Plnk34 = RLlnk7_3103+s.dpt(3,17)-s.dpt(3,18);
  Z4 = sqrt(Plnk14*Plnk14+Plnk24*Plnk24+Plnk34*Plnk34);
  e14 = Plnk14/Z4;
  e24 = Plnk24/Z4;
  e34 = Plnk34/Z4;
  Zd4 = (OMlnk7_159*RLlnk7_2103-OMlnk7_259*RLlnk7_1103)*e34-e14*(qd(58)*RLlnk7_2103-OMlnk7_259*RLlnk7_3103)+e24*(qd(58)*RLlnk7_1103-OMlnk7_159*...
 RLlnk7_3103);
 
% Link Force Computation 

  Flink4 = usrfun.flink(Z4,Zd4,s,tsim,4);

% = = Block_0_1_0_2_2_1 = = 
 
% Link Dynamics : Forces projection on body-fixed frames 

  fSlnk11 = Flink1*e11;
  fSlnk21 = Flink1*e21;
  fSlnk31 = Flink1*e31;

% = = Block_0_1_0_2_2_4 = = 
 
% Link Dynamics : Forces projection on body-fixed frames 

  fPlnk11 = Flink1*(e11*C18+e21*S18);
  fPlnk21 = Flink1*(ROlnk0_419*e11+ROlnk0_519*e21+e31*S19);
  fPlnk31 = Flink1*(ROlnk0_719*e11+ROlnk0_819*e21+e31*C19);
  frc(1,19) = s.frc(1,19)+fPlnk11;
  frc(2,19) = s.frc(2,19)+fPlnk21;
  frc(3,19) = s.frc(3,19)+fPlnk31;
  trq(1,19) = s.trq(1,19)-fPlnk21*(s.dpt(3,33)-s.l(3,19))+fPlnk31*(s.dpt(2,33)-s.l(2,19));
  trq(2,19) = s.trq(2,19)+fPlnk11*(s.dpt(3,33)-s.l(3,19))-fPlnk31*(s.dpt(1,33)-s.l(1,19));
  trq(3,19) = s.trq(3,19)-fPlnk11*(s.dpt(2,33)-s.l(2,19))+fPlnk21*(s.dpt(1,33)-s.l(1,19));

% = = Block_0_1_0_2_3_1 = = 
 
% Link Dynamics : Forces projection on body-fixed frames 

  fPlnk12 = Flink2*e12;
  fPlnk22 = Flink2*e22;
  fPlnk32 = Flink2*e32;

% = = Block_0_1_0_2_3_5 = = 
 
% Link Dynamics : Forces projection on body-fixed frames 

  fSlnk12 = Flink2*(e12*C20+e22*S20);
  fSlnk22 = Flink2*(ROlnk3_421*e12+ROlnk3_521*e22+e32*S21);
  fSlnk32 = Flink2*(ROlnk3_721*e12+ROlnk3_821*e22+e32*C21);
  frc(1,21) = s.frc(1,21)-fSlnk12;
  frc(2,21) = s.frc(2,21)-fSlnk22;
  frc(3,21) = s.frc(3,21)-fSlnk32;
  trq(1,21) = s.trq(1,21)+fSlnk22*(s.dpt(3,35)-s.l(3,21))-fSlnk32*(s.dpt(2,35)-s.l(2,21));
  trq(2,21) = s.trq(2,21)-fSlnk12*(s.dpt(3,35)-s.l(3,21))+fSlnk32*(s.dpt(1,35)-s.l(1,21));
  trq(3,21) = s.trq(3,21)+fSlnk12*(s.dpt(2,35)-s.l(2,21))-fSlnk22*(s.dpt(1,35)-s.l(1,21));

% = = Block_0_1_0_2_4_1 = = 
 
% Link Dynamics : Forces projection on body-fixed frames 

  fPlnk13 = Flink3*e13;
  fPlnk23 = Flink3*e23;
  fPlnk33 = Flink3*e33;
  s.frc(1,6) = s.frc(1,6)+fPlnk12+fPlnk13-fSlnk11;
  s.frc(2,6) = s.frc(2,6)+fPlnk22+fPlnk23-fSlnk21;
  s.frc(3,6) = s.frc(3,6)+fPlnk32+fPlnk33-fSlnk31;
  s.trq(1,6) = s.trq(1,6)-fPlnk22*(s.dpt(3,7)-s.l(3,6))-fPlnk23*(s.dpt(3,13)-s.l(3,6))+fPlnk32*s.dpt(2,7)+fPlnk33*s.dpt(2,13)+fSlnk21*(s.dpt(3,8)...
 -s.l(3,6))-fSlnk31*s.dpt(2,8);
  s.trq(2,6) = s.trq(2,6)+fPlnk12*(s.dpt(3,7)-s.l(3,6))+fPlnk13*(s.dpt(3,13)-s.l(3,6))-fPlnk32*(s.dpt(1,7)-s.l(1,6))-fPlnk33*(s.dpt(1,13)-...
 s.l(1,6))-fSlnk11*(s.dpt(3,8)-s.l(3,6))+fSlnk31*(s.dpt(1,8)-s.l(1,6));
  s.trq(3,6) = s.trq(3,6)-fPlnk12*s.dpt(2,7)-fPlnk13*s.dpt(2,13)+fPlnk22*(s.dpt(1,7)-s.l(1,6))+fPlnk23*(s.dpt(1,13)-s.l(1,6))+fSlnk11*s.dpt(2,8)-...
 fSlnk21*(s.dpt(1,8)-s.l(1,6));

% = = Block_0_1_0_2_4_11 = = 
 
% Link Dynamics : Forces projection on body-fixed frames 

  fSlnk13 = Flink3*(e13*C45+e23*S45);
  fSlnk23 = Flink3*(ROlnk5_446*e13+ROlnk5_546*e23+e33*S46);
  fSlnk33 = Flink3*(ROlnk5_746*e13+ROlnk5_846*e23+e33*C46);
  frc(1,46) = s.frc(1,46)-fSlnk13;
  frc(2,46) = s.frc(2,46)-fSlnk23;
  frc(3,46) = s.frc(3,46)-fSlnk33;
  trq(1,46) = s.trq(1,46)+fSlnk23*(s.dpt(3,55)-s.l(3,46))-fSlnk33*(s.dpt(2,55)-s.l(2,46));
  trq(2,46) = s.trq(2,46)-fSlnk13*(s.dpt(3,55)-s.l(3,46))+fSlnk33*(s.dpt(1,55)-s.l(1,46));
  trq(3,46) = s.trq(3,46)+fSlnk13*(s.dpt(2,55)-s.l(2,46))-fSlnk23*(s.dpt(1,55)-s.l(1,46));

% = = Block_0_1_0_2_5_1 = = 
 
% Link Dynamics : Forces projection on body-fixed frames 

  fPlnk14 = Flink4*e14;
  fPlnk24 = Flink4*e24;
  fPlnk34 = Flink4*e34;
  frc(1,6) = fPlnk14+s.frc(1,6);
  frc(2,6) = fPlnk24+s.frc(2,6);
  frc(3,6) = fPlnk34+s.frc(3,6);
  trq(1,6) = s.trq(1,6)-fPlnk24*(s.dpt(3,18)-s.l(3,6))+fPlnk34*s.dpt(2,18);
  trq(2,6) = s.trq(2,6)+fPlnk14*(s.dpt(3,18)-s.l(3,6))-fPlnk34*(s.dpt(1,18)-s.l(1,6));
  trq(3,6) = s.trq(3,6)-fPlnk14*s.dpt(2,18)+fPlnk24*(s.dpt(1,18)-s.l(1,6));

% = = Block_0_1_0_2_5_14 = = 
 
% Link Dynamics : Forces projection on body-fixed frames 

  fSlnk14 = Flink4*(e14*C58+e24*S58);
  fSlnk24 = Flink4*(ROlnk7_459*e14+ROlnk7_559*e24+e34*S59);
  fSlnk34 = Flink4*(ROlnk7_759*e14+ROlnk7_859*e24+e34*C59);
  frc(1,59) = s.frc(1,59)-fSlnk14;
  frc(2,59) = s.frc(2,59)-fSlnk24;
  frc(3,59) = s.frc(3,59)-fSlnk34;
  trq(1,59) = s.trq(1,59)+fSlnk24*(s.dpt(3,65)-s.l(3,59))-fSlnk34*(s.dpt(2,65)-s.l(2,59));
  trq(2,59) = s.trq(2,59)-fSlnk14*(s.dpt(3,65)-s.l(3,59))+fSlnk34*(s.dpt(1,65)-s.l(1,59));
  trq(3,59) = s.trq(3,59)+fSlnk14*(s.dpt(2,65)-s.l(2,59))-fSlnk24*(s.dpt(1,65)-s.l(1,59));

% = = Block_0_2_0_0_0_0 = = 
 
% Symbolic Outputs  

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
  Flnk(1) = Flink1;
  Flnk(2) = Flink2;
  Flnk(3) = Flink3;
  Flnk(4) = Flink4;
  Z(1) = Z1;
  Z(2) = Z2;
  Z(3) = Z3;
  Z(4) = Z4;
  Zd(1) = Zd1;
  Zd(2) = Zd2;
  Zd(3) = Zd3;
  Zd(4) = Zd4;

% ====== END Task 0 ====== 

  

