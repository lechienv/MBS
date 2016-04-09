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
%	==> Generation Date : Sat Apr 25 21:13:52 2015
%
%	==> Project name : Limousine_Originale_GR05
%	==> using XML input file 
%
%	==> Number of joints : 63
%
%	==> Function : F 6 : Sensors Kinematical Informations (sens) 
%	==> Flops complexity : 3374
%
%	==> Generation Time :  0.060 seconds
%	==> Post-Processing :  0.060 seconds
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
 sens.J = zeros(6,63);

q = s.q; 
qd = s.qd; 
qdd = s.qdd; 
frc = s.frc; 
trq = s.trq; 

% === begin imp_aux === 

% === end imp_aux === 

% ===== BEGIN task 0 ===== 
 
% Sensor Kinematics 



% = = Block_0_0_0_0_0_1 = = 
 
% Trigonometric Variables  

  C4 = cos(q(4));
  S4 = sin(q(4));
  C5 = cos(q(5));
  S5 = sin(q(5));
  C6 = cos(q(6));
  S6 = sin(q(6));

% = = Block_0_0_0_0_0_2 = = 
 
% Trigonometric Variables  

  C7 = cos(q(7));
  S7 = sin(q(7));
  C8 = cos(q(8));
  S8 = sin(q(8));
  C9 = cos(q(9));
  S9 = sin(q(9));
  C10 = cos(q(10));
  S10 = sin(q(10));
  C11 = cos(q(11));
  S11 = sin(q(11));
  C12 = cos(q(12));
  S12 = sin(q(12));
  C13 = cos(q(13));
  S13 = sin(q(13));
  C14 = cos(q(14));
  S14 = sin(q(14));
  C15 = cos(q(15));
  S15 = sin(q(15));

% = = Block_0_0_0_0_0_7 = = 
 
% Trigonometric Variables  

  C24 = cos(q(24));
  S24 = sin(q(24));
  C25 = cos(q(25));
  S25 = sin(q(25));
  C26 = cos(q(26));
  S26 = sin(q(26));
  C27 = cos(q(27));
  S27 = sin(q(27));
  C28 = cos(q(28));
  S28 = sin(q(28));
  C29 = cos(q(29));
  S29 = sin(q(29));
  C30 = cos(q(30));
  S30 = sin(q(30));
  C31 = cos(q(31));
  S31 = sin(q(31));
  C32 = cos(q(32));
  S32 = sin(q(32));

% = = Block_0_0_0_0_0_9 = = 
 
% Trigonometric Variables  

  C34 = cos(q(34));
  S34 = sin(q(34));
  C35 = cos(q(35));
  S35 = sin(q(35));
  C36 = cos(q(36));
  S36 = sin(q(36));
  C37 = cos(q(37));
  S37 = sin(q(37));
  C38 = cos(q(38));
  S38 = sin(q(38));
  C39 = cos(q(39));
  S39 = sin(q(39));
  C40 = cos(q(40));
  S40 = sin(q(40));
  C41 = cos(q(41));
  S41 = sin(q(41));
  C42 = cos(q(42));
  S42 = sin(q(42));

% = = Block_0_0_0_0_0_12 = = 
 
% Trigonometric Variables  

  C47 = cos(q(47));
  S47 = sin(q(47));
  C48 = cos(q(48));
  S48 = sin(q(48));
  C49 = cos(q(49));
  S49 = sin(q(49));
  C50 = cos(q(50));
  S50 = sin(q(50));
  C51 = cos(q(51));
  S51 = sin(q(51));
  C52 = cos(q(52));
  S52 = sin(q(52));
  C53 = cos(q(53));
  S53 = sin(q(53));
  C54 = cos(q(54));
  S54 = sin(q(54));
  C55 = cos(q(55));
  S55 = sin(q(55));

% ====== END Task 0 ====== 

% ===== BEGIN task 1 ===== 
 
switch isens

 
% 
case 1, 


% = = Block_1_0_0_1_0_1 = = 
 
% Sensor Kinematics 


    ROcp0_45 = -S4*C5;
    ROcp0_55 = C4*C5;
    ROcp0_75 = S4*S5;
    ROcp0_85 = -C4*S5;
    ROcp0_16 = -(ROcp0_75*S6-C4*C6);
    ROcp0_26 = -(ROcp0_85*S6-S4*C6);
    ROcp0_36 = -C5*S6;
    ROcp0_76 = ROcp0_75*C6+C4*S6;
    ROcp0_86 = ROcp0_85*C6+S4*S6;
    ROcp0_96 = C5*C6;
    OMcp0_15 = qd(5)*C4;
    OMcp0_25 = qd(5)*S4;
    OMcp0_16 = OMcp0_15+ROcp0_45*qd(6);
    OMcp0_26 = OMcp0_25+ROcp0_55*qd(6);
    OMcp0_36 = qd(4)+qd(6)*S5;
    OPcp0_16 = ROcp0_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp0_25*S5-ROcp0_55*qd(4));
    OPcp0_26 = ROcp0_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp0_15*S5-ROcp0_45*qd(4));
    OPcp0_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;
    RLcp0_1104 = ROcp0_16*s.dpt(1,20)+ROcp0_76*s.dpt(3,20);
    RLcp0_2104 = ROcp0_26*s.dpt(1,20)+ROcp0_86*s.dpt(3,20);
    RLcp0_3104 = ROcp0_36*s.dpt(1,20)+ROcp0_96*s.dpt(3,20);
    POcp0_1104 = RLcp0_1104+q(1);
    POcp0_2104 = RLcp0_2104+q(2);
    POcp0_3104 = RLcp0_3104+q(3);
    JTcp0_1104_5 = RLcp0_3104*S4;
    JTcp0_2104_5 = -RLcp0_3104*C4;
    JTcp0_3104_5 = -(RLcp0_1104*S4-RLcp0_2104*C4);
    JTcp0_1104_6 = -(RLcp0_2104*S5-RLcp0_3104*ROcp0_55);
    JTcp0_2104_6 = RLcp0_1104*S5-RLcp0_3104*ROcp0_45;
    JTcp0_3104_6 = -(RLcp0_1104*ROcp0_55-RLcp0_2104*ROcp0_45);
    ORcp0_1104 = OMcp0_26*RLcp0_3104-OMcp0_36*RLcp0_2104;
    ORcp0_2104 = -(OMcp0_16*RLcp0_3104-OMcp0_36*RLcp0_1104);
    ORcp0_3104 = OMcp0_16*RLcp0_2104-OMcp0_26*RLcp0_1104;
    VIcp0_1104 = ORcp0_1104+qd(1);
    VIcp0_2104 = ORcp0_2104+qd(2);
    VIcp0_3104 = ORcp0_3104+qd(3);
    ACcp0_1104 = qdd(1)+OMcp0_26*ORcp0_3104-OMcp0_36*ORcp0_2104+OPcp0_26*RLcp0_3104-OPcp0_36*RLcp0_2104;
    ACcp0_2104 = qdd(2)-OMcp0_16*ORcp0_3104+OMcp0_36*ORcp0_1104-OPcp0_16*RLcp0_3104+OPcp0_36*RLcp0_1104;
    ACcp0_3104 = qdd(3)+OMcp0_16*ORcp0_2104-OMcp0_26*ORcp0_1104+OPcp0_16*RLcp0_2104-OPcp0_26*RLcp0_1104;

% = = Block_1_0_0_1_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp0_1104;
    sens.P(2) = POcp0_2104;
    sens.P(3) = POcp0_3104;
    sens.R(1,1) = ROcp0_16;
    sens.R(1,2) = ROcp0_26;
    sens.R(1,3) = ROcp0_36;
    sens.R(2,1) = ROcp0_45;
    sens.R(2,2) = ROcp0_55;
    sens.R(2,3) = S5;
    sens.R(3,1) = ROcp0_76;
    sens.R(3,2) = ROcp0_86;
    sens.R(3,3) = ROcp0_96;
    sens.V(1) = VIcp0_1104;
    sens.V(2) = VIcp0_2104;
    sens.V(3) = VIcp0_3104;
    sens.OM(1) = OMcp0_16;
    sens.OM(2) = OMcp0_26;
    sens.OM(3) = OMcp0_36;
    sens.J(1,1) = (1.0);
    sens.J(1,4) = -RLcp0_2104;
    sens.J(1,5) = JTcp0_1104_5;
    sens.J(1,6) = JTcp0_1104_6;
    sens.J(2,2) = (1.0);
    sens.J(2,4) = RLcp0_1104;
    sens.J(2,5) = JTcp0_2104_5;
    sens.J(2,6) = JTcp0_2104_6;
    sens.J(3,3) = (1.0);
    sens.J(3,5) = JTcp0_3104_5;
    sens.J(3,6) = JTcp0_3104_6;
    sens.J(4,5) = C4;
    sens.J(4,6) = ROcp0_45;
    sens.J(5,5) = S4;
    sens.J(5,6) = ROcp0_55;
    sens.J(6,4) = (1.0);
    sens.J(6,6) = S5;
    sens.A(1) = ACcp0_1104;
    sens.A(2) = ACcp0_2104;
    sens.A(3) = ACcp0_3104;
    sens.OMP(1) = OPcp0_16;
    sens.OMP(2) = OPcp0_26;
    sens.OMP(3) = OPcp0_36;
 
% 
case 2, 


% = = Block_1_0_0_2_0_1 = = 
 
% Sensor Kinematics 


    ROcp1_45 = -S4*C5;
    ROcp1_55 = C4*C5;
    ROcp1_75 = S4*S5;
    ROcp1_85 = -C4*S5;
    ROcp1_16 = -(ROcp1_75*S6-C4*C6);
    ROcp1_26 = -(ROcp1_85*S6-S4*C6);
    ROcp1_36 = -C5*S6;
    ROcp1_76 = ROcp1_75*C6+C4*S6;
    ROcp1_86 = ROcp1_85*C6+S4*S6;
    ROcp1_96 = C5*C6;
    OMcp1_15 = qd(5)*C4;
    OMcp1_25 = qd(5)*S4;
    OMcp1_16 = OMcp1_15+ROcp1_45*qd(6);
    OMcp1_26 = OMcp1_25+ROcp1_55*qd(6);
    OMcp1_36 = qd(4)+qd(6)*S5;
    OPcp1_16 = ROcp1_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp1_25*S5-ROcp1_55*qd(4));
    OPcp1_26 = ROcp1_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp1_15*S5-ROcp1_45*qd(4));
    OPcp1_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;
    RLcp1_1105 = ROcp1_16*s.dpt(1,23);
    RLcp1_2105 = ROcp1_26*s.dpt(1,23);
    RLcp1_3105 = ROcp1_36*s.dpt(1,23);
    POcp1_1105 = RLcp1_1105+q(1);
    POcp1_2105 = RLcp1_2105+q(2);
    POcp1_3105 = RLcp1_3105+q(3);
    JTcp1_1105_5 = RLcp1_3105*S4;
    JTcp1_2105_5 = -RLcp1_3105*C4;
    JTcp1_3105_5 = -(RLcp1_1105*S4-RLcp1_2105*C4);
    JTcp1_1105_6 = -(RLcp1_2105*S5-RLcp1_3105*ROcp1_55);
    JTcp1_2105_6 = RLcp1_1105*S5-RLcp1_3105*ROcp1_45;
    JTcp1_3105_6 = -(RLcp1_1105*ROcp1_55-RLcp1_2105*ROcp1_45);
    ORcp1_1105 = OMcp1_26*RLcp1_3105-OMcp1_36*RLcp1_2105;
    ORcp1_2105 = -(OMcp1_16*RLcp1_3105-OMcp1_36*RLcp1_1105);
    ORcp1_3105 = OMcp1_16*RLcp1_2105-OMcp1_26*RLcp1_1105;
    VIcp1_1105 = ORcp1_1105+qd(1);
    VIcp1_2105 = ORcp1_2105+qd(2);
    VIcp1_3105 = ORcp1_3105+qd(3);
    ACcp1_1105 = qdd(1)+OMcp1_26*ORcp1_3105-OMcp1_36*ORcp1_2105+OPcp1_26*RLcp1_3105-OPcp1_36*RLcp1_2105;
    ACcp1_2105 = qdd(2)-OMcp1_16*ORcp1_3105+OMcp1_36*ORcp1_1105-OPcp1_16*RLcp1_3105+OPcp1_36*RLcp1_1105;
    ACcp1_3105 = qdd(3)+OMcp1_16*ORcp1_2105-OMcp1_26*ORcp1_1105+OPcp1_16*RLcp1_2105-OPcp1_26*RLcp1_1105;

% = = Block_1_0_0_2_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp1_1105;
    sens.P(2) = POcp1_2105;
    sens.P(3) = POcp1_3105;
    sens.R(1,1) = ROcp1_16;
    sens.R(1,2) = ROcp1_26;
    sens.R(1,3) = ROcp1_36;
    sens.R(2,1) = ROcp1_45;
    sens.R(2,2) = ROcp1_55;
    sens.R(2,3) = S5;
    sens.R(3,1) = ROcp1_76;
    sens.R(3,2) = ROcp1_86;
    sens.R(3,3) = ROcp1_96;
    sens.V(1) = VIcp1_1105;
    sens.V(2) = VIcp1_2105;
    sens.V(3) = VIcp1_3105;
    sens.OM(1) = OMcp1_16;
    sens.OM(2) = OMcp1_26;
    sens.OM(3) = OMcp1_36;
    sens.J(1,1) = (1.0);
    sens.J(1,4) = -RLcp1_2105;
    sens.J(1,5) = JTcp1_1105_5;
    sens.J(1,6) = JTcp1_1105_6;
    sens.J(2,2) = (1.0);
    sens.J(2,4) = RLcp1_1105;
    sens.J(2,5) = JTcp1_2105_5;
    sens.J(2,6) = JTcp1_2105_6;
    sens.J(3,3) = (1.0);
    sens.J(3,5) = JTcp1_3105_5;
    sens.J(3,6) = JTcp1_3105_6;
    sens.J(4,5) = C4;
    sens.J(4,6) = ROcp1_45;
    sens.J(5,5) = S4;
    sens.J(5,6) = ROcp1_55;
    sens.J(6,4) = (1.0);
    sens.J(6,6) = S5;
    sens.A(1) = ACcp1_1105;
    sens.A(2) = ACcp1_2105;
    sens.A(3) = ACcp1_3105;
    sens.OMP(1) = OPcp1_16;
    sens.OMP(2) = OPcp1_26;
    sens.OMP(3) = OPcp1_36;
 
% 
case 3, 


% = = Block_1_0_0_3_0_1 = = 
 
% Sensor Kinematics 


    ROcp2_45 = -S4*C5;
    ROcp2_55 = C4*C5;
    ROcp2_75 = S4*S5;
    ROcp2_85 = -C4*S5;
    ROcp2_16 = -(ROcp2_75*S6-C4*C6);
    ROcp2_26 = -(ROcp2_85*S6-S4*C6);
    ROcp2_36 = -C5*S6;
    ROcp2_76 = ROcp2_75*C6+C4*S6;
    ROcp2_86 = ROcp2_85*C6+S4*S6;
    ROcp2_96 = C5*C6;
    OMcp2_15 = qd(5)*C4;
    OMcp2_25 = qd(5)*S4;
    OMcp2_16 = OMcp2_15+ROcp2_45*qd(6);
    OMcp2_26 = OMcp2_25+ROcp2_55*qd(6);
    OMcp2_36 = qd(4)+qd(6)*S5;
    OPcp2_16 = ROcp2_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp2_25*S5-ROcp2_55*qd(4));
    OPcp2_26 = ROcp2_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp2_15*S5-ROcp2_45*qd(4));
    OPcp2_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_3_0_2 = = 
 
% Sensor Kinematics 


    ROcp2_17 = ROcp2_16*C7+ROcp2_45*S7;
    ROcp2_27 = ROcp2_26*C7+ROcp2_55*S7;
    ROcp2_37 = ROcp2_36*C7+S5*S7;
    ROcp2_47 = -(ROcp2_16*S7-ROcp2_45*C7);
    ROcp2_57 = -(ROcp2_26*S7-ROcp2_55*C7);
    ROcp2_67 = -(ROcp2_36*S7-S5*C7);
    ROcp2_18 = ROcp2_17*C8-ROcp2_76*S8;
    ROcp2_28 = ROcp2_27*C8-ROcp2_86*S8;
    ROcp2_38 = ROcp2_37*C8-ROcp2_96*S8;
    ROcp2_78 = ROcp2_17*S8+ROcp2_76*C8;
    ROcp2_88 = ROcp2_27*S8+ROcp2_86*C8;
    ROcp2_98 = ROcp2_37*S8+ROcp2_96*C8;
    ROcp2_49 = ROcp2_47*C9+ROcp2_78*S9;
    ROcp2_59 = ROcp2_57*C9+ROcp2_88*S9;
    ROcp2_69 = ROcp2_67*C9+ROcp2_98*S9;
    ROcp2_79 = -(ROcp2_47*S9-ROcp2_78*C9);
    ROcp2_89 = -(ROcp2_57*S9-ROcp2_88*C9);
    ROcp2_99 = -(ROcp2_67*S9-ROcp2_98*C9);
    ROcp2_410 = ROcp2_49*C10+ROcp2_79*S10;
    ROcp2_510 = ROcp2_59*C10+ROcp2_89*S10;
    ROcp2_610 = ROcp2_69*C10+ROcp2_99*S10;
    ROcp2_710 = -(ROcp2_49*S10-ROcp2_79*C10);
    ROcp2_810 = -(ROcp2_59*S10-ROcp2_89*C10);
    ROcp2_910 = -(ROcp2_69*S10-ROcp2_99*C10);
    ROcp2_111 = ROcp2_18*C11-ROcp2_710*S11;
    ROcp2_211 = ROcp2_28*C11-ROcp2_810*S11;
    ROcp2_311 = ROcp2_38*C11-ROcp2_910*S11;
    ROcp2_711 = ROcp2_18*S11+ROcp2_710*C11;
    ROcp2_811 = ROcp2_28*S11+ROcp2_810*C11;
    ROcp2_911 = ROcp2_38*S11+ROcp2_910*C11;
    ROcp2_112 = ROcp2_111*C12+ROcp2_410*S12;
    ROcp2_212 = ROcp2_211*C12+ROcp2_510*S12;
    ROcp2_312 = ROcp2_311*C12+ROcp2_610*S12;
    ROcp2_412 = -(ROcp2_111*S12-ROcp2_410*C12);
    ROcp2_512 = -(ROcp2_211*S12-ROcp2_510*C12);
    ROcp2_612 = -(ROcp2_311*S12-ROcp2_610*C12);
    ROcp2_113 = ROcp2_112*C13+ROcp2_412*S13;
    ROcp2_213 = ROcp2_212*C13+ROcp2_512*S13;
    ROcp2_313 = ROcp2_312*C13+ROcp2_612*S13;
    ROcp2_413 = -(ROcp2_112*S13-ROcp2_412*C13);
    ROcp2_513 = -(ROcp2_212*S13-ROcp2_512*C13);
    ROcp2_613 = -(ROcp2_312*S13-ROcp2_612*C13);
    ROcp2_414 = ROcp2_413*C14+ROcp2_711*S14;
    ROcp2_514 = ROcp2_513*C14+ROcp2_811*S14;
    ROcp2_614 = ROcp2_613*C14+ROcp2_911*S14;
    ROcp2_714 = -(ROcp2_413*S14-ROcp2_711*C14);
    ROcp2_814 = -(ROcp2_513*S14-ROcp2_811*C14);
    ROcp2_914 = -(ROcp2_613*S14-ROcp2_911*C14);
    ROcp2_115 = ROcp2_113*C15-ROcp2_714*S15;
    ROcp2_215 = ROcp2_213*C15-ROcp2_814*S15;
    ROcp2_315 = ROcp2_313*C15-ROcp2_914*S15;
    ROcp2_715 = ROcp2_113*S15+ROcp2_714*C15;
    ROcp2_815 = ROcp2_213*S15+ROcp2_814*C15;
    ROcp2_915 = ROcp2_313*S15+ROcp2_914*C15;
    RLcp2_17 = ROcp2_16*s.dpt(1,1)+ROcp2_45*s.dpt(2,1)+ROcp2_76*s.dpt(3,1);
    RLcp2_27 = ROcp2_26*s.dpt(1,1)+ROcp2_55*s.dpt(2,1)+ROcp2_86*s.dpt(3,1);
    RLcp2_37 = ROcp2_36*s.dpt(1,1)+ROcp2_96*s.dpt(3,1)+s.dpt(2,1)*S5;
    OMcp2_17 = OMcp2_16+ROcp2_76*qd(7);
    OMcp2_27 = OMcp2_26+ROcp2_86*qd(7);
    OMcp2_37 = OMcp2_36+ROcp2_96*qd(7);
    ORcp2_17 = OMcp2_26*RLcp2_37-OMcp2_36*RLcp2_27;
    ORcp2_27 = -(OMcp2_16*RLcp2_37-OMcp2_36*RLcp2_17);
    ORcp2_37 = OMcp2_16*RLcp2_27-OMcp2_26*RLcp2_17;
    OMcp2_18 = OMcp2_17+ROcp2_47*qd(8);
    OMcp2_28 = OMcp2_27+ROcp2_57*qd(8);
    OMcp2_38 = OMcp2_37+ROcp2_67*qd(8);
    OMcp2_19 = OMcp2_18+ROcp2_18*qd(9);
    OMcp2_29 = OMcp2_28+ROcp2_28*qd(9);
    OMcp2_39 = OMcp2_38+ROcp2_38*qd(9);
    OPcp2_19 = OPcp2_16+ROcp2_18*qdd(9)+ROcp2_47*qdd(8)+ROcp2_76*qdd(7)+qd(7)*(OMcp2_26*ROcp2_96-OMcp2_36*ROcp2_86)+qd(8)*(OMcp2_27*ROcp2_67-...
 OMcp2_37*ROcp2_57)+qd(9)*(OMcp2_28*ROcp2_38-OMcp2_38*ROcp2_28);
    OPcp2_29 = OPcp2_26+ROcp2_28*qdd(9)+ROcp2_57*qdd(8)+ROcp2_86*qdd(7)-qd(7)*(OMcp2_16*ROcp2_96-OMcp2_36*ROcp2_76)-qd(8)*(OMcp2_17*ROcp2_67-...
 OMcp2_37*ROcp2_47)-qd(9)*(OMcp2_18*ROcp2_38-OMcp2_38*ROcp2_18);
    OPcp2_39 = OPcp2_36+ROcp2_38*qdd(9)+ROcp2_67*qdd(8)+ROcp2_96*qdd(7)+qd(7)*(OMcp2_16*ROcp2_86-OMcp2_26*ROcp2_76)+qd(8)*(OMcp2_17*ROcp2_57-...
 OMcp2_27*ROcp2_47)+qd(9)*(OMcp2_18*ROcp2_28-OMcp2_28*ROcp2_18);
    RLcp2_110 = ROcp2_49*s.dpt(2,24);
    RLcp2_210 = ROcp2_59*s.dpt(2,24);
    RLcp2_310 = ROcp2_69*s.dpt(2,24);
    OMcp2_110 = OMcp2_19+ROcp2_18*qd(10);
    OMcp2_210 = OMcp2_29+ROcp2_28*qd(10);
    OMcp2_310 = OMcp2_39+ROcp2_38*qd(10);
    ORcp2_110 = OMcp2_29*RLcp2_310-OMcp2_39*RLcp2_210;
    ORcp2_210 = -(OMcp2_19*RLcp2_310-OMcp2_39*RLcp2_110);
    ORcp2_310 = OMcp2_19*RLcp2_210-OMcp2_29*RLcp2_110;
    OMcp2_111 = OMcp2_110+ROcp2_410*qd(11);
    OMcp2_211 = OMcp2_210+ROcp2_510*qd(11);
    OMcp2_311 = OMcp2_310+ROcp2_610*qd(11);
    OMcp2_112 = OMcp2_111+ROcp2_711*qd(12);
    OMcp2_212 = OMcp2_211+ROcp2_811*qd(12);
    OMcp2_312 = OMcp2_311+ROcp2_911*qd(12);
    OPcp2_112 = OPcp2_19+ROcp2_18*qdd(10)+ROcp2_410*qdd(11)+ROcp2_711*qdd(12)+qd(10)*(OMcp2_29*ROcp2_38-OMcp2_39*ROcp2_28)+qd(11)*(OMcp2_210*...
 ROcp2_610-OMcp2_310*ROcp2_510)+qd(12)*(OMcp2_211*ROcp2_911-OMcp2_311*ROcp2_811);
    OPcp2_212 = OPcp2_29+ROcp2_28*qdd(10)+ROcp2_510*qdd(11)+ROcp2_811*qdd(12)-qd(10)*(OMcp2_19*ROcp2_38-OMcp2_39*ROcp2_18)-qd(11)*(OMcp2_110*...
 ROcp2_610-OMcp2_310*ROcp2_410)-qd(12)*(OMcp2_111*ROcp2_911-OMcp2_311*ROcp2_711);
    OPcp2_312 = OPcp2_39+ROcp2_38*qdd(10)+ROcp2_610*qdd(11)+ROcp2_911*qdd(12)+qd(10)*(OMcp2_19*ROcp2_28-OMcp2_29*ROcp2_18)+qd(11)*(OMcp2_110*...
 ROcp2_510-OMcp2_210*ROcp2_410)+qd(12)*(OMcp2_111*ROcp2_811-OMcp2_211*ROcp2_711);
    RLcp2_113 = ROcp2_112*s.dpt(1,27)+ROcp2_412*s.dpt(2,27)+ROcp2_711*s.dpt(3,27);
    RLcp2_213 = ROcp2_212*s.dpt(1,27)+ROcp2_512*s.dpt(2,27)+ROcp2_811*s.dpt(3,27);
    RLcp2_313 = ROcp2_312*s.dpt(1,27)+ROcp2_612*s.dpt(2,27)+ROcp2_911*s.dpt(3,27);
    POcp2_113 = RLcp2_110+RLcp2_113+RLcp2_17+q(1);
    POcp2_213 = RLcp2_210+RLcp2_213+RLcp2_27+q(2);
    POcp2_313 = RLcp2_310+RLcp2_313+RLcp2_37+q(3);
    JTcp2_113_4 = -(RLcp2_210+RLcp2_213+RLcp2_27);
    JTcp2_213_4 = RLcp2_110+RLcp2_113+RLcp2_17;
    JTcp2_113_5 = S4*(RLcp2_310+RLcp2_313+RLcp2_37);
    JTcp2_213_5 = -C4*(RLcp2_310+RLcp2_313+RLcp2_37);
    JTcp2_313_5 = C4*(RLcp2_210+RLcp2_27)-S4*(RLcp2_110+RLcp2_17)-RLcp2_113*S4+RLcp2_213*C4;
    JTcp2_113_6 = ROcp2_55*(RLcp2_310+RLcp2_37)-S5*(RLcp2_210+RLcp2_27)-RLcp2_213*S5+RLcp2_313*ROcp2_55;
    JTcp2_213_6 = RLcp2_113*S5-RLcp2_313*ROcp2_45-ROcp2_45*(RLcp2_310+RLcp2_37)+S5*(RLcp2_110+RLcp2_17);
    JTcp2_313_6 = ROcp2_45*(RLcp2_210+RLcp2_27)-ROcp2_55*(RLcp2_110+RLcp2_17)-RLcp2_113*ROcp2_55+RLcp2_213*ROcp2_45;
    JTcp2_113_7 = ROcp2_86*(RLcp2_310+RLcp2_313)-ROcp2_96*(RLcp2_210+RLcp2_213);
    JTcp2_213_7 = -(ROcp2_76*(RLcp2_310+RLcp2_313)-ROcp2_96*(RLcp2_110+RLcp2_113));
    JTcp2_313_7 = ROcp2_76*(RLcp2_210+RLcp2_213)-ROcp2_86*(RLcp2_110+RLcp2_113);
    JTcp2_113_8 = ROcp2_57*(RLcp2_310+RLcp2_313)-ROcp2_67*(RLcp2_210+RLcp2_213);
    JTcp2_213_8 = -(ROcp2_47*(RLcp2_310+RLcp2_313)-ROcp2_67*(RLcp2_110+RLcp2_113));
    JTcp2_313_8 = ROcp2_47*(RLcp2_210+RLcp2_213)-ROcp2_57*(RLcp2_110+RLcp2_113);
    JTcp2_113_9 = ROcp2_28*(RLcp2_310+RLcp2_313)-ROcp2_38*(RLcp2_210+RLcp2_213);
    JTcp2_213_9 = -(ROcp2_18*(RLcp2_310+RLcp2_313)-ROcp2_38*(RLcp2_110+RLcp2_113));
    JTcp2_313_9 = ROcp2_18*(RLcp2_210+RLcp2_213)-ROcp2_28*(RLcp2_110+RLcp2_113);
    JTcp2_113_10 = -(RLcp2_213*ROcp2_38-RLcp2_313*ROcp2_28);
    JTcp2_213_10 = RLcp2_113*ROcp2_38-RLcp2_313*ROcp2_18;
    JTcp2_313_10 = -(RLcp2_113*ROcp2_28-RLcp2_213*ROcp2_18);
    JTcp2_113_11 = -(RLcp2_213*ROcp2_610-RLcp2_313*ROcp2_510);
    JTcp2_213_11 = RLcp2_113*ROcp2_610-RLcp2_313*ROcp2_410;
    JTcp2_313_11 = -(RLcp2_113*ROcp2_510-RLcp2_213*ROcp2_410);
    JTcp2_113_12 = -(RLcp2_213*ROcp2_911-RLcp2_313*ROcp2_811);
    JTcp2_213_12 = RLcp2_113*ROcp2_911-RLcp2_313*ROcp2_711;
    JTcp2_313_12 = -(RLcp2_113*ROcp2_811-RLcp2_213*ROcp2_711);
    OMcp2_113 = OMcp2_112+ROcp2_711*qd(13);
    OMcp2_213 = OMcp2_212+ROcp2_811*qd(13);
    OMcp2_313 = OMcp2_312+ROcp2_911*qd(13);
    ORcp2_113 = OMcp2_212*RLcp2_313-OMcp2_312*RLcp2_213;
    ORcp2_213 = -(OMcp2_112*RLcp2_313-OMcp2_312*RLcp2_113);
    ORcp2_313 = OMcp2_112*RLcp2_213-OMcp2_212*RLcp2_113;
    VIcp2_113 = ORcp2_110+ORcp2_113+ORcp2_17+qd(1);
    VIcp2_213 = ORcp2_210+ORcp2_213+ORcp2_27+qd(2);
    VIcp2_313 = ORcp2_310+ORcp2_313+ORcp2_37+qd(3);
    ACcp2_113 = qdd(1)+OMcp2_212*ORcp2_313+OMcp2_26*ORcp2_37+OMcp2_29*ORcp2_310-OMcp2_312*ORcp2_213-OMcp2_36*ORcp2_27-OMcp2_39*ORcp2_210+OPcp2_212*...
 RLcp2_313+OPcp2_26*RLcp2_37+OPcp2_29*RLcp2_310-OPcp2_312*RLcp2_213-OPcp2_36*RLcp2_27-OPcp2_39*RLcp2_210;
    ACcp2_213 = qdd(2)-OMcp2_112*ORcp2_313-OMcp2_16*ORcp2_37-OMcp2_19*ORcp2_310+OMcp2_312*ORcp2_113+OMcp2_36*ORcp2_17+OMcp2_39*ORcp2_110-OPcp2_112*...
 RLcp2_313-OPcp2_16*RLcp2_37-OPcp2_19*RLcp2_310+OPcp2_312*RLcp2_113+OPcp2_36*RLcp2_17+OPcp2_39*RLcp2_110;
    ACcp2_313 = qdd(3)+OMcp2_112*ORcp2_213+OMcp2_16*ORcp2_27+OMcp2_19*ORcp2_210-OMcp2_212*ORcp2_113-OMcp2_26*ORcp2_17-OMcp2_29*ORcp2_110+OPcp2_112*...
 RLcp2_213+OPcp2_16*RLcp2_27+OPcp2_19*RLcp2_210-OPcp2_212*RLcp2_113-OPcp2_26*RLcp2_17-OPcp2_29*RLcp2_110;
    OMcp2_114 = OMcp2_113+ROcp2_113*qd(14);
    OMcp2_214 = OMcp2_213+ROcp2_213*qd(14);
    OMcp2_314 = OMcp2_313+ROcp2_313*qd(14);
    OMcp2_115 = OMcp2_114+ROcp2_414*qd(15);
    OMcp2_215 = OMcp2_214+ROcp2_514*qd(15);
    OMcp2_315 = OMcp2_314+ROcp2_614*qd(15);
    OPcp2_115 = OPcp2_112+ROcp2_113*qdd(14)+ROcp2_414*qdd(15)+ROcp2_711*qdd(13)+qd(13)*(OMcp2_212*ROcp2_911-OMcp2_312*ROcp2_811)+qd(14)*(OMcp2_213*...
 ROcp2_313-OMcp2_313*ROcp2_213)+qd(15)*(OMcp2_214*ROcp2_614-OMcp2_314*ROcp2_514);
    OPcp2_215 = OPcp2_212+ROcp2_213*qdd(14)+ROcp2_514*qdd(15)+ROcp2_811*qdd(13)-qd(13)*(OMcp2_112*ROcp2_911-OMcp2_312*ROcp2_711)-qd(14)*(OMcp2_113*...
 ROcp2_313-OMcp2_313*ROcp2_113)-qd(15)*(OMcp2_114*ROcp2_614-OMcp2_314*ROcp2_414);
    OPcp2_315 = OPcp2_312+ROcp2_313*qdd(14)+ROcp2_614*qdd(15)+ROcp2_911*qdd(13)+qd(13)*(OMcp2_112*ROcp2_811-OMcp2_212*ROcp2_711)+qd(14)*(OMcp2_113*...
 ROcp2_213-OMcp2_213*ROcp2_113)+qd(15)*(OMcp2_114*ROcp2_514-OMcp2_214*ROcp2_414);

% = = Block_1_0_0_3_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp2_113;
    sens.P(2) = POcp2_213;
    sens.P(3) = POcp2_313;
    sens.R(1,1) = ROcp2_115;
    sens.R(1,2) = ROcp2_215;
    sens.R(1,3) = ROcp2_315;
    sens.R(2,1) = ROcp2_414;
    sens.R(2,2) = ROcp2_514;
    sens.R(2,3) = ROcp2_614;
    sens.R(3,1) = ROcp2_715;
    sens.R(3,2) = ROcp2_815;
    sens.R(3,3) = ROcp2_915;
    sens.V(1) = VIcp2_113;
    sens.V(2) = VIcp2_213;
    sens.V(3) = VIcp2_313;
    sens.OM(1) = OMcp2_115;
    sens.OM(2) = OMcp2_215;
    sens.OM(3) = OMcp2_315;
    sens.J(1,1) = (1.0);
    sens.J(1,4) = JTcp2_113_4;
    sens.J(1,5) = JTcp2_113_5;
    sens.J(1,6) = JTcp2_113_6;
    sens.J(1,7) = JTcp2_113_7;
    sens.J(1,8) = JTcp2_113_8;
    sens.J(1,9) = JTcp2_113_9;
    sens.J(1,10) = JTcp2_113_10;
    sens.J(1,11) = JTcp2_113_11;
    sens.J(1,12) = JTcp2_113_12;
    sens.J(2,2) = (1.0);
    sens.J(2,4) = JTcp2_213_4;
    sens.J(2,5) = JTcp2_213_5;
    sens.J(2,6) = JTcp2_213_6;
    sens.J(2,7) = JTcp2_213_7;
    sens.J(2,8) = JTcp2_213_8;
    sens.J(2,9) = JTcp2_213_9;
    sens.J(2,10) = JTcp2_213_10;
    sens.J(2,11) = JTcp2_213_11;
    sens.J(2,12) = JTcp2_213_12;
    sens.J(3,3) = (1.0);
    sens.J(3,5) = JTcp2_313_5;
    sens.J(3,6) = JTcp2_313_6;
    sens.J(3,7) = JTcp2_313_7;
    sens.J(3,8) = JTcp2_313_8;
    sens.J(3,9) = JTcp2_313_9;
    sens.J(3,10) = JTcp2_313_10;
    sens.J(3,11) = JTcp2_313_11;
    sens.J(3,12) = JTcp2_313_12;
    sens.J(4,5) = C4;
    sens.J(4,6) = ROcp2_45;
    sens.J(4,7) = ROcp2_76;
    sens.J(4,8) = ROcp2_47;
    sens.J(4,9) = ROcp2_18;
    sens.J(4,10) = ROcp2_18;
    sens.J(4,11) = ROcp2_410;
    sens.J(4,12) = ROcp2_711;
    sens.J(4,13) = ROcp2_711;
    sens.J(4,14) = ROcp2_113;
    sens.J(4,15) = ROcp2_414;
    sens.J(5,5) = S4;
    sens.J(5,6) = ROcp2_55;
    sens.J(5,7) = ROcp2_86;
    sens.J(5,8) = ROcp2_57;
    sens.J(5,9) = ROcp2_28;
    sens.J(5,10) = ROcp2_28;
    sens.J(5,11) = ROcp2_510;
    sens.J(5,12) = ROcp2_811;
    sens.J(5,13) = ROcp2_811;
    sens.J(5,14) = ROcp2_213;
    sens.J(5,15) = ROcp2_514;
    sens.J(6,4) = (1.0);
    sens.J(6,6) = S5;
    sens.J(6,7) = ROcp2_96;
    sens.J(6,8) = ROcp2_67;
    sens.J(6,9) = ROcp2_38;
    sens.J(6,10) = ROcp2_38;
    sens.J(6,11) = ROcp2_610;
    sens.J(6,12) = ROcp2_911;
    sens.J(6,13) = ROcp2_911;
    sens.J(6,14) = ROcp2_313;
    sens.J(6,15) = ROcp2_614;
    sens.A(1) = ACcp2_113;
    sens.A(2) = ACcp2_213;
    sens.A(3) = ACcp2_313;
    sens.OMP(1) = OPcp2_115;
    sens.OMP(2) = OPcp2_215;
    sens.OMP(3) = OPcp2_315;
 
% 
case 4, 


% = = Block_1_0_0_4_0_1 = = 
 
% Sensor Kinematics 


    ROcp3_45 = -S4*C5;
    ROcp3_55 = C4*C5;
    ROcp3_75 = S4*S5;
    ROcp3_85 = -C4*S5;
    ROcp3_16 = -(ROcp3_75*S6-C4*C6);
    ROcp3_26 = -(ROcp3_85*S6-S4*C6);
    ROcp3_36 = -C5*S6;
    ROcp3_76 = ROcp3_75*C6+C4*S6;
    ROcp3_86 = ROcp3_85*C6+S4*S6;
    ROcp3_96 = C5*C6;
    OMcp3_15 = qd(5)*C4;
    OMcp3_25 = qd(5)*S4;
    OMcp3_16 = OMcp3_15+ROcp3_45*qd(6);
    OMcp3_26 = OMcp3_25+ROcp3_55*qd(6);
    OMcp3_36 = qd(4)+qd(6)*S5;
    OPcp3_16 = ROcp3_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp3_25*S5-ROcp3_55*qd(4));
    OPcp3_26 = ROcp3_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp3_15*S5-ROcp3_45*qd(4));
    OPcp3_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_4_0_7 = = 
 
% Sensor Kinematics 


    ROcp3_124 = ROcp3_16*C24+ROcp3_45*S24;
    ROcp3_224 = ROcp3_26*C24+ROcp3_55*S24;
    ROcp3_324 = ROcp3_36*C24+S24*S5;
    ROcp3_424 = -(ROcp3_16*S24-ROcp3_45*C24);
    ROcp3_524 = -(ROcp3_26*S24-ROcp3_55*C24);
    ROcp3_624 = -(ROcp3_36*S24-C24*S5);
    ROcp3_125 = ROcp3_124*C25-ROcp3_76*S25;
    ROcp3_225 = ROcp3_224*C25-ROcp3_86*S25;
    ROcp3_325 = ROcp3_324*C25-ROcp3_96*S25;
    ROcp3_725 = ROcp3_124*S25+ROcp3_76*C25;
    ROcp3_825 = ROcp3_224*S25+ROcp3_86*C25;
    ROcp3_925 = ROcp3_324*S25+ROcp3_96*C25;
    ROcp3_426 = ROcp3_424*C26+ROcp3_725*S26;
    ROcp3_526 = ROcp3_524*C26+ROcp3_825*S26;
    ROcp3_626 = ROcp3_624*C26+ROcp3_925*S26;
    ROcp3_726 = -(ROcp3_424*S26-ROcp3_725*C26);
    ROcp3_826 = -(ROcp3_524*S26-ROcp3_825*C26);
    ROcp3_926 = -(ROcp3_624*S26-ROcp3_925*C26);
    ROcp3_427 = ROcp3_426*C27+ROcp3_726*S27;
    ROcp3_527 = ROcp3_526*C27+ROcp3_826*S27;
    ROcp3_627 = ROcp3_626*C27+ROcp3_926*S27;
    ROcp3_727 = -(ROcp3_426*S27-ROcp3_726*C27);
    ROcp3_827 = -(ROcp3_526*S27-ROcp3_826*C27);
    ROcp3_927 = -(ROcp3_626*S27-ROcp3_926*C27);
    ROcp3_128 = ROcp3_125*C28-ROcp3_727*S28;
    ROcp3_228 = ROcp3_225*C28-ROcp3_827*S28;
    ROcp3_328 = ROcp3_325*C28-ROcp3_927*S28;
    ROcp3_728 = ROcp3_125*S28+ROcp3_727*C28;
    ROcp3_828 = ROcp3_225*S28+ROcp3_827*C28;
    ROcp3_928 = ROcp3_325*S28+ROcp3_927*C28;
    ROcp3_129 = ROcp3_128*C29+ROcp3_427*S29;
    ROcp3_229 = ROcp3_228*C29+ROcp3_527*S29;
    ROcp3_329 = ROcp3_328*C29+ROcp3_627*S29;
    ROcp3_429 = -(ROcp3_128*S29-ROcp3_427*C29);
    ROcp3_529 = -(ROcp3_228*S29-ROcp3_527*C29);
    ROcp3_629 = -(ROcp3_328*S29-ROcp3_627*C29);
    ROcp3_130 = ROcp3_129*C30+ROcp3_429*S30;
    ROcp3_230 = ROcp3_229*C30+ROcp3_529*S30;
    ROcp3_330 = ROcp3_329*C30+ROcp3_629*S30;
    ROcp3_430 = -(ROcp3_129*S30-ROcp3_429*C30);
    ROcp3_530 = -(ROcp3_229*S30-ROcp3_529*C30);
    ROcp3_630 = -(ROcp3_329*S30-ROcp3_629*C30);
    ROcp3_431 = ROcp3_430*C31+ROcp3_728*S31;
    ROcp3_531 = ROcp3_530*C31+ROcp3_828*S31;
    ROcp3_631 = ROcp3_630*C31+ROcp3_928*S31;
    ROcp3_731 = -(ROcp3_430*S31-ROcp3_728*C31);
    ROcp3_831 = -(ROcp3_530*S31-ROcp3_828*C31);
    ROcp3_931 = -(ROcp3_630*S31-ROcp3_928*C31);
    ROcp3_132 = ROcp3_130*C32-ROcp3_731*S32;
    ROcp3_232 = ROcp3_230*C32-ROcp3_831*S32;
    ROcp3_332 = ROcp3_330*C32-ROcp3_931*S32;
    ROcp3_732 = ROcp3_130*S32+ROcp3_731*C32;
    ROcp3_832 = ROcp3_230*S32+ROcp3_831*C32;
    ROcp3_932 = ROcp3_330*S32+ROcp3_931*C32;
    RLcp3_124 = ROcp3_16*s.dpt(1,6)+ROcp3_45*s.dpt(2,6)+ROcp3_76*s.dpt(3,6);
    RLcp3_224 = ROcp3_26*s.dpt(1,6)+ROcp3_55*s.dpt(2,6)+ROcp3_86*s.dpt(3,6);
    RLcp3_324 = ROcp3_36*s.dpt(1,6)+ROcp3_96*s.dpt(3,6)+s.dpt(2,6)*S5;
    OMcp3_124 = OMcp3_16+ROcp3_76*qd(24);
    OMcp3_224 = OMcp3_26+ROcp3_86*qd(24);
    OMcp3_324 = OMcp3_36+ROcp3_96*qd(24);
    ORcp3_124 = OMcp3_26*RLcp3_324-OMcp3_36*RLcp3_224;
    ORcp3_224 = -(OMcp3_16*RLcp3_324-OMcp3_36*RLcp3_124);
    ORcp3_324 = OMcp3_16*RLcp3_224-OMcp3_26*RLcp3_124;
    OMcp3_125 = OMcp3_124+ROcp3_424*qd(25);
    OMcp3_225 = OMcp3_224+ROcp3_524*qd(25);
    OMcp3_325 = OMcp3_324+ROcp3_624*qd(25);
    OMcp3_126 = OMcp3_125+ROcp3_125*qd(26);
    OMcp3_226 = OMcp3_225+ROcp3_225*qd(26);
    OMcp3_326 = OMcp3_325+ROcp3_325*qd(26);
    OPcp3_126 = OPcp3_16+ROcp3_125*qdd(26)+ROcp3_424*qdd(25)+ROcp3_76*qdd(24)+qd(24)*(OMcp3_26*ROcp3_96-OMcp3_36*ROcp3_86)+qd(25)*(OMcp3_224*...
 ROcp3_624-OMcp3_324*ROcp3_524)+qd(26)*(OMcp3_225*ROcp3_325-OMcp3_325*ROcp3_225);
    OPcp3_226 = OPcp3_26+ROcp3_225*qdd(26)+ROcp3_524*qdd(25)+ROcp3_86*qdd(24)-qd(24)*(OMcp3_16*ROcp3_96-OMcp3_36*ROcp3_76)-qd(25)*(OMcp3_124*...
 ROcp3_624-OMcp3_324*ROcp3_424)-qd(26)*(OMcp3_125*ROcp3_325-OMcp3_325*ROcp3_125);
    OPcp3_326 = OPcp3_36+ROcp3_325*qdd(26)+ROcp3_624*qdd(25)+ROcp3_96*qdd(24)+qd(24)*(OMcp3_16*ROcp3_86-OMcp3_26*ROcp3_76)+qd(25)*(OMcp3_124*...
 ROcp3_524-OMcp3_224*ROcp3_424)+qd(26)*(OMcp3_125*ROcp3_225-OMcp3_225*ROcp3_125);
    RLcp3_127 = ROcp3_426*s.dpt(2,37);
    RLcp3_227 = ROcp3_526*s.dpt(2,37);
    RLcp3_327 = ROcp3_626*s.dpt(2,37);
    OMcp3_127 = OMcp3_126+ROcp3_125*qd(27);
    OMcp3_227 = OMcp3_226+ROcp3_225*qd(27);
    OMcp3_327 = OMcp3_326+ROcp3_325*qd(27);
    ORcp3_127 = OMcp3_226*RLcp3_327-OMcp3_326*RLcp3_227;
    ORcp3_227 = -(OMcp3_126*RLcp3_327-OMcp3_326*RLcp3_127);
    ORcp3_327 = OMcp3_126*RLcp3_227-OMcp3_226*RLcp3_127;
    OMcp3_128 = OMcp3_127+ROcp3_427*qd(28);
    OMcp3_228 = OMcp3_227+ROcp3_527*qd(28);
    OMcp3_328 = OMcp3_327+ROcp3_627*qd(28);
    OMcp3_129 = OMcp3_128+ROcp3_728*qd(29);
    OMcp3_229 = OMcp3_228+ROcp3_828*qd(29);
    OMcp3_329 = OMcp3_328+ROcp3_928*qd(29);
    OPcp3_129 = OPcp3_126+ROcp3_125*qdd(27)+ROcp3_427*qdd(28)+ROcp3_728*qdd(29)+qd(27)*(OMcp3_226*ROcp3_325-OMcp3_326*ROcp3_225)+qd(28)*(OMcp3_227*...
 ROcp3_627-OMcp3_327*ROcp3_527)+qd(29)*(OMcp3_228*ROcp3_928-OMcp3_328*ROcp3_828);
    OPcp3_229 = OPcp3_226+ROcp3_225*qdd(27)+ROcp3_527*qdd(28)+ROcp3_828*qdd(29)-qd(27)*(OMcp3_126*ROcp3_325-OMcp3_326*ROcp3_125)-qd(28)*(OMcp3_127*...
 ROcp3_627-OMcp3_327*ROcp3_427)-qd(29)*(OMcp3_128*ROcp3_928-OMcp3_328*ROcp3_728);
    OPcp3_329 = OPcp3_326+ROcp3_325*qdd(27)+ROcp3_627*qdd(28)+ROcp3_928*qdd(29)+qd(27)*(OMcp3_126*ROcp3_225-OMcp3_226*ROcp3_125)+qd(28)*(OMcp3_127*...
 ROcp3_527-OMcp3_227*ROcp3_427)+qd(29)*(OMcp3_128*ROcp3_828-OMcp3_228*ROcp3_728);
    RLcp3_130 = ROcp3_129*s.dpt(1,40)+ROcp3_429*s.dpt(2,40)+ROcp3_728*s.dpt(3,40);
    RLcp3_230 = ROcp3_229*s.dpt(1,40)+ROcp3_529*s.dpt(2,40)+ROcp3_828*s.dpt(3,40);
    RLcp3_330 = ROcp3_329*s.dpt(1,40)+ROcp3_629*s.dpt(2,40)+ROcp3_928*s.dpt(3,40);
    POcp3_130 = RLcp3_124+RLcp3_127+RLcp3_130+q(1);
    POcp3_230 = RLcp3_224+RLcp3_227+RLcp3_230+q(2);
    POcp3_330 = RLcp3_324+RLcp3_327+RLcp3_330+q(3);
    JTcp3_130_4 = -(RLcp3_224+RLcp3_227+RLcp3_230);
    JTcp3_230_4 = RLcp3_124+RLcp3_127+RLcp3_130;
    JTcp3_130_5 = S4*(RLcp3_324+RLcp3_327+RLcp3_330);
    JTcp3_230_5 = -C4*(RLcp3_324+RLcp3_327+RLcp3_330);
    JTcp3_330_5 = C4*(RLcp3_224+RLcp3_227)-S4*(RLcp3_124+RLcp3_127)-RLcp3_130*S4+RLcp3_230*C4;
    JTcp3_130_6 = ROcp3_55*(RLcp3_324+RLcp3_327)-S5*(RLcp3_224+RLcp3_227)-RLcp3_230*S5+RLcp3_330*ROcp3_55;
    JTcp3_230_6 = RLcp3_130*S5-RLcp3_330*ROcp3_45-ROcp3_45*(RLcp3_324+RLcp3_327)+S5*(RLcp3_124+RLcp3_127);
    JTcp3_330_6 = ROcp3_45*(RLcp3_224+RLcp3_227)-ROcp3_55*(RLcp3_124+RLcp3_127)-RLcp3_130*ROcp3_55+RLcp3_230*ROcp3_45;
    JTcp3_130_7 = ROcp3_86*(RLcp3_327+RLcp3_330)-ROcp3_96*(RLcp3_227+RLcp3_230);
    JTcp3_230_7 = -(ROcp3_76*(RLcp3_327+RLcp3_330)-ROcp3_96*(RLcp3_127+RLcp3_130));
    JTcp3_330_7 = ROcp3_76*(RLcp3_227+RLcp3_230)-ROcp3_86*(RLcp3_127+RLcp3_130);
    JTcp3_130_8 = ROcp3_524*(RLcp3_327+RLcp3_330)-ROcp3_624*(RLcp3_227+RLcp3_230);
    JTcp3_230_8 = -(ROcp3_424*(RLcp3_327+RLcp3_330)-ROcp3_624*(RLcp3_127+RLcp3_130));
    JTcp3_330_8 = ROcp3_424*(RLcp3_227+RLcp3_230)-ROcp3_524*(RLcp3_127+RLcp3_130);
    JTcp3_130_9 = ROcp3_225*(RLcp3_327+RLcp3_330)-ROcp3_325*(RLcp3_227+RLcp3_230);
    JTcp3_230_9 = -(ROcp3_125*(RLcp3_327+RLcp3_330)-ROcp3_325*(RLcp3_127+RLcp3_130));
    JTcp3_330_9 = ROcp3_125*(RLcp3_227+RLcp3_230)-ROcp3_225*(RLcp3_127+RLcp3_130);
    JTcp3_130_10 = -(RLcp3_230*ROcp3_325-RLcp3_330*ROcp3_225);
    JTcp3_230_10 = RLcp3_130*ROcp3_325-RLcp3_330*ROcp3_125;
    JTcp3_330_10 = -(RLcp3_130*ROcp3_225-RLcp3_230*ROcp3_125);
    JTcp3_130_11 = -(RLcp3_230*ROcp3_627-RLcp3_330*ROcp3_527);
    JTcp3_230_11 = RLcp3_130*ROcp3_627-RLcp3_330*ROcp3_427;
    JTcp3_330_11 = -(RLcp3_130*ROcp3_527-RLcp3_230*ROcp3_427);
    JTcp3_130_12 = -(RLcp3_230*ROcp3_928-RLcp3_330*ROcp3_828);
    JTcp3_230_12 = RLcp3_130*ROcp3_928-RLcp3_330*ROcp3_728;
    JTcp3_330_12 = -(RLcp3_130*ROcp3_828-RLcp3_230*ROcp3_728);
    OMcp3_130 = OMcp3_129+ROcp3_728*qd(30);
    OMcp3_230 = OMcp3_229+ROcp3_828*qd(30);
    OMcp3_330 = OMcp3_329+ROcp3_928*qd(30);
    ORcp3_130 = OMcp3_229*RLcp3_330-OMcp3_329*RLcp3_230;
    ORcp3_230 = -(OMcp3_129*RLcp3_330-OMcp3_329*RLcp3_130);
    ORcp3_330 = OMcp3_129*RLcp3_230-OMcp3_229*RLcp3_130;
    VIcp3_130 = ORcp3_124+ORcp3_127+ORcp3_130+qd(1);
    VIcp3_230 = ORcp3_224+ORcp3_227+ORcp3_230+qd(2);
    VIcp3_330 = ORcp3_324+ORcp3_327+ORcp3_330+qd(3);
    ACcp3_130 = qdd(1)+OMcp3_226*ORcp3_327+OMcp3_229*ORcp3_330+OMcp3_26*ORcp3_324-OMcp3_326*ORcp3_227-OMcp3_329*ORcp3_230-OMcp3_36*ORcp3_224+...
 OPcp3_226*RLcp3_327+OPcp3_229*RLcp3_330+OPcp3_26*RLcp3_324-OPcp3_326*RLcp3_227-OPcp3_329*RLcp3_230-OPcp3_36*RLcp3_224;
    ACcp3_230 = qdd(2)-OMcp3_126*ORcp3_327-OMcp3_129*ORcp3_330-OMcp3_16*ORcp3_324+OMcp3_326*ORcp3_127+OMcp3_329*ORcp3_130+OMcp3_36*ORcp3_124-...
 OPcp3_126*RLcp3_327-OPcp3_129*RLcp3_330-OPcp3_16*RLcp3_324+OPcp3_326*RLcp3_127+OPcp3_329*RLcp3_130+OPcp3_36*RLcp3_124;
    ACcp3_330 = qdd(3)+OMcp3_126*ORcp3_227+OMcp3_129*ORcp3_230+OMcp3_16*ORcp3_224-OMcp3_226*ORcp3_127-OMcp3_229*ORcp3_130-OMcp3_26*ORcp3_124+...
 OPcp3_126*RLcp3_227+OPcp3_129*RLcp3_230+OPcp3_16*RLcp3_224-OPcp3_226*RLcp3_127-OPcp3_229*RLcp3_130-OPcp3_26*RLcp3_124;
    OMcp3_131 = OMcp3_130+ROcp3_130*qd(31);
    OMcp3_231 = OMcp3_230+ROcp3_230*qd(31);
    OMcp3_331 = OMcp3_330+ROcp3_330*qd(31);
    OMcp3_132 = OMcp3_131+ROcp3_431*qd(32);
    OMcp3_232 = OMcp3_231+ROcp3_531*qd(32);
    OMcp3_332 = OMcp3_331+ROcp3_631*qd(32);
    OPcp3_132 = OPcp3_129+ROcp3_130*qdd(31)+ROcp3_431*qdd(32)+ROcp3_728*qdd(30)+qd(30)*(OMcp3_229*ROcp3_928-OMcp3_329*ROcp3_828)+qd(31)*(OMcp3_230*...
 ROcp3_330-OMcp3_330*ROcp3_230)+qd(32)*(OMcp3_231*ROcp3_631-OMcp3_331*ROcp3_531);
    OPcp3_232 = OPcp3_229+ROcp3_230*qdd(31)+ROcp3_531*qdd(32)+ROcp3_828*qdd(30)-qd(30)*(OMcp3_129*ROcp3_928-OMcp3_329*ROcp3_728)-qd(31)*(OMcp3_130*...
 ROcp3_330-OMcp3_330*ROcp3_130)-qd(32)*(OMcp3_131*ROcp3_631-OMcp3_331*ROcp3_431);
    OPcp3_332 = OPcp3_329+ROcp3_330*qdd(31)+ROcp3_631*qdd(32)+ROcp3_928*qdd(30)+qd(30)*(OMcp3_129*ROcp3_828-OMcp3_229*ROcp3_728)+qd(31)*(OMcp3_130*...
 ROcp3_230-OMcp3_230*ROcp3_130)+qd(32)*(OMcp3_131*ROcp3_531-OMcp3_231*ROcp3_431);

% = = Block_1_0_0_4_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp3_130;
    sens.P(2) = POcp3_230;
    sens.P(3) = POcp3_330;
    sens.R(1,1) = ROcp3_132;
    sens.R(1,2) = ROcp3_232;
    sens.R(1,3) = ROcp3_332;
    sens.R(2,1) = ROcp3_431;
    sens.R(2,2) = ROcp3_531;
    sens.R(2,3) = ROcp3_631;
    sens.R(3,1) = ROcp3_732;
    sens.R(3,2) = ROcp3_832;
    sens.R(3,3) = ROcp3_932;
    sens.V(1) = VIcp3_130;
    sens.V(2) = VIcp3_230;
    sens.V(3) = VIcp3_330;
    sens.OM(1) = OMcp3_132;
    sens.OM(2) = OMcp3_232;
    sens.OM(3) = OMcp3_332;
    sens.J(1,1) = (1.0);
    sens.J(1,4) = JTcp3_130_4;
    sens.J(1,5) = JTcp3_130_5;
    sens.J(1,6) = JTcp3_130_6;
    sens.J(1,24) = JTcp3_130_7;
    sens.J(1,25) = JTcp3_130_8;
    sens.J(1,26) = JTcp3_130_9;
    sens.J(1,27) = JTcp3_130_10;
    sens.J(1,28) = JTcp3_130_11;
    sens.J(1,29) = JTcp3_130_12;
    sens.J(2,2) = (1.0);
    sens.J(2,4) = JTcp3_230_4;
    sens.J(2,5) = JTcp3_230_5;
    sens.J(2,6) = JTcp3_230_6;
    sens.J(2,24) = JTcp3_230_7;
    sens.J(2,25) = JTcp3_230_8;
    sens.J(2,26) = JTcp3_230_9;
    sens.J(2,27) = JTcp3_230_10;
    sens.J(2,28) = JTcp3_230_11;
    sens.J(2,29) = JTcp3_230_12;
    sens.J(3,3) = (1.0);
    sens.J(3,5) = JTcp3_330_5;
    sens.J(3,6) = JTcp3_330_6;
    sens.J(3,24) = JTcp3_330_7;
    sens.J(3,25) = JTcp3_330_8;
    sens.J(3,26) = JTcp3_330_9;
    sens.J(3,27) = JTcp3_330_10;
    sens.J(3,28) = JTcp3_330_11;
    sens.J(3,29) = JTcp3_330_12;
    sens.J(4,5) = C4;
    sens.J(4,6) = ROcp3_45;
    sens.J(4,24) = ROcp3_76;
    sens.J(4,25) = ROcp3_424;
    sens.J(4,26) = ROcp3_125;
    sens.J(4,27) = ROcp3_125;
    sens.J(4,28) = ROcp3_427;
    sens.J(4,29) = ROcp3_728;
    sens.J(4,30) = ROcp3_728;
    sens.J(4,31) = ROcp3_130;
    sens.J(4,32) = ROcp3_431;
    sens.J(5,5) = S4;
    sens.J(5,6) = ROcp3_55;
    sens.J(5,24) = ROcp3_86;
    sens.J(5,25) = ROcp3_524;
    sens.J(5,26) = ROcp3_225;
    sens.J(5,27) = ROcp3_225;
    sens.J(5,28) = ROcp3_527;
    sens.J(5,29) = ROcp3_828;
    sens.J(5,30) = ROcp3_828;
    sens.J(5,31) = ROcp3_230;
    sens.J(5,32) = ROcp3_531;
    sens.J(6,4) = (1.0);
    sens.J(6,6) = S5;
    sens.J(6,24) = ROcp3_96;
    sens.J(6,25) = ROcp3_624;
    sens.J(6,26) = ROcp3_325;
    sens.J(6,27) = ROcp3_325;
    sens.J(6,28) = ROcp3_627;
    sens.J(6,29) = ROcp3_928;
    sens.J(6,30) = ROcp3_928;
    sens.J(6,31) = ROcp3_330;
    sens.J(6,32) = ROcp3_631;
    sens.A(1) = ACcp3_130;
    sens.A(2) = ACcp3_230;
    sens.A(3) = ACcp3_330;
    sens.OMP(1) = OPcp3_132;
    sens.OMP(2) = OPcp3_232;
    sens.OMP(3) = OPcp3_332;
 
% 
case 5, 


% = = Block_1_0_0_5_0_1 = = 
 
% Sensor Kinematics 


    ROcp4_45 = -S4*C5;
    ROcp4_55 = C4*C5;
    ROcp4_75 = S4*S5;
    ROcp4_85 = -C4*S5;
    ROcp4_16 = -(ROcp4_75*S6-C4*C6);
    ROcp4_26 = -(ROcp4_85*S6-S4*C6);
    ROcp4_36 = -C5*S6;
    ROcp4_76 = ROcp4_75*C6+C4*S6;
    ROcp4_86 = ROcp4_85*C6+S4*S6;
    ROcp4_96 = C5*C6;
    OMcp4_15 = qd(5)*C4;
    OMcp4_25 = qd(5)*S4;
    OMcp4_16 = OMcp4_15+ROcp4_45*qd(6);
    OMcp4_26 = OMcp4_25+ROcp4_55*qd(6);
    OMcp4_36 = qd(4)+qd(6)*S5;
    OPcp4_16 = ROcp4_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp4_25*S5-ROcp4_55*qd(4));
    OPcp4_26 = ROcp4_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp4_15*S5-ROcp4_45*qd(4));
    OPcp4_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_5_0_9 = = 
 
% Sensor Kinematics 


    ROcp4_134 = ROcp4_16*C34+ROcp4_45*S34;
    ROcp4_234 = ROcp4_26*C34+ROcp4_55*S34;
    ROcp4_334 = ROcp4_36*C34+S34*S5;
    ROcp4_434 = -(ROcp4_16*S34-ROcp4_45*C34);
    ROcp4_534 = -(ROcp4_26*S34-ROcp4_55*C34);
    ROcp4_634 = -(ROcp4_36*S34-C34*S5);
    ROcp4_135 = ROcp4_134*C35-ROcp4_76*S35;
    ROcp4_235 = ROcp4_234*C35-ROcp4_86*S35;
    ROcp4_335 = ROcp4_334*C35-ROcp4_96*S35;
    ROcp4_735 = ROcp4_134*S35+ROcp4_76*C35;
    ROcp4_835 = ROcp4_234*S35+ROcp4_86*C35;
    ROcp4_935 = ROcp4_334*S35+ROcp4_96*C35;
    ROcp4_436 = ROcp4_434*C36+ROcp4_735*S36;
    ROcp4_536 = ROcp4_534*C36+ROcp4_835*S36;
    ROcp4_636 = ROcp4_634*C36+ROcp4_935*S36;
    ROcp4_736 = -(ROcp4_434*S36-ROcp4_735*C36);
    ROcp4_836 = -(ROcp4_534*S36-ROcp4_835*C36);
    ROcp4_936 = -(ROcp4_634*S36-ROcp4_935*C36);
    ROcp4_437 = ROcp4_436*C37+ROcp4_736*S37;
    ROcp4_537 = ROcp4_536*C37+ROcp4_836*S37;
    ROcp4_637 = ROcp4_636*C37+ROcp4_936*S37;
    ROcp4_737 = -(ROcp4_436*S37-ROcp4_736*C37);
    ROcp4_837 = -(ROcp4_536*S37-ROcp4_836*C37);
    ROcp4_937 = -(ROcp4_636*S37-ROcp4_936*C37);
    ROcp4_138 = ROcp4_135*C38-ROcp4_737*S38;
    ROcp4_238 = ROcp4_235*C38-ROcp4_837*S38;
    ROcp4_338 = ROcp4_335*C38-ROcp4_937*S38;
    ROcp4_738 = ROcp4_135*S38+ROcp4_737*C38;
    ROcp4_838 = ROcp4_235*S38+ROcp4_837*C38;
    ROcp4_938 = ROcp4_335*S38+ROcp4_937*C38;
    ROcp4_139 = ROcp4_138*C39+ROcp4_437*S39;
    ROcp4_239 = ROcp4_238*C39+ROcp4_537*S39;
    ROcp4_339 = ROcp4_338*C39+ROcp4_637*S39;
    ROcp4_439 = -(ROcp4_138*S39-ROcp4_437*C39);
    ROcp4_539 = -(ROcp4_238*S39-ROcp4_537*C39);
    ROcp4_639 = -(ROcp4_338*S39-ROcp4_637*C39);
    ROcp4_140 = ROcp4_139*C40+ROcp4_439*S40;
    ROcp4_240 = ROcp4_239*C40+ROcp4_539*S40;
    ROcp4_340 = ROcp4_339*C40+ROcp4_639*S40;
    ROcp4_440 = -(ROcp4_139*S40-ROcp4_439*C40);
    ROcp4_540 = -(ROcp4_239*S40-ROcp4_539*C40);
    ROcp4_640 = -(ROcp4_339*S40-ROcp4_639*C40);
    ROcp4_441 = ROcp4_440*C41+ROcp4_738*S41;
    ROcp4_541 = ROcp4_540*C41+ROcp4_838*S41;
    ROcp4_641 = ROcp4_640*C41+ROcp4_938*S41;
    ROcp4_741 = -(ROcp4_440*S41-ROcp4_738*C41);
    ROcp4_841 = -(ROcp4_540*S41-ROcp4_838*C41);
    ROcp4_941 = -(ROcp4_640*S41-ROcp4_938*C41);
    ROcp4_142 = ROcp4_140*C42-ROcp4_741*S42;
    ROcp4_242 = ROcp4_240*C42-ROcp4_841*S42;
    ROcp4_342 = ROcp4_340*C42-ROcp4_941*S42;
    ROcp4_742 = ROcp4_140*S42+ROcp4_741*C42;
    ROcp4_842 = ROcp4_240*S42+ROcp4_841*C42;
    ROcp4_942 = ROcp4_340*S42+ROcp4_941*C42;
    RLcp4_134 = ROcp4_16*s.dpt(1,10)+ROcp4_45*s.dpt(2,10)+ROcp4_76*s.dpt(3,10);
    RLcp4_234 = ROcp4_26*s.dpt(1,10)+ROcp4_55*s.dpt(2,10)+ROcp4_86*s.dpt(3,10);
    RLcp4_334 = ROcp4_36*s.dpt(1,10)+ROcp4_96*s.dpt(3,10)+s.dpt(2,10)*S5;
    OMcp4_134 = OMcp4_16+ROcp4_76*qd(34);
    OMcp4_234 = OMcp4_26+ROcp4_86*qd(34);
    OMcp4_334 = OMcp4_36+ROcp4_96*qd(34);
    ORcp4_134 = OMcp4_26*RLcp4_334-OMcp4_36*RLcp4_234;
    ORcp4_234 = -(OMcp4_16*RLcp4_334-OMcp4_36*RLcp4_134);
    ORcp4_334 = OMcp4_16*RLcp4_234-OMcp4_26*RLcp4_134;
    OMcp4_135 = OMcp4_134+ROcp4_434*qd(35);
    OMcp4_235 = OMcp4_234+ROcp4_534*qd(35);
    OMcp4_335 = OMcp4_334+ROcp4_634*qd(35);
    OMcp4_136 = OMcp4_135+ROcp4_135*qd(36);
    OMcp4_236 = OMcp4_235+ROcp4_235*qd(36);
    OMcp4_336 = OMcp4_335+ROcp4_335*qd(36);
    OPcp4_136 = OPcp4_16+ROcp4_135*qdd(36)+ROcp4_434*qdd(35)+ROcp4_76*qdd(34)+qd(34)*(OMcp4_26*ROcp4_96-OMcp4_36*ROcp4_86)+qd(35)*(OMcp4_234*...
 ROcp4_634-OMcp4_334*ROcp4_534)+qd(36)*(OMcp4_235*ROcp4_335-OMcp4_335*ROcp4_235);
    OPcp4_236 = OPcp4_26+ROcp4_235*qdd(36)+ROcp4_534*qdd(35)+ROcp4_86*qdd(34)-qd(34)*(OMcp4_16*ROcp4_96-OMcp4_36*ROcp4_76)-qd(35)*(OMcp4_134*...
 ROcp4_634-OMcp4_334*ROcp4_434)-qd(36)*(OMcp4_135*ROcp4_335-OMcp4_335*ROcp4_135);
    OPcp4_336 = OPcp4_36+ROcp4_335*qdd(36)+ROcp4_634*qdd(35)+ROcp4_96*qdd(34)+qd(34)*(OMcp4_16*ROcp4_86-OMcp4_26*ROcp4_76)+qd(35)*(OMcp4_134*...
 ROcp4_534-OMcp4_234*ROcp4_434)+qd(36)*(OMcp4_135*ROcp4_235-OMcp4_235*ROcp4_135);
    RLcp4_137 = ROcp4_436*s.dpt(2,46);
    RLcp4_237 = ROcp4_536*s.dpt(2,46);
    RLcp4_337 = ROcp4_636*s.dpt(2,46);
    OMcp4_137 = OMcp4_136+ROcp4_135*qd(37);
    OMcp4_237 = OMcp4_236+ROcp4_235*qd(37);
    OMcp4_337 = OMcp4_336+ROcp4_335*qd(37);
    ORcp4_137 = OMcp4_236*RLcp4_337-OMcp4_336*RLcp4_237;
    ORcp4_237 = -(OMcp4_136*RLcp4_337-OMcp4_336*RLcp4_137);
    ORcp4_337 = OMcp4_136*RLcp4_237-OMcp4_236*RLcp4_137;
    OMcp4_138 = OMcp4_137+ROcp4_437*qd(38);
    OMcp4_238 = OMcp4_237+ROcp4_537*qd(38);
    OMcp4_338 = OMcp4_337+ROcp4_637*qd(38);
    OMcp4_139 = OMcp4_138+ROcp4_738*qd(39);
    OMcp4_239 = OMcp4_238+ROcp4_838*qd(39);
    OMcp4_339 = OMcp4_338+ROcp4_938*qd(39);
    OPcp4_139 = OPcp4_136+ROcp4_135*qdd(37)+ROcp4_437*qdd(38)+ROcp4_738*qdd(39)+qd(37)*(OMcp4_236*ROcp4_335-OMcp4_336*ROcp4_235)+qd(38)*(OMcp4_237*...
 ROcp4_637-OMcp4_337*ROcp4_537)+qd(39)*(OMcp4_238*ROcp4_938-OMcp4_338*ROcp4_838);
    OPcp4_239 = OPcp4_236+ROcp4_235*qdd(37)+ROcp4_537*qdd(38)+ROcp4_838*qdd(39)-qd(37)*(OMcp4_136*ROcp4_335-OMcp4_336*ROcp4_135)-qd(38)*(OMcp4_137*...
 ROcp4_637-OMcp4_337*ROcp4_437)-qd(39)*(OMcp4_138*ROcp4_938-OMcp4_338*ROcp4_738);
    OPcp4_339 = OPcp4_336+ROcp4_335*qdd(37)+ROcp4_637*qdd(38)+ROcp4_938*qdd(39)+qd(37)*(OMcp4_136*ROcp4_235-OMcp4_236*ROcp4_135)+qd(38)*(OMcp4_137*...
 ROcp4_537-OMcp4_237*ROcp4_437)+qd(39)*(OMcp4_138*ROcp4_838-OMcp4_238*ROcp4_738);
    RLcp4_140 = ROcp4_139*s.dpt(1,47)+ROcp4_439*s.dpt(2,47)+ROcp4_738*s.dpt(3,47);
    RLcp4_240 = ROcp4_239*s.dpt(1,47)+ROcp4_539*s.dpt(2,47)+ROcp4_838*s.dpt(3,47);
    RLcp4_340 = ROcp4_339*s.dpt(1,47)+ROcp4_639*s.dpt(2,47)+ROcp4_938*s.dpt(3,47);
    POcp4_140 = RLcp4_134+RLcp4_137+RLcp4_140+q(1);
    POcp4_240 = RLcp4_234+RLcp4_237+RLcp4_240+q(2);
    POcp4_340 = RLcp4_334+RLcp4_337+RLcp4_340+q(3);
    JTcp4_140_4 = -(RLcp4_234+RLcp4_237+RLcp4_240);
    JTcp4_240_4 = RLcp4_134+RLcp4_137+RLcp4_140;
    JTcp4_140_5 = S4*(RLcp4_334+RLcp4_337+RLcp4_340);
    JTcp4_240_5 = -C4*(RLcp4_334+RLcp4_337+RLcp4_340);
    JTcp4_340_5 = C4*(RLcp4_234+RLcp4_237)-S4*(RLcp4_134+RLcp4_137)-RLcp4_140*S4+RLcp4_240*C4;
    JTcp4_140_6 = ROcp4_55*(RLcp4_334+RLcp4_337)-S5*(RLcp4_234+RLcp4_237)-RLcp4_240*S5+RLcp4_340*ROcp4_55;
    JTcp4_240_6 = RLcp4_140*S5-RLcp4_340*ROcp4_45-ROcp4_45*(RLcp4_334+RLcp4_337)+S5*(RLcp4_134+RLcp4_137);
    JTcp4_340_6 = ROcp4_45*(RLcp4_234+RLcp4_237)-ROcp4_55*(RLcp4_134+RLcp4_137)-RLcp4_140*ROcp4_55+RLcp4_240*ROcp4_45;
    JTcp4_140_7 = ROcp4_86*(RLcp4_337+RLcp4_340)-ROcp4_96*(RLcp4_237+RLcp4_240);
    JTcp4_240_7 = -(ROcp4_76*(RLcp4_337+RLcp4_340)-ROcp4_96*(RLcp4_137+RLcp4_140));
    JTcp4_340_7 = ROcp4_76*(RLcp4_237+RLcp4_240)-ROcp4_86*(RLcp4_137+RLcp4_140);
    JTcp4_140_8 = ROcp4_534*(RLcp4_337+RLcp4_340)-ROcp4_634*(RLcp4_237+RLcp4_240);
    JTcp4_240_8 = -(ROcp4_434*(RLcp4_337+RLcp4_340)-ROcp4_634*(RLcp4_137+RLcp4_140));
    JTcp4_340_8 = ROcp4_434*(RLcp4_237+RLcp4_240)-ROcp4_534*(RLcp4_137+RLcp4_140);
    JTcp4_140_9 = ROcp4_235*(RLcp4_337+RLcp4_340)-ROcp4_335*(RLcp4_237+RLcp4_240);
    JTcp4_240_9 = -(ROcp4_135*(RLcp4_337+RLcp4_340)-ROcp4_335*(RLcp4_137+RLcp4_140));
    JTcp4_340_9 = ROcp4_135*(RLcp4_237+RLcp4_240)-ROcp4_235*(RLcp4_137+RLcp4_140);
    JTcp4_140_10 = -(RLcp4_240*ROcp4_335-RLcp4_340*ROcp4_235);
    JTcp4_240_10 = RLcp4_140*ROcp4_335-RLcp4_340*ROcp4_135;
    JTcp4_340_10 = -(RLcp4_140*ROcp4_235-RLcp4_240*ROcp4_135);
    JTcp4_140_11 = -(RLcp4_240*ROcp4_637-RLcp4_340*ROcp4_537);
    JTcp4_240_11 = RLcp4_140*ROcp4_637-RLcp4_340*ROcp4_437;
    JTcp4_340_11 = -(RLcp4_140*ROcp4_537-RLcp4_240*ROcp4_437);
    JTcp4_140_12 = -(RLcp4_240*ROcp4_938-RLcp4_340*ROcp4_838);
    JTcp4_240_12 = RLcp4_140*ROcp4_938-RLcp4_340*ROcp4_738;
    JTcp4_340_12 = -(RLcp4_140*ROcp4_838-RLcp4_240*ROcp4_738);
    OMcp4_140 = OMcp4_139+ROcp4_738*qd(40);
    OMcp4_240 = OMcp4_239+ROcp4_838*qd(40);
    OMcp4_340 = OMcp4_339+ROcp4_938*qd(40);
    ORcp4_140 = OMcp4_239*RLcp4_340-OMcp4_339*RLcp4_240;
    ORcp4_240 = -(OMcp4_139*RLcp4_340-OMcp4_339*RLcp4_140);
    ORcp4_340 = OMcp4_139*RLcp4_240-OMcp4_239*RLcp4_140;
    VIcp4_140 = ORcp4_134+ORcp4_137+ORcp4_140+qd(1);
    VIcp4_240 = ORcp4_234+ORcp4_237+ORcp4_240+qd(2);
    VIcp4_340 = ORcp4_334+ORcp4_337+ORcp4_340+qd(3);
    ACcp4_140 = qdd(1)+OMcp4_236*ORcp4_337+OMcp4_239*ORcp4_340+OMcp4_26*ORcp4_334-OMcp4_336*ORcp4_237-OMcp4_339*ORcp4_240-OMcp4_36*ORcp4_234+...
 OPcp4_236*RLcp4_337+OPcp4_239*RLcp4_340+OPcp4_26*RLcp4_334-OPcp4_336*RLcp4_237-OPcp4_339*RLcp4_240-OPcp4_36*RLcp4_234;
    ACcp4_240 = qdd(2)-OMcp4_136*ORcp4_337-OMcp4_139*ORcp4_340-OMcp4_16*ORcp4_334+OMcp4_336*ORcp4_137+OMcp4_339*ORcp4_140+OMcp4_36*ORcp4_134-...
 OPcp4_136*RLcp4_337-OPcp4_139*RLcp4_340-OPcp4_16*RLcp4_334+OPcp4_336*RLcp4_137+OPcp4_339*RLcp4_140+OPcp4_36*RLcp4_134;
    ACcp4_340 = qdd(3)+OMcp4_136*ORcp4_237+OMcp4_139*ORcp4_240+OMcp4_16*ORcp4_234-OMcp4_236*ORcp4_137-OMcp4_239*ORcp4_140-OMcp4_26*ORcp4_134+...
 OPcp4_136*RLcp4_237+OPcp4_139*RLcp4_240+OPcp4_16*RLcp4_234-OPcp4_236*RLcp4_137-OPcp4_239*RLcp4_140-OPcp4_26*RLcp4_134;
    OMcp4_141 = OMcp4_140+ROcp4_140*qd(41);
    OMcp4_241 = OMcp4_240+ROcp4_240*qd(41);
    OMcp4_341 = OMcp4_340+ROcp4_340*qd(41);
    OMcp4_142 = OMcp4_141+ROcp4_441*qd(42);
    OMcp4_242 = OMcp4_241+ROcp4_541*qd(42);
    OMcp4_342 = OMcp4_341+ROcp4_641*qd(42);
    OPcp4_142 = OPcp4_139+ROcp4_140*qdd(41)+ROcp4_441*qdd(42)+ROcp4_738*qdd(40)+qd(40)*(OMcp4_239*ROcp4_938-OMcp4_339*ROcp4_838)+qd(41)*(OMcp4_240*...
 ROcp4_340-OMcp4_340*ROcp4_240)+qd(42)*(OMcp4_241*ROcp4_641-OMcp4_341*ROcp4_541);
    OPcp4_242 = OPcp4_239+ROcp4_240*qdd(41)+ROcp4_541*qdd(42)+ROcp4_838*qdd(40)-qd(40)*(OMcp4_139*ROcp4_938-OMcp4_339*ROcp4_738)-qd(41)*(OMcp4_140*...
 ROcp4_340-OMcp4_340*ROcp4_140)-qd(42)*(OMcp4_141*ROcp4_641-OMcp4_341*ROcp4_441);
    OPcp4_342 = OPcp4_339+ROcp4_340*qdd(41)+ROcp4_641*qdd(42)+ROcp4_938*qdd(40)+qd(40)*(OMcp4_139*ROcp4_838-OMcp4_239*ROcp4_738)+qd(41)*(OMcp4_140*...
 ROcp4_240-OMcp4_240*ROcp4_140)+qd(42)*(OMcp4_141*ROcp4_541-OMcp4_241*ROcp4_441);

% = = Block_1_0_0_5_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp4_140;
    sens.P(2) = POcp4_240;
    sens.P(3) = POcp4_340;
    sens.R(1,1) = ROcp4_142;
    sens.R(1,2) = ROcp4_242;
    sens.R(1,3) = ROcp4_342;
    sens.R(2,1) = ROcp4_441;
    sens.R(2,2) = ROcp4_541;
    sens.R(2,3) = ROcp4_641;
    sens.R(3,1) = ROcp4_742;
    sens.R(3,2) = ROcp4_842;
    sens.R(3,3) = ROcp4_942;
    sens.V(1) = VIcp4_140;
    sens.V(2) = VIcp4_240;
    sens.V(3) = VIcp4_340;
    sens.OM(1) = OMcp4_142;
    sens.OM(2) = OMcp4_242;
    sens.OM(3) = OMcp4_342;
    sens.J(1,1) = (1.0);
    sens.J(1,4) = JTcp4_140_4;
    sens.J(1,5) = JTcp4_140_5;
    sens.J(1,6) = JTcp4_140_6;
    sens.J(1,34) = JTcp4_140_7;
    sens.J(1,35) = JTcp4_140_8;
    sens.J(1,36) = JTcp4_140_9;
    sens.J(1,37) = JTcp4_140_10;
    sens.J(1,38) = JTcp4_140_11;
    sens.J(1,39) = JTcp4_140_12;
    sens.J(2,2) = (1.0);
    sens.J(2,4) = JTcp4_240_4;
    sens.J(2,5) = JTcp4_240_5;
    sens.J(2,6) = JTcp4_240_6;
    sens.J(2,34) = JTcp4_240_7;
    sens.J(2,35) = JTcp4_240_8;
    sens.J(2,36) = JTcp4_240_9;
    sens.J(2,37) = JTcp4_240_10;
    sens.J(2,38) = JTcp4_240_11;
    sens.J(2,39) = JTcp4_240_12;
    sens.J(3,3) = (1.0);
    sens.J(3,5) = JTcp4_340_5;
    sens.J(3,6) = JTcp4_340_6;
    sens.J(3,34) = JTcp4_340_7;
    sens.J(3,35) = JTcp4_340_8;
    sens.J(3,36) = JTcp4_340_9;
    sens.J(3,37) = JTcp4_340_10;
    sens.J(3,38) = JTcp4_340_11;
    sens.J(3,39) = JTcp4_340_12;
    sens.J(4,5) = C4;
    sens.J(4,6) = ROcp4_45;
    sens.J(4,34) = ROcp4_76;
    sens.J(4,35) = ROcp4_434;
    sens.J(4,36) = ROcp4_135;
    sens.J(4,37) = ROcp4_135;
    sens.J(4,38) = ROcp4_437;
    sens.J(4,39) = ROcp4_738;
    sens.J(4,40) = ROcp4_738;
    sens.J(4,41) = ROcp4_140;
    sens.J(4,42) = ROcp4_441;
    sens.J(5,5) = S4;
    sens.J(5,6) = ROcp4_55;
    sens.J(5,34) = ROcp4_86;
    sens.J(5,35) = ROcp4_534;
    sens.J(5,36) = ROcp4_235;
    sens.J(5,37) = ROcp4_235;
    sens.J(5,38) = ROcp4_537;
    sens.J(5,39) = ROcp4_838;
    sens.J(5,40) = ROcp4_838;
    sens.J(5,41) = ROcp4_240;
    sens.J(5,42) = ROcp4_541;
    sens.J(6,4) = (1.0);
    sens.J(6,6) = S5;
    sens.J(6,34) = ROcp4_96;
    sens.J(6,35) = ROcp4_634;
    sens.J(6,36) = ROcp4_335;
    sens.J(6,37) = ROcp4_335;
    sens.J(6,38) = ROcp4_637;
    sens.J(6,39) = ROcp4_938;
    sens.J(6,40) = ROcp4_938;
    sens.J(6,41) = ROcp4_340;
    sens.J(6,42) = ROcp4_641;
    sens.A(1) = ACcp4_140;
    sens.A(2) = ACcp4_240;
    sens.A(3) = ACcp4_340;
    sens.OMP(1) = OPcp4_142;
    sens.OMP(2) = OPcp4_242;
    sens.OMP(3) = OPcp4_342;
 
% 
case 6, 


% = = Block_1_0_0_6_0_1 = = 
 
% Sensor Kinematics 


    ROcp5_45 = -S4*C5;
    ROcp5_55 = C4*C5;
    ROcp5_75 = S4*S5;
    ROcp5_85 = -C4*S5;
    ROcp5_16 = -(ROcp5_75*S6-C4*C6);
    ROcp5_26 = -(ROcp5_85*S6-S4*C6);
    ROcp5_36 = -C5*S6;
    ROcp5_76 = ROcp5_75*C6+C4*S6;
    ROcp5_86 = ROcp5_85*C6+S4*S6;
    ROcp5_96 = C5*C6;
    OMcp5_15 = qd(5)*C4;
    OMcp5_25 = qd(5)*S4;
    OMcp5_16 = OMcp5_15+ROcp5_45*qd(6);
    OMcp5_26 = OMcp5_25+ROcp5_55*qd(6);
    OMcp5_36 = qd(4)+qd(6)*S5;
    OPcp5_16 = ROcp5_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp5_25*S5-ROcp5_55*qd(4));
    OPcp5_26 = ROcp5_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp5_15*S5-ROcp5_45*qd(4));
    OPcp5_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_6_0_12 = = 
 
% Sensor Kinematics 


    ROcp5_147 = ROcp5_16*C47+ROcp5_45*S47;
    ROcp5_247 = ROcp5_26*C47+ROcp5_55*S47;
    ROcp5_347 = ROcp5_36*C47+S47*S5;
    ROcp5_447 = -(ROcp5_16*S47-ROcp5_45*C47);
    ROcp5_547 = -(ROcp5_26*S47-ROcp5_55*C47);
    ROcp5_647 = -(ROcp5_36*S47-C47*S5);
    ROcp5_148 = ROcp5_147*C48-ROcp5_76*S48;
    ROcp5_248 = ROcp5_247*C48-ROcp5_86*S48;
    ROcp5_348 = ROcp5_347*C48-ROcp5_96*S48;
    ROcp5_748 = ROcp5_147*S48+ROcp5_76*C48;
    ROcp5_848 = ROcp5_247*S48+ROcp5_86*C48;
    ROcp5_948 = ROcp5_347*S48+ROcp5_96*C48;
    ROcp5_449 = ROcp5_447*C49+ROcp5_748*S49;
    ROcp5_549 = ROcp5_547*C49+ROcp5_848*S49;
    ROcp5_649 = ROcp5_647*C49+ROcp5_948*S49;
    ROcp5_749 = -(ROcp5_447*S49-ROcp5_748*C49);
    ROcp5_849 = -(ROcp5_547*S49-ROcp5_848*C49);
    ROcp5_949 = -(ROcp5_647*S49-ROcp5_948*C49);
    ROcp5_450 = ROcp5_449*C50+ROcp5_749*S50;
    ROcp5_550 = ROcp5_549*C50+ROcp5_849*S50;
    ROcp5_650 = ROcp5_649*C50+ROcp5_949*S50;
    ROcp5_750 = -(ROcp5_449*S50-ROcp5_749*C50);
    ROcp5_850 = -(ROcp5_549*S50-ROcp5_849*C50);
    ROcp5_950 = -(ROcp5_649*S50-ROcp5_949*C50);
    ROcp5_151 = ROcp5_148*C51-ROcp5_750*S51;
    ROcp5_251 = ROcp5_248*C51-ROcp5_850*S51;
    ROcp5_351 = ROcp5_348*C51-ROcp5_950*S51;
    ROcp5_751 = ROcp5_148*S51+ROcp5_750*C51;
    ROcp5_851 = ROcp5_248*S51+ROcp5_850*C51;
    ROcp5_951 = ROcp5_348*S51+ROcp5_950*C51;
    ROcp5_152 = ROcp5_151*C52+ROcp5_450*S52;
    ROcp5_252 = ROcp5_251*C52+ROcp5_550*S52;
    ROcp5_352 = ROcp5_351*C52+ROcp5_650*S52;
    ROcp5_452 = -(ROcp5_151*S52-ROcp5_450*C52);
    ROcp5_552 = -(ROcp5_251*S52-ROcp5_550*C52);
    ROcp5_652 = -(ROcp5_351*S52-ROcp5_650*C52);
    ROcp5_153 = ROcp5_152*C53+ROcp5_452*S53;
    ROcp5_253 = ROcp5_252*C53+ROcp5_552*S53;
    ROcp5_353 = ROcp5_352*C53+ROcp5_652*S53;
    ROcp5_453 = -(ROcp5_152*S53-ROcp5_452*C53);
    ROcp5_553 = -(ROcp5_252*S53-ROcp5_552*C53);
    ROcp5_653 = -(ROcp5_352*S53-ROcp5_652*C53);
    ROcp5_454 = ROcp5_453*C54+ROcp5_751*S54;
    ROcp5_554 = ROcp5_553*C54+ROcp5_851*S54;
    ROcp5_654 = ROcp5_653*C54+ROcp5_951*S54;
    ROcp5_754 = -(ROcp5_453*S54-ROcp5_751*C54);
    ROcp5_854 = -(ROcp5_553*S54-ROcp5_851*C54);
    ROcp5_954 = -(ROcp5_653*S54-ROcp5_951*C54);
    ROcp5_155 = ROcp5_153*C55-ROcp5_754*S55;
    ROcp5_255 = ROcp5_253*C55-ROcp5_854*S55;
    ROcp5_355 = ROcp5_353*C55-ROcp5_954*S55;
    ROcp5_755 = ROcp5_153*S55+ROcp5_754*C55;
    ROcp5_855 = ROcp5_253*S55+ROcp5_854*C55;
    ROcp5_955 = ROcp5_353*S55+ROcp5_954*C55;
    RLcp5_147 = ROcp5_16*s.dpt(1,15)+ROcp5_45*s.dpt(2,15)+ROcp5_76*s.dpt(3,15);
    RLcp5_247 = ROcp5_26*s.dpt(1,15)+ROcp5_55*s.dpt(2,15)+ROcp5_86*s.dpt(3,15);
    RLcp5_347 = ROcp5_36*s.dpt(1,15)+ROcp5_96*s.dpt(3,15)+s.dpt(2,15)*S5;
    OMcp5_147 = OMcp5_16+ROcp5_76*qd(47);
    OMcp5_247 = OMcp5_26+ROcp5_86*qd(47);
    OMcp5_347 = OMcp5_36+ROcp5_96*qd(47);
    ORcp5_147 = OMcp5_26*RLcp5_347-OMcp5_36*RLcp5_247;
    ORcp5_247 = -(OMcp5_16*RLcp5_347-OMcp5_36*RLcp5_147);
    ORcp5_347 = OMcp5_16*RLcp5_247-OMcp5_26*RLcp5_147;
    OMcp5_148 = OMcp5_147+ROcp5_447*qd(48);
    OMcp5_248 = OMcp5_247+ROcp5_547*qd(48);
    OMcp5_348 = OMcp5_347+ROcp5_647*qd(48);
    OMcp5_149 = OMcp5_148+ROcp5_148*qd(49);
    OMcp5_249 = OMcp5_248+ROcp5_248*qd(49);
    OMcp5_349 = OMcp5_348+ROcp5_348*qd(49);
    OPcp5_149 = OPcp5_16+ROcp5_148*qdd(49)+ROcp5_447*qdd(48)+ROcp5_76*qdd(47)+qd(47)*(OMcp5_26*ROcp5_96-OMcp5_36*ROcp5_86)+qd(48)*(OMcp5_247*...
 ROcp5_647-OMcp5_347*ROcp5_547)+qd(49)*(OMcp5_248*ROcp5_348-OMcp5_348*ROcp5_248);
    OPcp5_249 = OPcp5_26+ROcp5_248*qdd(49)+ROcp5_547*qdd(48)+ROcp5_86*qdd(47)-qd(47)*(OMcp5_16*ROcp5_96-OMcp5_36*ROcp5_76)-qd(48)*(OMcp5_147*...
 ROcp5_647-OMcp5_347*ROcp5_447)-qd(49)*(OMcp5_148*ROcp5_348-OMcp5_348*ROcp5_148);
    OPcp5_349 = OPcp5_36+ROcp5_348*qdd(49)+ROcp5_647*qdd(48)+ROcp5_96*qdd(47)+qd(47)*(OMcp5_16*ROcp5_86-OMcp5_26*ROcp5_76)+qd(48)*(OMcp5_147*...
 ROcp5_547-OMcp5_247*ROcp5_447)+qd(49)*(OMcp5_148*ROcp5_248-OMcp5_248*ROcp5_148);
    RLcp5_150 = ROcp5_449*s.dpt(2,56);
    RLcp5_250 = ROcp5_549*s.dpt(2,56);
    RLcp5_350 = ROcp5_649*s.dpt(2,56);
    OMcp5_150 = OMcp5_149+ROcp5_148*qd(50);
    OMcp5_250 = OMcp5_249+ROcp5_248*qd(50);
    OMcp5_350 = OMcp5_349+ROcp5_348*qd(50);
    ORcp5_150 = OMcp5_249*RLcp5_350-OMcp5_349*RLcp5_250;
    ORcp5_250 = -(OMcp5_149*RLcp5_350-OMcp5_349*RLcp5_150);
    ORcp5_350 = OMcp5_149*RLcp5_250-OMcp5_249*RLcp5_150;
    OMcp5_151 = OMcp5_150+ROcp5_450*qd(51);
    OMcp5_251 = OMcp5_250+ROcp5_550*qd(51);
    OMcp5_351 = OMcp5_350+ROcp5_650*qd(51);
    OMcp5_152 = OMcp5_151+ROcp5_751*qd(52);
    OMcp5_252 = OMcp5_251+ROcp5_851*qd(52);
    OMcp5_352 = OMcp5_351+ROcp5_951*qd(52);
    OPcp5_152 = OPcp5_149+ROcp5_148*qdd(50)+ROcp5_450*qdd(51)+ROcp5_751*qdd(52)+qd(50)*(OMcp5_249*ROcp5_348-OMcp5_349*ROcp5_248)+qd(51)*(OMcp5_250*...
 ROcp5_650-OMcp5_350*ROcp5_550)+qd(52)*(OMcp5_251*ROcp5_951-OMcp5_351*ROcp5_851);
    OPcp5_252 = OPcp5_249+ROcp5_248*qdd(50)+ROcp5_550*qdd(51)+ROcp5_851*qdd(52)-qd(50)*(OMcp5_149*ROcp5_348-OMcp5_349*ROcp5_148)-qd(51)*(OMcp5_150*...
 ROcp5_650-OMcp5_350*ROcp5_450)-qd(52)*(OMcp5_151*ROcp5_951-OMcp5_351*ROcp5_751);
    OPcp5_352 = OPcp5_349+ROcp5_348*qdd(50)+ROcp5_650*qdd(51)+ROcp5_951*qdd(52)+qd(50)*(OMcp5_149*ROcp5_248-OMcp5_249*ROcp5_148)+qd(51)*(OMcp5_150*...
 ROcp5_550-OMcp5_250*ROcp5_450)+qd(52)*(OMcp5_151*ROcp5_851-OMcp5_251*ROcp5_751);
    RLcp5_153 = ROcp5_152*s.dpt(1,57)+ROcp5_452*s.dpt(2,57)+ROcp5_751*s.dpt(3,57);
    RLcp5_253 = ROcp5_252*s.dpt(1,57)+ROcp5_552*s.dpt(2,57)+ROcp5_851*s.dpt(3,57);
    RLcp5_353 = ROcp5_352*s.dpt(1,57)+ROcp5_652*s.dpt(2,57)+ROcp5_951*s.dpt(3,57);
    POcp5_153 = RLcp5_147+RLcp5_150+RLcp5_153+q(1);
    POcp5_253 = RLcp5_247+RLcp5_250+RLcp5_253+q(2);
    POcp5_353 = RLcp5_347+RLcp5_350+RLcp5_353+q(3);
    JTcp5_153_4 = -(RLcp5_247+RLcp5_250+RLcp5_253);
    JTcp5_253_4 = RLcp5_147+RLcp5_150+RLcp5_153;
    JTcp5_153_5 = S4*(RLcp5_347+RLcp5_350+RLcp5_353);
    JTcp5_253_5 = -C4*(RLcp5_347+RLcp5_350+RLcp5_353);
    JTcp5_353_5 = C4*(RLcp5_247+RLcp5_250)-S4*(RLcp5_147+RLcp5_150)-RLcp5_153*S4+RLcp5_253*C4;
    JTcp5_153_6 = ROcp5_55*(RLcp5_347+RLcp5_350)-S5*(RLcp5_247+RLcp5_250)-RLcp5_253*S5+RLcp5_353*ROcp5_55;
    JTcp5_253_6 = RLcp5_153*S5-RLcp5_353*ROcp5_45-ROcp5_45*(RLcp5_347+RLcp5_350)+S5*(RLcp5_147+RLcp5_150);
    JTcp5_353_6 = ROcp5_45*(RLcp5_247+RLcp5_250)-ROcp5_55*(RLcp5_147+RLcp5_150)-RLcp5_153*ROcp5_55+RLcp5_253*ROcp5_45;
    JTcp5_153_7 = ROcp5_86*(RLcp5_350+RLcp5_353)-ROcp5_96*(RLcp5_250+RLcp5_253);
    JTcp5_253_7 = -(ROcp5_76*(RLcp5_350+RLcp5_353)-ROcp5_96*(RLcp5_150+RLcp5_153));
    JTcp5_353_7 = ROcp5_76*(RLcp5_250+RLcp5_253)-ROcp5_86*(RLcp5_150+RLcp5_153);
    JTcp5_153_8 = ROcp5_547*(RLcp5_350+RLcp5_353)-ROcp5_647*(RLcp5_250+RLcp5_253);
    JTcp5_253_8 = -(ROcp5_447*(RLcp5_350+RLcp5_353)-ROcp5_647*(RLcp5_150+RLcp5_153));
    JTcp5_353_8 = ROcp5_447*(RLcp5_250+RLcp5_253)-ROcp5_547*(RLcp5_150+RLcp5_153);
    JTcp5_153_9 = ROcp5_248*(RLcp5_350+RLcp5_353)-ROcp5_348*(RLcp5_250+RLcp5_253);
    JTcp5_253_9 = -(ROcp5_148*(RLcp5_350+RLcp5_353)-ROcp5_348*(RLcp5_150+RLcp5_153));
    JTcp5_353_9 = ROcp5_148*(RLcp5_250+RLcp5_253)-ROcp5_248*(RLcp5_150+RLcp5_153);
    JTcp5_153_10 = -(RLcp5_253*ROcp5_348-RLcp5_353*ROcp5_248);
    JTcp5_253_10 = RLcp5_153*ROcp5_348-RLcp5_353*ROcp5_148;
    JTcp5_353_10 = -(RLcp5_153*ROcp5_248-RLcp5_253*ROcp5_148);
    JTcp5_153_11 = -(RLcp5_253*ROcp5_650-RLcp5_353*ROcp5_550);
    JTcp5_253_11 = RLcp5_153*ROcp5_650-RLcp5_353*ROcp5_450;
    JTcp5_353_11 = -(RLcp5_153*ROcp5_550-RLcp5_253*ROcp5_450);
    JTcp5_153_12 = -(RLcp5_253*ROcp5_951-RLcp5_353*ROcp5_851);
    JTcp5_253_12 = RLcp5_153*ROcp5_951-RLcp5_353*ROcp5_751;
    JTcp5_353_12 = -(RLcp5_153*ROcp5_851-RLcp5_253*ROcp5_751);
    OMcp5_153 = OMcp5_152+ROcp5_751*qd(53);
    OMcp5_253 = OMcp5_252+ROcp5_851*qd(53);
    OMcp5_353 = OMcp5_352+ROcp5_951*qd(53);
    ORcp5_153 = OMcp5_252*RLcp5_353-OMcp5_352*RLcp5_253;
    ORcp5_253 = -(OMcp5_152*RLcp5_353-OMcp5_352*RLcp5_153);
    ORcp5_353 = OMcp5_152*RLcp5_253-OMcp5_252*RLcp5_153;
    VIcp5_153 = ORcp5_147+ORcp5_150+ORcp5_153+qd(1);
    VIcp5_253 = ORcp5_247+ORcp5_250+ORcp5_253+qd(2);
    VIcp5_353 = ORcp5_347+ORcp5_350+ORcp5_353+qd(3);
    ACcp5_153 = qdd(1)+OMcp5_249*ORcp5_350+OMcp5_252*ORcp5_353+OMcp5_26*ORcp5_347-OMcp5_349*ORcp5_250-OMcp5_352*ORcp5_253-OMcp5_36*ORcp5_247+...
 OPcp5_249*RLcp5_350+OPcp5_252*RLcp5_353+OPcp5_26*RLcp5_347-OPcp5_349*RLcp5_250-OPcp5_352*RLcp5_253-OPcp5_36*RLcp5_247;
    ACcp5_253 = qdd(2)-OMcp5_149*ORcp5_350-OMcp5_152*ORcp5_353-OMcp5_16*ORcp5_347+OMcp5_349*ORcp5_150+OMcp5_352*ORcp5_153+OMcp5_36*ORcp5_147-...
 OPcp5_149*RLcp5_350-OPcp5_152*RLcp5_353-OPcp5_16*RLcp5_347+OPcp5_349*RLcp5_150+OPcp5_352*RLcp5_153+OPcp5_36*RLcp5_147;
    ACcp5_353 = qdd(3)+OMcp5_149*ORcp5_250+OMcp5_152*ORcp5_253+OMcp5_16*ORcp5_247-OMcp5_249*ORcp5_150-OMcp5_252*ORcp5_153-OMcp5_26*ORcp5_147+...
 OPcp5_149*RLcp5_250+OPcp5_152*RLcp5_253+OPcp5_16*RLcp5_247-OPcp5_249*RLcp5_150-OPcp5_252*RLcp5_153-OPcp5_26*RLcp5_147;
    OMcp5_154 = OMcp5_153+ROcp5_153*qd(54);
    OMcp5_254 = OMcp5_253+ROcp5_253*qd(54);
    OMcp5_354 = OMcp5_353+ROcp5_353*qd(54);
    OMcp5_155 = OMcp5_154+ROcp5_454*qd(55);
    OMcp5_255 = OMcp5_254+ROcp5_554*qd(55);
    OMcp5_355 = OMcp5_354+ROcp5_654*qd(55);
    OPcp5_155 = OPcp5_152+ROcp5_153*qdd(54)+ROcp5_454*qdd(55)+ROcp5_751*qdd(53)+qd(53)*(OMcp5_252*ROcp5_951-OMcp5_352*ROcp5_851)+qd(54)*(OMcp5_253*...
 ROcp5_353-OMcp5_353*ROcp5_253)+qd(55)*(OMcp5_254*ROcp5_654-OMcp5_354*ROcp5_554);
    OPcp5_255 = OPcp5_252+ROcp5_253*qdd(54)+ROcp5_554*qdd(55)+ROcp5_851*qdd(53)-qd(53)*(OMcp5_152*ROcp5_951-OMcp5_352*ROcp5_751)-qd(54)*(OMcp5_153*...
 ROcp5_353-OMcp5_353*ROcp5_153)-qd(55)*(OMcp5_154*ROcp5_654-OMcp5_354*ROcp5_454);
    OPcp5_355 = OPcp5_352+ROcp5_353*qdd(54)+ROcp5_654*qdd(55)+ROcp5_951*qdd(53)+qd(53)*(OMcp5_152*ROcp5_851-OMcp5_252*ROcp5_751)+qd(54)*(OMcp5_153*...
 ROcp5_253-OMcp5_253*ROcp5_153)+qd(55)*(OMcp5_154*ROcp5_554-OMcp5_254*ROcp5_454);

% = = Block_1_0_0_6_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp5_153;
    sens.P(2) = POcp5_253;
    sens.P(3) = POcp5_353;
    sens.R(1,1) = ROcp5_155;
    sens.R(1,2) = ROcp5_255;
    sens.R(1,3) = ROcp5_355;
    sens.R(2,1) = ROcp5_454;
    sens.R(2,2) = ROcp5_554;
    sens.R(2,3) = ROcp5_654;
    sens.R(3,1) = ROcp5_755;
    sens.R(3,2) = ROcp5_855;
    sens.R(3,3) = ROcp5_955;
    sens.V(1) = VIcp5_153;
    sens.V(2) = VIcp5_253;
    sens.V(3) = VIcp5_353;
    sens.OM(1) = OMcp5_155;
    sens.OM(2) = OMcp5_255;
    sens.OM(3) = OMcp5_355;
    sens.J(1,1) = (1.0);
    sens.J(1,4) = JTcp5_153_4;
    sens.J(1,5) = JTcp5_153_5;
    sens.J(1,6) = JTcp5_153_6;
    sens.J(1,47) = JTcp5_153_7;
    sens.J(1,48) = JTcp5_153_8;
    sens.J(1,49) = JTcp5_153_9;
    sens.J(1,50) = JTcp5_153_10;
    sens.J(1,51) = JTcp5_153_11;
    sens.J(1,52) = JTcp5_153_12;
    sens.J(2,2) = (1.0);
    sens.J(2,4) = JTcp5_253_4;
    sens.J(2,5) = JTcp5_253_5;
    sens.J(2,6) = JTcp5_253_6;
    sens.J(2,47) = JTcp5_253_7;
    sens.J(2,48) = JTcp5_253_8;
    sens.J(2,49) = JTcp5_253_9;
    sens.J(2,50) = JTcp5_253_10;
    sens.J(2,51) = JTcp5_253_11;
    sens.J(2,52) = JTcp5_253_12;
    sens.J(3,3) = (1.0);
    sens.J(3,5) = JTcp5_353_5;
    sens.J(3,6) = JTcp5_353_6;
    sens.J(3,47) = JTcp5_353_7;
    sens.J(3,48) = JTcp5_353_8;
    sens.J(3,49) = JTcp5_353_9;
    sens.J(3,50) = JTcp5_353_10;
    sens.J(3,51) = JTcp5_353_11;
    sens.J(3,52) = JTcp5_353_12;
    sens.J(4,5) = C4;
    sens.J(4,6) = ROcp5_45;
    sens.J(4,47) = ROcp5_76;
    sens.J(4,48) = ROcp5_447;
    sens.J(4,49) = ROcp5_148;
    sens.J(4,50) = ROcp5_148;
    sens.J(4,51) = ROcp5_450;
    sens.J(4,52) = ROcp5_751;
    sens.J(4,53) = ROcp5_751;
    sens.J(4,54) = ROcp5_153;
    sens.J(4,55) = ROcp5_454;
    sens.J(5,5) = S4;
    sens.J(5,6) = ROcp5_55;
    sens.J(5,47) = ROcp5_86;
    sens.J(5,48) = ROcp5_547;
    sens.J(5,49) = ROcp5_248;
    sens.J(5,50) = ROcp5_248;
    sens.J(5,51) = ROcp5_550;
    sens.J(5,52) = ROcp5_851;
    sens.J(5,53) = ROcp5_851;
    sens.J(5,54) = ROcp5_253;
    sens.J(5,55) = ROcp5_554;
    sens.J(6,4) = (1.0);
    sens.J(6,6) = S5;
    sens.J(6,47) = ROcp5_96;
    sens.J(6,48) = ROcp5_647;
    sens.J(6,49) = ROcp5_348;
    sens.J(6,50) = ROcp5_348;
    sens.J(6,51) = ROcp5_650;
    sens.J(6,52) = ROcp5_951;
    sens.J(6,53) = ROcp5_951;
    sens.J(6,54) = ROcp5_353;
    sens.J(6,55) = ROcp5_654;
    sens.A(1) = ACcp5_153;
    sens.A(2) = ACcp5_253;
    sens.A(3) = ACcp5_353;
    sens.OMP(1) = OPcp5_155;
    sens.OMP(2) = OPcp5_255;
    sens.OMP(3) = OPcp5_355;

end


% ====== END Task 1 ====== 

  

