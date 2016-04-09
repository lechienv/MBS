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
%	==> Function : F 6 : Sensors Kinematical Informations (sens) 
%	==> Flops complexity : 89
%
%	==> Generation Time :  0.000 seconds
%	==> Post-Processing :  0.000 seconds
%
%-------------------------------------------------------------
%
function [sens] = sensor(s,tsim,usrfun,isens)

 sens.P = zeros(3,1);
 sens.R = zeros(3,3);
 sens.V = zeros(3,1);
 sens.OM = zeros(3,1);
 sens.A = zeros(3,1);
 sens.OMP = zeros(3,1);
 sens.J = zeros(6,6);

q = s.q; 
qd = s.qd; 
qdd = s.qdd; 
frc = s.frc; 
trq = s.trq; 

% === begin imp_aux === 

% === end imp_aux === 

% ===== BEGIN task 0 ===== 
 
% Sensor Kinematics 



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

% = = Block_0_0_0_1_0_3 = = 
 
% Trigonometric Variables  

  S3p4 = C3*S4+S3*C4;
  C3p4 = C3*C4-S3*S4;
  S5p3p4 = C5*S3p4+S5*C3p4;
  C5p3p4 = C5*C3p4-S5*S3p4;

% ====== END Task 0 ====== 

% ===== BEGIN task 1 ===== 
 
switch isens

 
% 
case 1, 


% = = Block_1_0_0_1_0_3 = = 
 
% Sensor Kinematics 


    ROcp0_26 = S6*S5p3p4;
    ROcp0_36 = -S6*C5p3p4;
    ROcp0_86 = -C6*S5p3p4;
    ROcp0_96 = C6*C5p3p4;
    OMcp0_14 = qd(3)+qd(4);
    OPcp0_14 = qdd(3)+qdd(4);
    RLcp0_25 = s.dpt(2,6)*C3p4;
    RLcp0_35 = s.dpt(2,6)*S3p4;
    POcp0_15 = s.dpt(1,2)+s.dpt(1,4)+s.dpt(1,6);
    OMcp0_15 = OMcp0_14+qd(5);
    ORcp0_25 = -OMcp0_14*RLcp0_35;
    ORcp0_35 = OMcp0_14*RLcp0_25;
    OPcp0_15 = OPcp0_14+qdd(5);
    OMcp0_26 = qd(6)*C5p3p4;
    OMcp0_36 = qd(6)*S5p3p4;
    OPcp0_26 = -(OMcp0_15*qd(6)*S5p3p4-qdd(6)*C5p3p4);
    OPcp0_36 = OMcp0_15*qd(6)*C5p3p4+qdd(6)*S5p3p4;
    RLcp0_211 = s.dpt(2,8)*C5p3p4;
    RLcp0_311 = s.dpt(2,8)*S5p3p4;
    POcp0_211 = RLcp0_211+RLcp0_25+s.dpt(2,2);
    POcp0_311 = RLcp0_311+RLcp0_35+q(1);
    JTcp0_211_2 = -(RLcp0_311+RLcp0_35);
    JTcp0_311_2 = RLcp0_211+RLcp0_25;
    JTcp0_211_3 = -(RLcp0_311+RLcp0_35);
    JTcp0_311_3 = RLcp0_211+RLcp0_25;
    ORcp0_211 = -OMcp0_15*RLcp0_311;
    ORcp0_311 = OMcp0_15*RLcp0_211;
    VIcp0_211 = ORcp0_211+ORcp0_25;
    VIcp0_311 = ORcp0_311+ORcp0_35+qd(1);
    ACcp0_111 = OMcp0_26*ORcp0_311-OMcp0_36*ORcp0_211+OPcp0_26*RLcp0_311-OPcp0_36*RLcp0_211;
    ACcp0_211 = -(OMcp0_14*ORcp0_35+OMcp0_15*ORcp0_311+OPcp0_14*RLcp0_35+OPcp0_15*RLcp0_311);
    ACcp0_311 = qdd(1)+OMcp0_14*ORcp0_25+OMcp0_15*ORcp0_211+OPcp0_14*RLcp0_25+OPcp0_15*RLcp0_211;

% = = Block_1_0_0_1_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp0_15;
    sens.P(2) = POcp0_211;
    sens.P(3) = POcp0_311;
    sens.R(1,1) = C6;
    sens.R(1,2) = ROcp0_26;
    sens.R(1,3) = ROcp0_36;
    sens.R(2,2) = C5p3p4;
    sens.R(2,3) = S5p3p4;
    sens.R(3,1) = S6;
    sens.R(3,2) = ROcp0_86;
    sens.R(3,3) = ROcp0_96;
    sens.V(2) = VIcp0_211;
    sens.V(3) = VIcp0_311;
    sens.OM(1) = OMcp0_15;
    sens.OM(2) = OMcp0_26;
    sens.OM(3) = OMcp0_36;
    sens.J(2,3) = JTcp0_211_2;
    sens.J(2,4) = JTcp0_211_3;
    sens.J(2,5) = -RLcp0_311;
    sens.J(3,1) = (1.0);
    sens.J(3,3) = JTcp0_311_2;
    sens.J(3,4) = JTcp0_311_3;
    sens.J(3,5) = RLcp0_211;
    sens.J(4,3) = (1.0);
    sens.J(4,4) = (1.0);
    sens.J(4,5) = (1.0);
    sens.J(5,6) = C5p3p4;
    sens.J(6,6) = S5p3p4;
    sens.A(1) = ACcp0_111;
    sens.A(2) = ACcp0_211;
    sens.A(3) = ACcp0_311;
    sens.OMP(1) = OPcp0_15;
    sens.OMP(2) = OPcp0_26;
    sens.OMP(3) = OPcp0_36;

end


% ====== END Task 1 ====== 

  

