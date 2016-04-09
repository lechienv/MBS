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
%	==> Function : F 6 : Sensors Kinematical Informations (sens) 
%	==> Flops complexity : 18327
%
%	==> Generation Time :  0.290 seconds
%	==> Post-Processing :  0.360 seconds
%
%-------------------------------------------------------------
%
function [sens] = gensensor(s,tsim,usrfun,isens)

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

% = = Block_0_0_0_0_0_3 = = 
 
% Trigonometric Variables  

  C16 = cos(q(16));
  S16 = sin(q(16));
  C17 = cos(q(17));
  S17 = sin(q(17));

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

% = = Block_0_0_0_0_0_6 = = 
 
% Trigonometric Variables  

  C22 = cos(q(22));
  S22 = sin(q(22));
  C23 = cos(q(23));
  S23 = sin(q(23));

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

% = = Block_0_0_0_0_0_10 = = 
 
% Trigonometric Variables  

  C43 = cos(q(43));
  S43 = sin(q(43));
  C44 = cos(q(44));
  S44 = sin(q(44));

% = = Block_0_0_0_0_0_11 = = 
 
% Trigonometric Variables  

  C45 = cos(q(45));
  S45 = sin(q(45));
  C46 = cos(q(46));
  S46 = sin(q(46));

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

% = = Block_0_0_0_0_0_13 = = 
 
% Trigonometric Variables  

  C56 = cos(q(56));
  S56 = sin(q(56));
  C57 = cos(q(57));
  S57 = sin(q(57));

% = = Block_0_0_0_0_0_14 = = 
 
% Trigonometric Variables  

  C58 = cos(q(58));
  S58 = sin(q(58));
  C59 = cos(q(59));
  S59 = sin(q(59));

% = = Block_0_0_0_0_0_15 = = 
 
% Trigonometric Variables  

  C60 = cos(q(60));
  S60 = sin(q(60));
  C61 = cos(q(61));
  S61 = sin(q(61));

% = = Block_0_0_0_0_0_16 = = 
 
% Trigonometric Variables  

  C62 = cos(q(62));
  S62 = sin(q(62));
  C63 = cos(q(63));
  S63 = sin(q(63));

% = = Block_0_0_0_60_0_15 = = 
 
% Trigonometric Variables  

  S6p60 = C6*S60+S6*C60;
  C6p60 = C6*C60-S6*S60;

% = = Block_0_0_0_61_0_15 = = 
 
% Trigonometric Variables  

  S61p6p60 = C61*S6p60+S61*C6p60;
  C61p6p60 = C61*C6p60-S61*S6p60;

% = = Block_0_0_0_62_0_16 = = 
 
% Trigonometric Variables  

  S6p62 = C6*S62+S6*C62;
  C6p62 = C6*C62-S6*S62;

% = = Block_0_0_0_63_0_16 = = 
 
% Trigonometric Variables  

  S63p6p62 = C63*S6p62+S63*C6p62;
  C63p6p62 = C63*C6p62-S63*S6p62;

% ====== END Task 0 ====== 

% ===== BEGIN task 1 ===== 
 
switch isens

 
% 
case 1, 


% = = Block_1_0_0_1_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = q(1);
    sens.R(1,1) = (1.0);
    sens.R(2,2) = (1.0);
    sens.R(3,3) = (1.0);
    sens.V(1) = qd(1);
    sens.A(1) = qdd(1);
 
% 
case 2, 


% = = Block_1_0_0_2_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = q(1);
    sens.P(2) = q(2);
    sens.R(1,1) = (1.0);
    sens.R(2,2) = (1.0);
    sens.R(3,3) = (1.0);
    sens.V(1) = qd(1);
    sens.V(2) = qd(2);
    sens.A(1) = qdd(1);
    sens.A(2) = qdd(2);
 
% 
case 3, 


% = = Block_1_0_0_3_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = q(1);
    sens.P(2) = q(2);
    sens.P(3) = q(3);
    sens.R(1,1) = (1.0);
    sens.R(2,2) = (1.0);
    sens.R(3,3) = (1.0);
    sens.V(1) = qd(1);
    sens.V(2) = qd(2);
    sens.V(3) = qd(3);
    sens.A(1) = qdd(1);
    sens.A(2) = qdd(2);
    sens.A(3) = qdd(3);
 
% 
case 4, 


% = = Block_1_0_0_4_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = q(1);
    sens.P(2) = q(2);
    sens.P(3) = q(3);
    sens.R(1,1) = C4;
    sens.R(1,2) = S4;
    sens.R(2,1) = -S4;
    sens.R(2,2) = C4;
    sens.R(3,3) = (1.0);
    sens.V(1) = qd(1);
    sens.V(2) = qd(2);
    sens.V(3) = qd(3);
    sens.OM(3) = qd(4);
    sens.A(1) = qdd(1);
    sens.A(2) = qdd(2);
    sens.A(3) = qdd(3);
    sens.OMP(3) = qdd(4);
 
% 
case 5, 


% = = Block_1_0_0_5_0_1 = = 
 
% Sensor Kinematics 


    ROcp4_45 = -S4*C5;
    ROcp4_55 = C4*C5;
    ROcp4_75 = S4*S5;
    ROcp4_85 = -C4*S5;
    OMcp4_15 = qd(5)*C4;
    OMcp4_25 = qd(5)*S4;
    OPcp4_15 = qdd(5)*C4-qd(4)*qd(5)*S4;
    OPcp4_25 = qdd(5)*S4+qd(4)*qd(5)*C4;

% = = Block_1_0_0_5_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = q(1);
    sens.P(2) = q(2);
    sens.P(3) = q(3);
    sens.R(1,1) = C4;
    sens.R(1,2) = S4;
    sens.R(2,1) = ROcp4_45;
    sens.R(2,2) = ROcp4_55;
    sens.R(2,3) = S5;
    sens.R(3,1) = ROcp4_75;
    sens.R(3,2) = ROcp4_85;
    sens.R(3,3) = C5;
    sens.V(1) = qd(1);
    sens.V(2) = qd(2);
    sens.V(3) = qd(3);
    sens.OM(1) = OMcp4_15;
    sens.OM(2) = OMcp4_25;
    sens.OM(3) = qd(4);
    sens.A(1) = qdd(1);
    sens.A(2) = qdd(2);
    sens.A(3) = qdd(3);
    sens.OMP(1) = OPcp4_15;
    sens.OMP(2) = OPcp4_25;
    sens.OMP(3) = qdd(4);
 
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

% = = Block_1_0_0_6_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = q(1);
    sens.P(2) = q(2);
    sens.P(3) = q(3);
    sens.R(1,1) = ROcp5_16;
    sens.R(1,2) = ROcp5_26;
    sens.R(1,3) = ROcp5_36;
    sens.R(2,1) = ROcp5_45;
    sens.R(2,2) = ROcp5_55;
    sens.R(2,3) = S5;
    sens.R(3,1) = ROcp5_76;
    sens.R(3,2) = ROcp5_86;
    sens.R(3,3) = ROcp5_96;
    sens.V(1) = qd(1);
    sens.V(2) = qd(2);
    sens.V(3) = qd(3);
    sens.OM(1) = OMcp5_16;
    sens.OM(2) = OMcp5_26;
    sens.OM(3) = OMcp5_36;
    sens.A(1) = qdd(1);
    sens.A(2) = qdd(2);
    sens.A(3) = qdd(3);
    sens.OMP(1) = OPcp5_16;
    sens.OMP(2) = OPcp5_26;
    sens.OMP(3) = OPcp5_36;
 
% 
case 7, 


% = = Block_1_0_0_7_0_1 = = 
 
% Sensor Kinematics 


    ROcp6_45 = -S4*C5;
    ROcp6_55 = C4*C5;
    ROcp6_75 = S4*S5;
    ROcp6_85 = -C4*S5;
    ROcp6_16 = -(ROcp6_75*S6-C4*C6);
    ROcp6_26 = -(ROcp6_85*S6-S4*C6);
    ROcp6_36 = -C5*S6;
    ROcp6_76 = ROcp6_75*C6+C4*S6;
    ROcp6_86 = ROcp6_85*C6+S4*S6;
    ROcp6_96 = C5*C6;
    OMcp6_15 = qd(5)*C4;
    OMcp6_25 = qd(5)*S4;
    OMcp6_16 = OMcp6_15+ROcp6_45*qd(6);
    OMcp6_26 = OMcp6_25+ROcp6_55*qd(6);
    OMcp6_36 = qd(4)+qd(6)*S5;
    OPcp6_16 = ROcp6_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp6_25*S5-ROcp6_55*qd(4));
    OPcp6_26 = ROcp6_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp6_15*S5-ROcp6_45*qd(4));
    OPcp6_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_7_0_2 = = 
 
% Sensor Kinematics 


    ROcp6_17 = ROcp6_16*C7+ROcp6_45*S7;
    ROcp6_27 = ROcp6_26*C7+ROcp6_55*S7;
    ROcp6_37 = ROcp6_36*C7+S5*S7;
    ROcp6_47 = -(ROcp6_16*S7-ROcp6_45*C7);
    ROcp6_57 = -(ROcp6_26*S7-ROcp6_55*C7);
    ROcp6_67 = -(ROcp6_36*S7-S5*C7);
    RLcp6_17 = ROcp6_16*s.dpt(1,1)+ROcp6_45*s.dpt(2,1)+ROcp6_76*s.dpt(3,1);
    RLcp6_27 = ROcp6_26*s.dpt(1,1)+ROcp6_55*s.dpt(2,1)+ROcp6_86*s.dpt(3,1);
    RLcp6_37 = ROcp6_36*s.dpt(1,1)+ROcp6_96*s.dpt(3,1)+s.dpt(2,1)*S5;
    POcp6_17 = RLcp6_17+q(1);
    POcp6_27 = RLcp6_27+q(2);
    POcp6_37 = RLcp6_37+q(3);
    OMcp6_17 = OMcp6_16+ROcp6_76*qd(7);
    OMcp6_27 = OMcp6_26+ROcp6_86*qd(7);
    OMcp6_37 = OMcp6_36+ROcp6_96*qd(7);
    ORcp6_17 = OMcp6_26*RLcp6_37-OMcp6_36*RLcp6_27;
    ORcp6_27 = -(OMcp6_16*RLcp6_37-OMcp6_36*RLcp6_17);
    ORcp6_37 = OMcp6_16*RLcp6_27-OMcp6_26*RLcp6_17;
    VIcp6_17 = ORcp6_17+qd(1);
    VIcp6_27 = ORcp6_27+qd(2);
    VIcp6_37 = ORcp6_37+qd(3);
    OPcp6_17 = OPcp6_16+ROcp6_76*qdd(7)+qd(7)*(OMcp6_26*ROcp6_96-OMcp6_36*ROcp6_86);
    OPcp6_27 = OPcp6_26+ROcp6_86*qdd(7)-qd(7)*(OMcp6_16*ROcp6_96-OMcp6_36*ROcp6_76);
    OPcp6_37 = OPcp6_36+ROcp6_96*qdd(7)+qd(7)*(OMcp6_16*ROcp6_86-OMcp6_26*ROcp6_76);
    ACcp6_17 = qdd(1)+OMcp6_26*ORcp6_37-OMcp6_36*ORcp6_27+OPcp6_26*RLcp6_37-OPcp6_36*RLcp6_27;
    ACcp6_27 = qdd(2)-OMcp6_16*ORcp6_37+OMcp6_36*ORcp6_17-OPcp6_16*RLcp6_37+OPcp6_36*RLcp6_17;
    ACcp6_37 = qdd(3)+OMcp6_16*ORcp6_27-OMcp6_26*ORcp6_17+OPcp6_16*RLcp6_27-OPcp6_26*RLcp6_17;

% = = Block_1_0_0_7_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp6_17;
    sens.P(2) = POcp6_27;
    sens.P(3) = POcp6_37;
    sens.R(1,1) = ROcp6_17;
    sens.R(1,2) = ROcp6_27;
    sens.R(1,3) = ROcp6_37;
    sens.R(2,1) = ROcp6_47;
    sens.R(2,2) = ROcp6_57;
    sens.R(2,3) = ROcp6_67;
    sens.R(3,1) = ROcp6_76;
    sens.R(3,2) = ROcp6_86;
    sens.R(3,3) = ROcp6_96;
    sens.V(1) = VIcp6_17;
    sens.V(2) = VIcp6_27;
    sens.V(3) = VIcp6_37;
    sens.OM(1) = OMcp6_17;
    sens.OM(2) = OMcp6_27;
    sens.OM(3) = OMcp6_37;
    sens.A(1) = ACcp6_17;
    sens.A(2) = ACcp6_27;
    sens.A(3) = ACcp6_37;
    sens.OMP(1) = OPcp6_17;
    sens.OMP(2) = OPcp6_27;
    sens.OMP(3) = OPcp6_37;
 
% 
case 8, 


% = = Block_1_0_0_8_0_1 = = 
 
% Sensor Kinematics 


    ROcp7_45 = -S4*C5;
    ROcp7_55 = C4*C5;
    ROcp7_75 = S4*S5;
    ROcp7_85 = -C4*S5;
    ROcp7_16 = -(ROcp7_75*S6-C4*C6);
    ROcp7_26 = -(ROcp7_85*S6-S4*C6);
    ROcp7_36 = -C5*S6;
    ROcp7_76 = ROcp7_75*C6+C4*S6;
    ROcp7_86 = ROcp7_85*C6+S4*S6;
    ROcp7_96 = C5*C6;
    OMcp7_15 = qd(5)*C4;
    OMcp7_25 = qd(5)*S4;
    OMcp7_16 = OMcp7_15+ROcp7_45*qd(6);
    OMcp7_26 = OMcp7_25+ROcp7_55*qd(6);
    OMcp7_36 = qd(4)+qd(6)*S5;
    OPcp7_16 = ROcp7_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp7_25*S5-ROcp7_55*qd(4));
    OPcp7_26 = ROcp7_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp7_15*S5-ROcp7_45*qd(4));
    OPcp7_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_8_0_2 = = 
 
% Sensor Kinematics 


    ROcp7_17 = ROcp7_16*C7+ROcp7_45*S7;
    ROcp7_27 = ROcp7_26*C7+ROcp7_55*S7;
    ROcp7_37 = ROcp7_36*C7+S5*S7;
    ROcp7_47 = -(ROcp7_16*S7-ROcp7_45*C7);
    ROcp7_57 = -(ROcp7_26*S7-ROcp7_55*C7);
    ROcp7_67 = -(ROcp7_36*S7-S5*C7);
    ROcp7_18 = ROcp7_17*C8-ROcp7_76*S8;
    ROcp7_28 = ROcp7_27*C8-ROcp7_86*S8;
    ROcp7_38 = ROcp7_37*C8-ROcp7_96*S8;
    ROcp7_78 = ROcp7_17*S8+ROcp7_76*C8;
    ROcp7_88 = ROcp7_27*S8+ROcp7_86*C8;
    ROcp7_98 = ROcp7_37*S8+ROcp7_96*C8;
    RLcp7_17 = ROcp7_16*s.dpt(1,1)+ROcp7_45*s.dpt(2,1)+ROcp7_76*s.dpt(3,1);
    RLcp7_27 = ROcp7_26*s.dpt(1,1)+ROcp7_55*s.dpt(2,1)+ROcp7_86*s.dpt(3,1);
    RLcp7_37 = ROcp7_36*s.dpt(1,1)+ROcp7_96*s.dpt(3,1)+s.dpt(2,1)*S5;
    POcp7_17 = RLcp7_17+q(1);
    POcp7_27 = RLcp7_27+q(2);
    POcp7_37 = RLcp7_37+q(3);
    OMcp7_17 = OMcp7_16+ROcp7_76*qd(7);
    OMcp7_27 = OMcp7_26+ROcp7_86*qd(7);
    OMcp7_37 = OMcp7_36+ROcp7_96*qd(7);
    ORcp7_17 = OMcp7_26*RLcp7_37-OMcp7_36*RLcp7_27;
    ORcp7_27 = -(OMcp7_16*RLcp7_37-OMcp7_36*RLcp7_17);
    ORcp7_37 = OMcp7_16*RLcp7_27-OMcp7_26*RLcp7_17;
    VIcp7_17 = ORcp7_17+qd(1);
    VIcp7_27 = ORcp7_27+qd(2);
    VIcp7_37 = ORcp7_37+qd(3);
    ACcp7_17 = qdd(1)+OMcp7_26*ORcp7_37-OMcp7_36*ORcp7_27+OPcp7_26*RLcp7_37-OPcp7_36*RLcp7_27;
    ACcp7_27 = qdd(2)-OMcp7_16*ORcp7_37+OMcp7_36*ORcp7_17-OPcp7_16*RLcp7_37+OPcp7_36*RLcp7_17;
    ACcp7_37 = qdd(3)+OMcp7_16*ORcp7_27-OMcp7_26*ORcp7_17+OPcp7_16*RLcp7_27-OPcp7_26*RLcp7_17;
    OMcp7_18 = OMcp7_17+ROcp7_47*qd(8);
    OMcp7_28 = OMcp7_27+ROcp7_57*qd(8);
    OMcp7_38 = OMcp7_37+ROcp7_67*qd(8);
    OPcp7_18 = OPcp7_16+ROcp7_47*qdd(8)+ROcp7_76*qdd(7)+qd(7)*(OMcp7_26*ROcp7_96-OMcp7_36*ROcp7_86)+qd(8)*(OMcp7_27*ROcp7_67-OMcp7_37*ROcp7_57);
    OPcp7_28 = OPcp7_26+ROcp7_57*qdd(8)+ROcp7_86*qdd(7)-qd(7)*(OMcp7_16*ROcp7_96-OMcp7_36*ROcp7_76)-qd(8)*(OMcp7_17*ROcp7_67-OMcp7_37*ROcp7_47);
    OPcp7_38 = OPcp7_36+ROcp7_67*qdd(8)+ROcp7_96*qdd(7)+qd(7)*(OMcp7_16*ROcp7_86-OMcp7_26*ROcp7_76)+qd(8)*(OMcp7_17*ROcp7_57-OMcp7_27*ROcp7_47);

% = = Block_1_0_0_8_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp7_17;
    sens.P(2) = POcp7_27;
    sens.P(3) = POcp7_37;
    sens.R(1,1) = ROcp7_18;
    sens.R(1,2) = ROcp7_28;
    sens.R(1,3) = ROcp7_38;
    sens.R(2,1) = ROcp7_47;
    sens.R(2,2) = ROcp7_57;
    sens.R(2,3) = ROcp7_67;
    sens.R(3,1) = ROcp7_78;
    sens.R(3,2) = ROcp7_88;
    sens.R(3,3) = ROcp7_98;
    sens.V(1) = VIcp7_17;
    sens.V(2) = VIcp7_27;
    sens.V(3) = VIcp7_37;
    sens.OM(1) = OMcp7_18;
    sens.OM(2) = OMcp7_28;
    sens.OM(3) = OMcp7_38;
    sens.A(1) = ACcp7_17;
    sens.A(2) = ACcp7_27;
    sens.A(3) = ACcp7_37;
    sens.OMP(1) = OPcp7_18;
    sens.OMP(2) = OPcp7_28;
    sens.OMP(3) = OPcp7_38;
 
% 
case 9, 


% = = Block_1_0_0_9_0_1 = = 
 
% Sensor Kinematics 


    ROcp8_45 = -S4*C5;
    ROcp8_55 = C4*C5;
    ROcp8_75 = S4*S5;
    ROcp8_85 = -C4*S5;
    ROcp8_16 = -(ROcp8_75*S6-C4*C6);
    ROcp8_26 = -(ROcp8_85*S6-S4*C6);
    ROcp8_36 = -C5*S6;
    ROcp8_76 = ROcp8_75*C6+C4*S6;
    ROcp8_86 = ROcp8_85*C6+S4*S6;
    ROcp8_96 = C5*C6;
    OMcp8_15 = qd(5)*C4;
    OMcp8_25 = qd(5)*S4;
    OMcp8_16 = OMcp8_15+ROcp8_45*qd(6);
    OMcp8_26 = OMcp8_25+ROcp8_55*qd(6);
    OMcp8_36 = qd(4)+qd(6)*S5;
    OPcp8_16 = ROcp8_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp8_25*S5-ROcp8_55*qd(4));
    OPcp8_26 = ROcp8_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp8_15*S5-ROcp8_45*qd(4));
    OPcp8_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_9_0_2 = = 
 
% Sensor Kinematics 


    ROcp8_17 = ROcp8_16*C7+ROcp8_45*S7;
    ROcp8_27 = ROcp8_26*C7+ROcp8_55*S7;
    ROcp8_37 = ROcp8_36*C7+S5*S7;
    ROcp8_47 = -(ROcp8_16*S7-ROcp8_45*C7);
    ROcp8_57 = -(ROcp8_26*S7-ROcp8_55*C7);
    ROcp8_67 = -(ROcp8_36*S7-S5*C7);
    ROcp8_18 = ROcp8_17*C8-ROcp8_76*S8;
    ROcp8_28 = ROcp8_27*C8-ROcp8_86*S8;
    ROcp8_38 = ROcp8_37*C8-ROcp8_96*S8;
    ROcp8_78 = ROcp8_17*S8+ROcp8_76*C8;
    ROcp8_88 = ROcp8_27*S8+ROcp8_86*C8;
    ROcp8_98 = ROcp8_37*S8+ROcp8_96*C8;
    ROcp8_49 = ROcp8_47*C9+ROcp8_78*S9;
    ROcp8_59 = ROcp8_57*C9+ROcp8_88*S9;
    ROcp8_69 = ROcp8_67*C9+ROcp8_98*S9;
    ROcp8_79 = -(ROcp8_47*S9-ROcp8_78*C9);
    ROcp8_89 = -(ROcp8_57*S9-ROcp8_88*C9);
    ROcp8_99 = -(ROcp8_67*S9-ROcp8_98*C9);
    RLcp8_17 = ROcp8_16*s.dpt(1,1)+ROcp8_45*s.dpt(2,1)+ROcp8_76*s.dpt(3,1);
    RLcp8_27 = ROcp8_26*s.dpt(1,1)+ROcp8_55*s.dpt(2,1)+ROcp8_86*s.dpt(3,1);
    RLcp8_37 = ROcp8_36*s.dpt(1,1)+ROcp8_96*s.dpt(3,1)+s.dpt(2,1)*S5;
    POcp8_17 = RLcp8_17+q(1);
    POcp8_27 = RLcp8_27+q(2);
    POcp8_37 = RLcp8_37+q(3);
    OMcp8_17 = OMcp8_16+ROcp8_76*qd(7);
    OMcp8_27 = OMcp8_26+ROcp8_86*qd(7);
    OMcp8_37 = OMcp8_36+ROcp8_96*qd(7);
    ORcp8_17 = OMcp8_26*RLcp8_37-OMcp8_36*RLcp8_27;
    ORcp8_27 = -(OMcp8_16*RLcp8_37-OMcp8_36*RLcp8_17);
    ORcp8_37 = OMcp8_16*RLcp8_27-OMcp8_26*RLcp8_17;
    VIcp8_17 = ORcp8_17+qd(1);
    VIcp8_27 = ORcp8_27+qd(2);
    VIcp8_37 = ORcp8_37+qd(3);
    ACcp8_17 = qdd(1)+OMcp8_26*ORcp8_37-OMcp8_36*ORcp8_27+OPcp8_26*RLcp8_37-OPcp8_36*RLcp8_27;
    ACcp8_27 = qdd(2)-OMcp8_16*ORcp8_37+OMcp8_36*ORcp8_17-OPcp8_16*RLcp8_37+OPcp8_36*RLcp8_17;
    ACcp8_37 = qdd(3)+OMcp8_16*ORcp8_27-OMcp8_26*ORcp8_17+OPcp8_16*RLcp8_27-OPcp8_26*RLcp8_17;
    OMcp8_18 = OMcp8_17+ROcp8_47*qd(8);
    OMcp8_28 = OMcp8_27+ROcp8_57*qd(8);
    OMcp8_38 = OMcp8_37+ROcp8_67*qd(8);
    OMcp8_19 = OMcp8_18+ROcp8_18*qd(9);
    OMcp8_29 = OMcp8_28+ROcp8_28*qd(9);
    OMcp8_39 = OMcp8_38+ROcp8_38*qd(9);
    OPcp8_19 = OPcp8_16+ROcp8_18*qdd(9)+ROcp8_47*qdd(8)+ROcp8_76*qdd(7)+qd(7)*(OMcp8_26*ROcp8_96-OMcp8_36*ROcp8_86)+qd(8)*(OMcp8_27*ROcp8_67-...
 OMcp8_37*ROcp8_57)+qd(9)*(OMcp8_28*ROcp8_38-OMcp8_38*ROcp8_28);
    OPcp8_29 = OPcp8_26+ROcp8_28*qdd(9)+ROcp8_57*qdd(8)+ROcp8_86*qdd(7)-qd(7)*(OMcp8_16*ROcp8_96-OMcp8_36*ROcp8_76)-qd(8)*(OMcp8_17*ROcp8_67-...
 OMcp8_37*ROcp8_47)-qd(9)*(OMcp8_18*ROcp8_38-OMcp8_38*ROcp8_18);
    OPcp8_39 = OPcp8_36+ROcp8_38*qdd(9)+ROcp8_67*qdd(8)+ROcp8_96*qdd(7)+qd(7)*(OMcp8_16*ROcp8_86-OMcp8_26*ROcp8_76)+qd(8)*(OMcp8_17*ROcp8_57-...
 OMcp8_27*ROcp8_47)+qd(9)*(OMcp8_18*ROcp8_28-OMcp8_28*ROcp8_18);

% = = Block_1_0_0_9_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp8_17;
    sens.P(2) = POcp8_27;
    sens.P(3) = POcp8_37;
    sens.R(1,1) = ROcp8_18;
    sens.R(1,2) = ROcp8_28;
    sens.R(1,3) = ROcp8_38;
    sens.R(2,1) = ROcp8_49;
    sens.R(2,2) = ROcp8_59;
    sens.R(2,3) = ROcp8_69;
    sens.R(3,1) = ROcp8_79;
    sens.R(3,2) = ROcp8_89;
    sens.R(3,3) = ROcp8_99;
    sens.V(1) = VIcp8_17;
    sens.V(2) = VIcp8_27;
    sens.V(3) = VIcp8_37;
    sens.OM(1) = OMcp8_19;
    sens.OM(2) = OMcp8_29;
    sens.OM(3) = OMcp8_39;
    sens.A(1) = ACcp8_17;
    sens.A(2) = ACcp8_27;
    sens.A(3) = ACcp8_37;
    sens.OMP(1) = OPcp8_19;
    sens.OMP(2) = OPcp8_29;
    sens.OMP(3) = OPcp8_39;
 
% 
case 10, 


% = = Block_1_0_0_10_0_1 = = 
 
% Sensor Kinematics 


    ROcp9_45 = -S4*C5;
    ROcp9_55 = C4*C5;
    ROcp9_75 = S4*S5;
    ROcp9_85 = -C4*S5;
    ROcp9_16 = -(ROcp9_75*S6-C4*C6);
    ROcp9_26 = -(ROcp9_85*S6-S4*C6);
    ROcp9_36 = -C5*S6;
    ROcp9_76 = ROcp9_75*C6+C4*S6;
    ROcp9_86 = ROcp9_85*C6+S4*S6;
    ROcp9_96 = C5*C6;
    OMcp9_15 = qd(5)*C4;
    OMcp9_25 = qd(5)*S4;
    OMcp9_16 = OMcp9_15+ROcp9_45*qd(6);
    OMcp9_26 = OMcp9_25+ROcp9_55*qd(6);
    OMcp9_36 = qd(4)+qd(6)*S5;
    OPcp9_16 = ROcp9_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp9_25*S5-ROcp9_55*qd(4));
    OPcp9_26 = ROcp9_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp9_15*S5-ROcp9_45*qd(4));
    OPcp9_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_10_0_2 = = 
 
% Sensor Kinematics 


    ROcp9_17 = ROcp9_16*C7+ROcp9_45*S7;
    ROcp9_27 = ROcp9_26*C7+ROcp9_55*S7;
    ROcp9_37 = ROcp9_36*C7+S5*S7;
    ROcp9_47 = -(ROcp9_16*S7-ROcp9_45*C7);
    ROcp9_57 = -(ROcp9_26*S7-ROcp9_55*C7);
    ROcp9_67 = -(ROcp9_36*S7-S5*C7);
    ROcp9_18 = ROcp9_17*C8-ROcp9_76*S8;
    ROcp9_28 = ROcp9_27*C8-ROcp9_86*S8;
    ROcp9_38 = ROcp9_37*C8-ROcp9_96*S8;
    ROcp9_78 = ROcp9_17*S8+ROcp9_76*C8;
    ROcp9_88 = ROcp9_27*S8+ROcp9_86*C8;
    ROcp9_98 = ROcp9_37*S8+ROcp9_96*C8;
    ROcp9_49 = ROcp9_47*C9+ROcp9_78*S9;
    ROcp9_59 = ROcp9_57*C9+ROcp9_88*S9;
    ROcp9_69 = ROcp9_67*C9+ROcp9_98*S9;
    ROcp9_79 = -(ROcp9_47*S9-ROcp9_78*C9);
    ROcp9_89 = -(ROcp9_57*S9-ROcp9_88*C9);
    ROcp9_99 = -(ROcp9_67*S9-ROcp9_98*C9);
    ROcp9_410 = ROcp9_49*C10+ROcp9_79*S10;
    ROcp9_510 = ROcp9_59*C10+ROcp9_89*S10;
    ROcp9_610 = ROcp9_69*C10+ROcp9_99*S10;
    ROcp9_710 = -(ROcp9_49*S10-ROcp9_79*C10);
    ROcp9_810 = -(ROcp9_59*S10-ROcp9_89*C10);
    ROcp9_910 = -(ROcp9_69*S10-ROcp9_99*C10);
    RLcp9_17 = ROcp9_16*s.dpt(1,1)+ROcp9_45*s.dpt(2,1)+ROcp9_76*s.dpt(3,1);
    RLcp9_27 = ROcp9_26*s.dpt(1,1)+ROcp9_55*s.dpt(2,1)+ROcp9_86*s.dpt(3,1);
    RLcp9_37 = ROcp9_36*s.dpt(1,1)+ROcp9_96*s.dpt(3,1)+s.dpt(2,1)*S5;
    OMcp9_17 = OMcp9_16+ROcp9_76*qd(7);
    OMcp9_27 = OMcp9_26+ROcp9_86*qd(7);
    OMcp9_37 = OMcp9_36+ROcp9_96*qd(7);
    ORcp9_17 = OMcp9_26*RLcp9_37-OMcp9_36*RLcp9_27;
    ORcp9_27 = -(OMcp9_16*RLcp9_37-OMcp9_36*RLcp9_17);
    ORcp9_37 = OMcp9_16*RLcp9_27-OMcp9_26*RLcp9_17;
    OMcp9_18 = OMcp9_17+ROcp9_47*qd(8);
    OMcp9_28 = OMcp9_27+ROcp9_57*qd(8);
    OMcp9_38 = OMcp9_37+ROcp9_67*qd(8);
    OMcp9_19 = OMcp9_18+ROcp9_18*qd(9);
    OMcp9_29 = OMcp9_28+ROcp9_28*qd(9);
    OMcp9_39 = OMcp9_38+ROcp9_38*qd(9);
    OPcp9_19 = OPcp9_16+ROcp9_18*qdd(9)+ROcp9_47*qdd(8)+ROcp9_76*qdd(7)+qd(7)*(OMcp9_26*ROcp9_96-OMcp9_36*ROcp9_86)+qd(8)*(OMcp9_27*ROcp9_67-...
 OMcp9_37*ROcp9_57)+qd(9)*(OMcp9_28*ROcp9_38-OMcp9_38*ROcp9_28);
    OPcp9_29 = OPcp9_26+ROcp9_28*qdd(9)+ROcp9_57*qdd(8)+ROcp9_86*qdd(7)-qd(7)*(OMcp9_16*ROcp9_96-OMcp9_36*ROcp9_76)-qd(8)*(OMcp9_17*ROcp9_67-...
 OMcp9_37*ROcp9_47)-qd(9)*(OMcp9_18*ROcp9_38-OMcp9_38*ROcp9_18);
    OPcp9_39 = OPcp9_36+ROcp9_38*qdd(9)+ROcp9_67*qdd(8)+ROcp9_96*qdd(7)+qd(7)*(OMcp9_16*ROcp9_86-OMcp9_26*ROcp9_76)+qd(8)*(OMcp9_17*ROcp9_57-...
 OMcp9_27*ROcp9_47)+qd(9)*(OMcp9_18*ROcp9_28-OMcp9_28*ROcp9_18);
    RLcp9_110 = ROcp9_49*s.dpt(2,24);
    RLcp9_210 = ROcp9_59*s.dpt(2,24);
    RLcp9_310 = ROcp9_69*s.dpt(2,24);
    POcp9_110 = RLcp9_110+RLcp9_17+q(1);
    POcp9_210 = RLcp9_210+RLcp9_27+q(2);
    POcp9_310 = RLcp9_310+RLcp9_37+q(3);
    OMcp9_110 = OMcp9_19+ROcp9_18*qd(10);
    OMcp9_210 = OMcp9_29+ROcp9_28*qd(10);
    OMcp9_310 = OMcp9_39+ROcp9_38*qd(10);
    ORcp9_110 = OMcp9_29*RLcp9_310-OMcp9_39*RLcp9_210;
    ORcp9_210 = -(OMcp9_19*RLcp9_310-OMcp9_39*RLcp9_110);
    ORcp9_310 = OMcp9_19*RLcp9_210-OMcp9_29*RLcp9_110;
    VIcp9_110 = ORcp9_110+ORcp9_17+qd(1);
    VIcp9_210 = ORcp9_210+ORcp9_27+qd(2);
    VIcp9_310 = ORcp9_310+ORcp9_37+qd(3);
    OPcp9_110 = OPcp9_19+ROcp9_18*qdd(10)+qd(10)*(OMcp9_29*ROcp9_38-OMcp9_39*ROcp9_28);
    OPcp9_210 = OPcp9_29+ROcp9_28*qdd(10)-qd(10)*(OMcp9_19*ROcp9_38-OMcp9_39*ROcp9_18);
    OPcp9_310 = OPcp9_39+ROcp9_38*qdd(10)+qd(10)*(OMcp9_19*ROcp9_28-OMcp9_29*ROcp9_18);
    ACcp9_110 = qdd(1)+OMcp9_26*ORcp9_37+OMcp9_29*ORcp9_310-OMcp9_36*ORcp9_27-OMcp9_39*ORcp9_210+OPcp9_26*RLcp9_37+OPcp9_29*RLcp9_310-OPcp9_36*...
 RLcp9_27-OPcp9_39*RLcp9_210;
    ACcp9_210 = qdd(2)-OMcp9_16*ORcp9_37-OMcp9_19*ORcp9_310+OMcp9_36*ORcp9_17+OMcp9_39*ORcp9_110-OPcp9_16*RLcp9_37-OPcp9_19*RLcp9_310+OPcp9_36*...
 RLcp9_17+OPcp9_39*RLcp9_110;
    ACcp9_310 = qdd(3)+OMcp9_16*ORcp9_27+OMcp9_19*ORcp9_210-OMcp9_26*ORcp9_17-OMcp9_29*ORcp9_110+OPcp9_16*RLcp9_27+OPcp9_19*RLcp9_210-OPcp9_26*...
 RLcp9_17-OPcp9_29*RLcp9_110;

% = = Block_1_0_0_10_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp9_110;
    sens.P(2) = POcp9_210;
    sens.P(3) = POcp9_310;
    sens.R(1,1) = ROcp9_18;
    sens.R(1,2) = ROcp9_28;
    sens.R(1,3) = ROcp9_38;
    sens.R(2,1) = ROcp9_410;
    sens.R(2,2) = ROcp9_510;
    sens.R(2,3) = ROcp9_610;
    sens.R(3,1) = ROcp9_710;
    sens.R(3,2) = ROcp9_810;
    sens.R(3,3) = ROcp9_910;
    sens.V(1) = VIcp9_110;
    sens.V(2) = VIcp9_210;
    sens.V(3) = VIcp9_310;
    sens.OM(1) = OMcp9_110;
    sens.OM(2) = OMcp9_210;
    sens.OM(3) = OMcp9_310;
    sens.A(1) = ACcp9_110;
    sens.A(2) = ACcp9_210;
    sens.A(3) = ACcp9_310;
    sens.OMP(1) = OPcp9_110;
    sens.OMP(2) = OPcp9_210;
    sens.OMP(3) = OPcp9_310;
 
% 
case 11, 


% = = Block_1_0_0_11_0_1 = = 
 
% Sensor Kinematics 


    ROcp10_45 = -S4*C5;
    ROcp10_55 = C4*C5;
    ROcp10_75 = S4*S5;
    ROcp10_85 = -C4*S5;
    ROcp10_16 = -(ROcp10_75*S6-C4*C6);
    ROcp10_26 = -(ROcp10_85*S6-S4*C6);
    ROcp10_36 = -C5*S6;
    ROcp10_76 = ROcp10_75*C6+C4*S6;
    ROcp10_86 = ROcp10_85*C6+S4*S6;
    ROcp10_96 = C5*C6;
    OMcp10_15 = qd(5)*C4;
    OMcp10_25 = qd(5)*S4;
    OMcp10_16 = OMcp10_15+ROcp10_45*qd(6);
    OMcp10_26 = OMcp10_25+ROcp10_55*qd(6);
    OMcp10_36 = qd(4)+qd(6)*S5;
    OPcp10_16 = ROcp10_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp10_25*S5-ROcp10_55*qd(4));
    OPcp10_26 = ROcp10_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp10_15*S5-ROcp10_45*qd(4));
    OPcp10_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_11_0_2 = = 
 
% Sensor Kinematics 


    ROcp10_17 = ROcp10_16*C7+ROcp10_45*S7;
    ROcp10_27 = ROcp10_26*C7+ROcp10_55*S7;
    ROcp10_37 = ROcp10_36*C7+S5*S7;
    ROcp10_47 = -(ROcp10_16*S7-ROcp10_45*C7);
    ROcp10_57 = -(ROcp10_26*S7-ROcp10_55*C7);
    ROcp10_67 = -(ROcp10_36*S7-S5*C7);
    ROcp10_18 = ROcp10_17*C8-ROcp10_76*S8;
    ROcp10_28 = ROcp10_27*C8-ROcp10_86*S8;
    ROcp10_38 = ROcp10_37*C8-ROcp10_96*S8;
    ROcp10_78 = ROcp10_17*S8+ROcp10_76*C8;
    ROcp10_88 = ROcp10_27*S8+ROcp10_86*C8;
    ROcp10_98 = ROcp10_37*S8+ROcp10_96*C8;
    ROcp10_49 = ROcp10_47*C9+ROcp10_78*S9;
    ROcp10_59 = ROcp10_57*C9+ROcp10_88*S9;
    ROcp10_69 = ROcp10_67*C9+ROcp10_98*S9;
    ROcp10_79 = -(ROcp10_47*S9-ROcp10_78*C9);
    ROcp10_89 = -(ROcp10_57*S9-ROcp10_88*C9);
    ROcp10_99 = -(ROcp10_67*S9-ROcp10_98*C9);
    ROcp10_410 = ROcp10_49*C10+ROcp10_79*S10;
    ROcp10_510 = ROcp10_59*C10+ROcp10_89*S10;
    ROcp10_610 = ROcp10_69*C10+ROcp10_99*S10;
    ROcp10_710 = -(ROcp10_49*S10-ROcp10_79*C10);
    ROcp10_810 = -(ROcp10_59*S10-ROcp10_89*C10);
    ROcp10_910 = -(ROcp10_69*S10-ROcp10_99*C10);
    ROcp10_111 = ROcp10_18*C11-ROcp10_710*S11;
    ROcp10_211 = ROcp10_28*C11-ROcp10_810*S11;
    ROcp10_311 = ROcp10_38*C11-ROcp10_910*S11;
    ROcp10_711 = ROcp10_18*S11+ROcp10_710*C11;
    ROcp10_811 = ROcp10_28*S11+ROcp10_810*C11;
    ROcp10_911 = ROcp10_38*S11+ROcp10_910*C11;
    RLcp10_17 = ROcp10_16*s.dpt(1,1)+ROcp10_45*s.dpt(2,1)+ROcp10_76*s.dpt(3,1);
    RLcp10_27 = ROcp10_26*s.dpt(1,1)+ROcp10_55*s.dpt(2,1)+ROcp10_86*s.dpt(3,1);
    RLcp10_37 = ROcp10_36*s.dpt(1,1)+ROcp10_96*s.dpt(3,1)+s.dpt(2,1)*S5;
    OMcp10_17 = OMcp10_16+ROcp10_76*qd(7);
    OMcp10_27 = OMcp10_26+ROcp10_86*qd(7);
    OMcp10_37 = OMcp10_36+ROcp10_96*qd(7);
    ORcp10_17 = OMcp10_26*RLcp10_37-OMcp10_36*RLcp10_27;
    ORcp10_27 = -(OMcp10_16*RLcp10_37-OMcp10_36*RLcp10_17);
    ORcp10_37 = OMcp10_16*RLcp10_27-OMcp10_26*RLcp10_17;
    OMcp10_18 = OMcp10_17+ROcp10_47*qd(8);
    OMcp10_28 = OMcp10_27+ROcp10_57*qd(8);
    OMcp10_38 = OMcp10_37+ROcp10_67*qd(8);
    OMcp10_19 = OMcp10_18+ROcp10_18*qd(9);
    OMcp10_29 = OMcp10_28+ROcp10_28*qd(9);
    OMcp10_39 = OMcp10_38+ROcp10_38*qd(9);
    OPcp10_19 = OPcp10_16+ROcp10_18*qdd(9)+ROcp10_47*qdd(8)+ROcp10_76*qdd(7)+qd(7)*(OMcp10_26*ROcp10_96-OMcp10_36*ROcp10_86)+qd(8)*(OMcp10_27*...
 ROcp10_67-OMcp10_37*ROcp10_57)+qd(9)*(OMcp10_28*ROcp10_38-OMcp10_38*ROcp10_28);
    OPcp10_29 = OPcp10_26+ROcp10_28*qdd(9)+ROcp10_57*qdd(8)+ROcp10_86*qdd(7)-qd(7)*(OMcp10_16*ROcp10_96-OMcp10_36*ROcp10_76)-qd(8)*(OMcp10_17*...
 ROcp10_67-OMcp10_37*ROcp10_47)-qd(9)*(OMcp10_18*ROcp10_38-OMcp10_38*ROcp10_18);
    OPcp10_39 = OPcp10_36+ROcp10_38*qdd(9)+ROcp10_67*qdd(8)+ROcp10_96*qdd(7)+qd(7)*(OMcp10_16*ROcp10_86-OMcp10_26*ROcp10_76)+qd(8)*(OMcp10_17*...
 ROcp10_57-OMcp10_27*ROcp10_47)+qd(9)*(OMcp10_18*ROcp10_28-OMcp10_28*ROcp10_18);
    RLcp10_110 = ROcp10_49*s.dpt(2,24);
    RLcp10_210 = ROcp10_59*s.dpt(2,24);
    RLcp10_310 = ROcp10_69*s.dpt(2,24);
    POcp10_110 = RLcp10_110+RLcp10_17+q(1);
    POcp10_210 = RLcp10_210+RLcp10_27+q(2);
    POcp10_310 = RLcp10_310+RLcp10_37+q(3);
    OMcp10_110 = OMcp10_19+ROcp10_18*qd(10);
    OMcp10_210 = OMcp10_29+ROcp10_28*qd(10);
    OMcp10_310 = OMcp10_39+ROcp10_38*qd(10);
    ORcp10_110 = OMcp10_29*RLcp10_310-OMcp10_39*RLcp10_210;
    ORcp10_210 = -(OMcp10_19*RLcp10_310-OMcp10_39*RLcp10_110);
    ORcp10_310 = OMcp10_19*RLcp10_210-OMcp10_29*RLcp10_110;
    VIcp10_110 = ORcp10_110+ORcp10_17+qd(1);
    VIcp10_210 = ORcp10_210+ORcp10_27+qd(2);
    VIcp10_310 = ORcp10_310+ORcp10_37+qd(3);
    ACcp10_110 = qdd(1)+OMcp10_26*ORcp10_37+OMcp10_29*ORcp10_310-OMcp10_36*ORcp10_27-OMcp10_39*ORcp10_210+OPcp10_26*RLcp10_37+OPcp10_29*RLcp10_310-...
 OPcp10_36*RLcp10_27-OPcp10_39*RLcp10_210;
    ACcp10_210 = qdd(2)-OMcp10_16*ORcp10_37-OMcp10_19*ORcp10_310+OMcp10_36*ORcp10_17+OMcp10_39*ORcp10_110-OPcp10_16*RLcp10_37-OPcp10_19*RLcp10_310+...
 OPcp10_36*RLcp10_17+OPcp10_39*RLcp10_110;
    ACcp10_310 = qdd(3)+OMcp10_16*ORcp10_27+OMcp10_19*ORcp10_210-OMcp10_26*ORcp10_17-OMcp10_29*ORcp10_110+OPcp10_16*RLcp10_27+OPcp10_19*RLcp10_210-...
 OPcp10_26*RLcp10_17-OPcp10_29*RLcp10_110;
    OMcp10_111 = OMcp10_110+ROcp10_410*qd(11);
    OMcp10_211 = OMcp10_210+ROcp10_510*qd(11);
    OMcp10_311 = OMcp10_310+ROcp10_610*qd(11);
    OPcp10_111 = OPcp10_19+ROcp10_18*qdd(10)+ROcp10_410*qdd(11)+qd(10)*(OMcp10_29*ROcp10_38-OMcp10_39*ROcp10_28)+qd(11)*(OMcp10_210*ROcp10_610-...
 OMcp10_310*ROcp10_510);
    OPcp10_211 = OPcp10_29+ROcp10_28*qdd(10)+ROcp10_510*qdd(11)-qd(10)*(OMcp10_19*ROcp10_38-OMcp10_39*ROcp10_18)-qd(11)*(OMcp10_110*ROcp10_610-...
 OMcp10_310*ROcp10_410);
    OPcp10_311 = OPcp10_39+ROcp10_38*qdd(10)+ROcp10_610*qdd(11)+qd(10)*(OMcp10_19*ROcp10_28-OMcp10_29*ROcp10_18)+qd(11)*(OMcp10_110*ROcp10_510-...
 OMcp10_210*ROcp10_410);

% = = Block_1_0_0_11_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp10_110;
    sens.P(2) = POcp10_210;
    sens.P(3) = POcp10_310;
    sens.R(1,1) = ROcp10_111;
    sens.R(1,2) = ROcp10_211;
    sens.R(1,3) = ROcp10_311;
    sens.R(2,1) = ROcp10_410;
    sens.R(2,2) = ROcp10_510;
    sens.R(2,3) = ROcp10_610;
    sens.R(3,1) = ROcp10_711;
    sens.R(3,2) = ROcp10_811;
    sens.R(3,3) = ROcp10_911;
    sens.V(1) = VIcp10_110;
    sens.V(2) = VIcp10_210;
    sens.V(3) = VIcp10_310;
    sens.OM(1) = OMcp10_111;
    sens.OM(2) = OMcp10_211;
    sens.OM(3) = OMcp10_311;
    sens.A(1) = ACcp10_110;
    sens.A(2) = ACcp10_210;
    sens.A(3) = ACcp10_310;
    sens.OMP(1) = OPcp10_111;
    sens.OMP(2) = OPcp10_211;
    sens.OMP(3) = OPcp10_311;
 
% 
case 12, 


% = = Block_1_0_0_12_0_1 = = 
 
% Sensor Kinematics 


    ROcp11_45 = -S4*C5;
    ROcp11_55 = C4*C5;
    ROcp11_75 = S4*S5;
    ROcp11_85 = -C4*S5;
    ROcp11_16 = -(ROcp11_75*S6-C4*C6);
    ROcp11_26 = -(ROcp11_85*S6-S4*C6);
    ROcp11_36 = -C5*S6;
    ROcp11_76 = ROcp11_75*C6+C4*S6;
    ROcp11_86 = ROcp11_85*C6+S4*S6;
    ROcp11_96 = C5*C6;
    OMcp11_15 = qd(5)*C4;
    OMcp11_25 = qd(5)*S4;
    OMcp11_16 = OMcp11_15+ROcp11_45*qd(6);
    OMcp11_26 = OMcp11_25+ROcp11_55*qd(6);
    OMcp11_36 = qd(4)+qd(6)*S5;
    OPcp11_16 = ROcp11_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp11_25*S5-ROcp11_55*qd(4));
    OPcp11_26 = ROcp11_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp11_15*S5-ROcp11_45*qd(4));
    OPcp11_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_12_0_2 = = 
 
% Sensor Kinematics 


    ROcp11_17 = ROcp11_16*C7+ROcp11_45*S7;
    ROcp11_27 = ROcp11_26*C7+ROcp11_55*S7;
    ROcp11_37 = ROcp11_36*C7+S5*S7;
    ROcp11_47 = -(ROcp11_16*S7-ROcp11_45*C7);
    ROcp11_57 = -(ROcp11_26*S7-ROcp11_55*C7);
    ROcp11_67 = -(ROcp11_36*S7-S5*C7);
    ROcp11_18 = ROcp11_17*C8-ROcp11_76*S8;
    ROcp11_28 = ROcp11_27*C8-ROcp11_86*S8;
    ROcp11_38 = ROcp11_37*C8-ROcp11_96*S8;
    ROcp11_78 = ROcp11_17*S8+ROcp11_76*C8;
    ROcp11_88 = ROcp11_27*S8+ROcp11_86*C8;
    ROcp11_98 = ROcp11_37*S8+ROcp11_96*C8;
    ROcp11_49 = ROcp11_47*C9+ROcp11_78*S9;
    ROcp11_59 = ROcp11_57*C9+ROcp11_88*S9;
    ROcp11_69 = ROcp11_67*C9+ROcp11_98*S9;
    ROcp11_79 = -(ROcp11_47*S9-ROcp11_78*C9);
    ROcp11_89 = -(ROcp11_57*S9-ROcp11_88*C9);
    ROcp11_99 = -(ROcp11_67*S9-ROcp11_98*C9);
    ROcp11_410 = ROcp11_49*C10+ROcp11_79*S10;
    ROcp11_510 = ROcp11_59*C10+ROcp11_89*S10;
    ROcp11_610 = ROcp11_69*C10+ROcp11_99*S10;
    ROcp11_710 = -(ROcp11_49*S10-ROcp11_79*C10);
    ROcp11_810 = -(ROcp11_59*S10-ROcp11_89*C10);
    ROcp11_910 = -(ROcp11_69*S10-ROcp11_99*C10);
    ROcp11_111 = ROcp11_18*C11-ROcp11_710*S11;
    ROcp11_211 = ROcp11_28*C11-ROcp11_810*S11;
    ROcp11_311 = ROcp11_38*C11-ROcp11_910*S11;
    ROcp11_711 = ROcp11_18*S11+ROcp11_710*C11;
    ROcp11_811 = ROcp11_28*S11+ROcp11_810*C11;
    ROcp11_911 = ROcp11_38*S11+ROcp11_910*C11;
    ROcp11_112 = ROcp11_111*C12+ROcp11_410*S12;
    ROcp11_212 = ROcp11_211*C12+ROcp11_510*S12;
    ROcp11_312 = ROcp11_311*C12+ROcp11_610*S12;
    ROcp11_412 = -(ROcp11_111*S12-ROcp11_410*C12);
    ROcp11_512 = -(ROcp11_211*S12-ROcp11_510*C12);
    ROcp11_612 = -(ROcp11_311*S12-ROcp11_610*C12);
    RLcp11_17 = ROcp11_16*s.dpt(1,1)+ROcp11_45*s.dpt(2,1)+ROcp11_76*s.dpt(3,1);
    RLcp11_27 = ROcp11_26*s.dpt(1,1)+ROcp11_55*s.dpt(2,1)+ROcp11_86*s.dpt(3,1);
    RLcp11_37 = ROcp11_36*s.dpt(1,1)+ROcp11_96*s.dpt(3,1)+s.dpt(2,1)*S5;
    OMcp11_17 = OMcp11_16+ROcp11_76*qd(7);
    OMcp11_27 = OMcp11_26+ROcp11_86*qd(7);
    OMcp11_37 = OMcp11_36+ROcp11_96*qd(7);
    ORcp11_17 = OMcp11_26*RLcp11_37-OMcp11_36*RLcp11_27;
    ORcp11_27 = -(OMcp11_16*RLcp11_37-OMcp11_36*RLcp11_17);
    ORcp11_37 = OMcp11_16*RLcp11_27-OMcp11_26*RLcp11_17;
    OMcp11_18 = OMcp11_17+ROcp11_47*qd(8);
    OMcp11_28 = OMcp11_27+ROcp11_57*qd(8);
    OMcp11_38 = OMcp11_37+ROcp11_67*qd(8);
    OMcp11_19 = OMcp11_18+ROcp11_18*qd(9);
    OMcp11_29 = OMcp11_28+ROcp11_28*qd(9);
    OMcp11_39 = OMcp11_38+ROcp11_38*qd(9);
    OPcp11_19 = OPcp11_16+ROcp11_18*qdd(9)+ROcp11_47*qdd(8)+ROcp11_76*qdd(7)+qd(7)*(OMcp11_26*ROcp11_96-OMcp11_36*ROcp11_86)+qd(8)*(OMcp11_27*...
 ROcp11_67-OMcp11_37*ROcp11_57)+qd(9)*(OMcp11_28*ROcp11_38-OMcp11_38*ROcp11_28);
    OPcp11_29 = OPcp11_26+ROcp11_28*qdd(9)+ROcp11_57*qdd(8)+ROcp11_86*qdd(7)-qd(7)*(OMcp11_16*ROcp11_96-OMcp11_36*ROcp11_76)-qd(8)*(OMcp11_17*...
 ROcp11_67-OMcp11_37*ROcp11_47)-qd(9)*(OMcp11_18*ROcp11_38-OMcp11_38*ROcp11_18);
    OPcp11_39 = OPcp11_36+ROcp11_38*qdd(9)+ROcp11_67*qdd(8)+ROcp11_96*qdd(7)+qd(7)*(OMcp11_16*ROcp11_86-OMcp11_26*ROcp11_76)+qd(8)*(OMcp11_17*...
 ROcp11_57-OMcp11_27*ROcp11_47)+qd(9)*(OMcp11_18*ROcp11_28-OMcp11_28*ROcp11_18);
    RLcp11_110 = ROcp11_49*s.dpt(2,24);
    RLcp11_210 = ROcp11_59*s.dpt(2,24);
    RLcp11_310 = ROcp11_69*s.dpt(2,24);
    POcp11_110 = RLcp11_110+RLcp11_17+q(1);
    POcp11_210 = RLcp11_210+RLcp11_27+q(2);
    POcp11_310 = RLcp11_310+RLcp11_37+q(3);
    OMcp11_110 = OMcp11_19+ROcp11_18*qd(10);
    OMcp11_210 = OMcp11_29+ROcp11_28*qd(10);
    OMcp11_310 = OMcp11_39+ROcp11_38*qd(10);
    ORcp11_110 = OMcp11_29*RLcp11_310-OMcp11_39*RLcp11_210;
    ORcp11_210 = -(OMcp11_19*RLcp11_310-OMcp11_39*RLcp11_110);
    ORcp11_310 = OMcp11_19*RLcp11_210-OMcp11_29*RLcp11_110;
    VIcp11_110 = ORcp11_110+ORcp11_17+qd(1);
    VIcp11_210 = ORcp11_210+ORcp11_27+qd(2);
    VIcp11_310 = ORcp11_310+ORcp11_37+qd(3);
    ACcp11_110 = qdd(1)+OMcp11_26*ORcp11_37+OMcp11_29*ORcp11_310-OMcp11_36*ORcp11_27-OMcp11_39*ORcp11_210+OPcp11_26*RLcp11_37+OPcp11_29*RLcp11_310-...
 OPcp11_36*RLcp11_27-OPcp11_39*RLcp11_210;
    ACcp11_210 = qdd(2)-OMcp11_16*ORcp11_37-OMcp11_19*ORcp11_310+OMcp11_36*ORcp11_17+OMcp11_39*ORcp11_110-OPcp11_16*RLcp11_37-OPcp11_19*RLcp11_310+...
 OPcp11_36*RLcp11_17+OPcp11_39*RLcp11_110;
    ACcp11_310 = qdd(3)+OMcp11_16*ORcp11_27+OMcp11_19*ORcp11_210-OMcp11_26*ORcp11_17-OMcp11_29*ORcp11_110+OPcp11_16*RLcp11_27+OPcp11_19*RLcp11_210-...
 OPcp11_26*RLcp11_17-OPcp11_29*RLcp11_110;
    OMcp11_111 = OMcp11_110+ROcp11_410*qd(11);
    OMcp11_211 = OMcp11_210+ROcp11_510*qd(11);
    OMcp11_311 = OMcp11_310+ROcp11_610*qd(11);
    OMcp11_112 = OMcp11_111+ROcp11_711*qd(12);
    OMcp11_212 = OMcp11_211+ROcp11_811*qd(12);
    OMcp11_312 = OMcp11_311+ROcp11_911*qd(12);
    OPcp11_112 = OPcp11_19+ROcp11_18*qdd(10)+ROcp11_410*qdd(11)+ROcp11_711*qdd(12)+qd(10)*(OMcp11_29*ROcp11_38-OMcp11_39*ROcp11_28)+qd(11)*(...
 OMcp11_210*ROcp11_610-OMcp11_310*ROcp11_510)+qd(12)*(OMcp11_211*ROcp11_911-OMcp11_311*ROcp11_811);
    OPcp11_212 = OPcp11_29+ROcp11_28*qdd(10)+ROcp11_510*qdd(11)+ROcp11_811*qdd(12)-qd(10)*(OMcp11_19*ROcp11_38-OMcp11_39*ROcp11_18)-qd(11)*(...
 OMcp11_110*ROcp11_610-OMcp11_310*ROcp11_410)-qd(12)*(OMcp11_111*ROcp11_911-OMcp11_311*ROcp11_711);
    OPcp11_312 = OPcp11_39+ROcp11_38*qdd(10)+ROcp11_610*qdd(11)+ROcp11_911*qdd(12)+qd(10)*(OMcp11_19*ROcp11_28-OMcp11_29*ROcp11_18)+qd(11)*(...
 OMcp11_110*ROcp11_510-OMcp11_210*ROcp11_410)+qd(12)*(OMcp11_111*ROcp11_811-OMcp11_211*ROcp11_711);

% = = Block_1_0_0_12_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp11_110;
    sens.P(2) = POcp11_210;
    sens.P(3) = POcp11_310;
    sens.R(1,1) = ROcp11_112;
    sens.R(1,2) = ROcp11_212;
    sens.R(1,3) = ROcp11_312;
    sens.R(2,1) = ROcp11_412;
    sens.R(2,2) = ROcp11_512;
    sens.R(2,3) = ROcp11_612;
    sens.R(3,1) = ROcp11_711;
    sens.R(3,2) = ROcp11_811;
    sens.R(3,3) = ROcp11_911;
    sens.V(1) = VIcp11_110;
    sens.V(2) = VIcp11_210;
    sens.V(3) = VIcp11_310;
    sens.OM(1) = OMcp11_112;
    sens.OM(2) = OMcp11_212;
    sens.OM(3) = OMcp11_312;
    sens.A(1) = ACcp11_110;
    sens.A(2) = ACcp11_210;
    sens.A(3) = ACcp11_310;
    sens.OMP(1) = OPcp11_112;
    sens.OMP(2) = OPcp11_212;
    sens.OMP(3) = OPcp11_312;
 
% 
case 13, 


% = = Block_1_0_0_13_0_1 = = 
 
% Sensor Kinematics 


    ROcp12_45 = -S4*C5;
    ROcp12_55 = C4*C5;
    ROcp12_75 = S4*S5;
    ROcp12_85 = -C4*S5;
    ROcp12_16 = -(ROcp12_75*S6-C4*C6);
    ROcp12_26 = -(ROcp12_85*S6-S4*C6);
    ROcp12_36 = -C5*S6;
    ROcp12_76 = ROcp12_75*C6+C4*S6;
    ROcp12_86 = ROcp12_85*C6+S4*S6;
    ROcp12_96 = C5*C6;
    OMcp12_15 = qd(5)*C4;
    OMcp12_25 = qd(5)*S4;
    OMcp12_16 = OMcp12_15+ROcp12_45*qd(6);
    OMcp12_26 = OMcp12_25+ROcp12_55*qd(6);
    OMcp12_36 = qd(4)+qd(6)*S5;
    OPcp12_16 = ROcp12_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp12_25*S5-ROcp12_55*qd(4));
    OPcp12_26 = ROcp12_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp12_15*S5-ROcp12_45*qd(4));
    OPcp12_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_13_0_2 = = 
 
% Sensor Kinematics 


    ROcp12_17 = ROcp12_16*C7+ROcp12_45*S7;
    ROcp12_27 = ROcp12_26*C7+ROcp12_55*S7;
    ROcp12_37 = ROcp12_36*C7+S5*S7;
    ROcp12_47 = -(ROcp12_16*S7-ROcp12_45*C7);
    ROcp12_57 = -(ROcp12_26*S7-ROcp12_55*C7);
    ROcp12_67 = -(ROcp12_36*S7-S5*C7);
    ROcp12_18 = ROcp12_17*C8-ROcp12_76*S8;
    ROcp12_28 = ROcp12_27*C8-ROcp12_86*S8;
    ROcp12_38 = ROcp12_37*C8-ROcp12_96*S8;
    ROcp12_78 = ROcp12_17*S8+ROcp12_76*C8;
    ROcp12_88 = ROcp12_27*S8+ROcp12_86*C8;
    ROcp12_98 = ROcp12_37*S8+ROcp12_96*C8;
    ROcp12_49 = ROcp12_47*C9+ROcp12_78*S9;
    ROcp12_59 = ROcp12_57*C9+ROcp12_88*S9;
    ROcp12_69 = ROcp12_67*C9+ROcp12_98*S9;
    ROcp12_79 = -(ROcp12_47*S9-ROcp12_78*C9);
    ROcp12_89 = -(ROcp12_57*S9-ROcp12_88*C9);
    ROcp12_99 = -(ROcp12_67*S9-ROcp12_98*C9);
    ROcp12_410 = ROcp12_49*C10+ROcp12_79*S10;
    ROcp12_510 = ROcp12_59*C10+ROcp12_89*S10;
    ROcp12_610 = ROcp12_69*C10+ROcp12_99*S10;
    ROcp12_710 = -(ROcp12_49*S10-ROcp12_79*C10);
    ROcp12_810 = -(ROcp12_59*S10-ROcp12_89*C10);
    ROcp12_910 = -(ROcp12_69*S10-ROcp12_99*C10);
    ROcp12_111 = ROcp12_18*C11-ROcp12_710*S11;
    ROcp12_211 = ROcp12_28*C11-ROcp12_810*S11;
    ROcp12_311 = ROcp12_38*C11-ROcp12_910*S11;
    ROcp12_711 = ROcp12_18*S11+ROcp12_710*C11;
    ROcp12_811 = ROcp12_28*S11+ROcp12_810*C11;
    ROcp12_911 = ROcp12_38*S11+ROcp12_910*C11;
    ROcp12_112 = ROcp12_111*C12+ROcp12_410*S12;
    ROcp12_212 = ROcp12_211*C12+ROcp12_510*S12;
    ROcp12_312 = ROcp12_311*C12+ROcp12_610*S12;
    ROcp12_412 = -(ROcp12_111*S12-ROcp12_410*C12);
    ROcp12_512 = -(ROcp12_211*S12-ROcp12_510*C12);
    ROcp12_612 = -(ROcp12_311*S12-ROcp12_610*C12);
    ROcp12_113 = ROcp12_112*C13+ROcp12_412*S13;
    ROcp12_213 = ROcp12_212*C13+ROcp12_512*S13;
    ROcp12_313 = ROcp12_312*C13+ROcp12_612*S13;
    ROcp12_413 = -(ROcp12_112*S13-ROcp12_412*C13);
    ROcp12_513 = -(ROcp12_212*S13-ROcp12_512*C13);
    ROcp12_613 = -(ROcp12_312*S13-ROcp12_612*C13);
    RLcp12_17 = ROcp12_16*s.dpt(1,1)+ROcp12_45*s.dpt(2,1)+ROcp12_76*s.dpt(3,1);
    RLcp12_27 = ROcp12_26*s.dpt(1,1)+ROcp12_55*s.dpt(2,1)+ROcp12_86*s.dpt(3,1);
    RLcp12_37 = ROcp12_36*s.dpt(1,1)+ROcp12_96*s.dpt(3,1)+s.dpt(2,1)*S5;
    OMcp12_17 = OMcp12_16+ROcp12_76*qd(7);
    OMcp12_27 = OMcp12_26+ROcp12_86*qd(7);
    OMcp12_37 = OMcp12_36+ROcp12_96*qd(7);
    ORcp12_17 = OMcp12_26*RLcp12_37-OMcp12_36*RLcp12_27;
    ORcp12_27 = -(OMcp12_16*RLcp12_37-OMcp12_36*RLcp12_17);
    ORcp12_37 = OMcp12_16*RLcp12_27-OMcp12_26*RLcp12_17;
    OMcp12_18 = OMcp12_17+ROcp12_47*qd(8);
    OMcp12_28 = OMcp12_27+ROcp12_57*qd(8);
    OMcp12_38 = OMcp12_37+ROcp12_67*qd(8);
    OMcp12_19 = OMcp12_18+ROcp12_18*qd(9);
    OMcp12_29 = OMcp12_28+ROcp12_28*qd(9);
    OMcp12_39 = OMcp12_38+ROcp12_38*qd(9);
    OPcp12_19 = OPcp12_16+ROcp12_18*qdd(9)+ROcp12_47*qdd(8)+ROcp12_76*qdd(7)+qd(7)*(OMcp12_26*ROcp12_96-OMcp12_36*ROcp12_86)+qd(8)*(OMcp12_27*...
 ROcp12_67-OMcp12_37*ROcp12_57)+qd(9)*(OMcp12_28*ROcp12_38-OMcp12_38*ROcp12_28);
    OPcp12_29 = OPcp12_26+ROcp12_28*qdd(9)+ROcp12_57*qdd(8)+ROcp12_86*qdd(7)-qd(7)*(OMcp12_16*ROcp12_96-OMcp12_36*ROcp12_76)-qd(8)*(OMcp12_17*...
 ROcp12_67-OMcp12_37*ROcp12_47)-qd(9)*(OMcp12_18*ROcp12_38-OMcp12_38*ROcp12_18);
    OPcp12_39 = OPcp12_36+ROcp12_38*qdd(9)+ROcp12_67*qdd(8)+ROcp12_96*qdd(7)+qd(7)*(OMcp12_16*ROcp12_86-OMcp12_26*ROcp12_76)+qd(8)*(OMcp12_17*...
 ROcp12_57-OMcp12_27*ROcp12_47)+qd(9)*(OMcp12_18*ROcp12_28-OMcp12_28*ROcp12_18);
    RLcp12_110 = ROcp12_49*s.dpt(2,24);
    RLcp12_210 = ROcp12_59*s.dpt(2,24);
    RLcp12_310 = ROcp12_69*s.dpt(2,24);
    OMcp12_110 = OMcp12_19+ROcp12_18*qd(10);
    OMcp12_210 = OMcp12_29+ROcp12_28*qd(10);
    OMcp12_310 = OMcp12_39+ROcp12_38*qd(10);
    ORcp12_110 = OMcp12_29*RLcp12_310-OMcp12_39*RLcp12_210;
    ORcp12_210 = -(OMcp12_19*RLcp12_310-OMcp12_39*RLcp12_110);
    ORcp12_310 = OMcp12_19*RLcp12_210-OMcp12_29*RLcp12_110;
    OMcp12_111 = OMcp12_110+ROcp12_410*qd(11);
    OMcp12_211 = OMcp12_210+ROcp12_510*qd(11);
    OMcp12_311 = OMcp12_310+ROcp12_610*qd(11);
    OMcp12_112 = OMcp12_111+ROcp12_711*qd(12);
    OMcp12_212 = OMcp12_211+ROcp12_811*qd(12);
    OMcp12_312 = OMcp12_311+ROcp12_911*qd(12);
    OPcp12_112 = OPcp12_19+ROcp12_18*qdd(10)+ROcp12_410*qdd(11)+ROcp12_711*qdd(12)+qd(10)*(OMcp12_29*ROcp12_38-OMcp12_39*ROcp12_28)+qd(11)*(...
 OMcp12_210*ROcp12_610-OMcp12_310*ROcp12_510)+qd(12)*(OMcp12_211*ROcp12_911-OMcp12_311*ROcp12_811);
    OPcp12_212 = OPcp12_29+ROcp12_28*qdd(10)+ROcp12_510*qdd(11)+ROcp12_811*qdd(12)-qd(10)*(OMcp12_19*ROcp12_38-OMcp12_39*ROcp12_18)-qd(11)*(...
 OMcp12_110*ROcp12_610-OMcp12_310*ROcp12_410)-qd(12)*(OMcp12_111*ROcp12_911-OMcp12_311*ROcp12_711);
    OPcp12_312 = OPcp12_39+ROcp12_38*qdd(10)+ROcp12_610*qdd(11)+ROcp12_911*qdd(12)+qd(10)*(OMcp12_19*ROcp12_28-OMcp12_29*ROcp12_18)+qd(11)*(...
 OMcp12_110*ROcp12_510-OMcp12_210*ROcp12_410)+qd(12)*(OMcp12_111*ROcp12_811-OMcp12_211*ROcp12_711);
    RLcp12_113 = ROcp12_112*s.dpt(1,27)+ROcp12_412*s.dpt(2,27)+ROcp12_711*s.dpt(3,27);
    RLcp12_213 = ROcp12_212*s.dpt(1,27)+ROcp12_512*s.dpt(2,27)+ROcp12_811*s.dpt(3,27);
    RLcp12_313 = ROcp12_312*s.dpt(1,27)+ROcp12_612*s.dpt(2,27)+ROcp12_911*s.dpt(3,27);
    POcp12_113 = RLcp12_110+RLcp12_113+RLcp12_17+q(1);
    POcp12_213 = RLcp12_210+RLcp12_213+RLcp12_27+q(2);
    POcp12_313 = RLcp12_310+RLcp12_313+RLcp12_37+q(3);
    OMcp12_113 = OMcp12_112+ROcp12_711*qd(13);
    OMcp12_213 = OMcp12_212+ROcp12_811*qd(13);
    OMcp12_313 = OMcp12_312+ROcp12_911*qd(13);
    ORcp12_113 = OMcp12_212*RLcp12_313-OMcp12_312*RLcp12_213;
    ORcp12_213 = -(OMcp12_112*RLcp12_313-OMcp12_312*RLcp12_113);
    ORcp12_313 = OMcp12_112*RLcp12_213-OMcp12_212*RLcp12_113;
    VIcp12_113 = ORcp12_110+ORcp12_113+ORcp12_17+qd(1);
    VIcp12_213 = ORcp12_210+ORcp12_213+ORcp12_27+qd(2);
    VIcp12_313 = ORcp12_310+ORcp12_313+ORcp12_37+qd(3);
    OPcp12_113 = OPcp12_112+ROcp12_711*qdd(13)+qd(13)*(OMcp12_212*ROcp12_911-OMcp12_312*ROcp12_811);
    OPcp12_213 = OPcp12_212+ROcp12_811*qdd(13)-qd(13)*(OMcp12_112*ROcp12_911-OMcp12_312*ROcp12_711);
    OPcp12_313 = OPcp12_312+ROcp12_911*qdd(13)+qd(13)*(OMcp12_112*ROcp12_811-OMcp12_212*ROcp12_711);
    ACcp12_113 = qdd(1)+OMcp12_212*ORcp12_313+OMcp12_26*ORcp12_37+OMcp12_29*ORcp12_310-OMcp12_312*ORcp12_213-OMcp12_36*ORcp12_27-OMcp12_39*...
 ORcp12_210+OPcp12_212*RLcp12_313+OPcp12_26*RLcp12_37+OPcp12_29*RLcp12_310-OPcp12_312*RLcp12_213-OPcp12_36*RLcp12_27-OPcp12_39*RLcp12_210;
    ACcp12_213 = qdd(2)-OMcp12_112*ORcp12_313-OMcp12_16*ORcp12_37-OMcp12_19*ORcp12_310+OMcp12_312*ORcp12_113+OMcp12_36*ORcp12_17+OMcp12_39*...
 ORcp12_110-OPcp12_112*RLcp12_313-OPcp12_16*RLcp12_37-OPcp12_19*RLcp12_310+OPcp12_312*RLcp12_113+OPcp12_36*RLcp12_17+OPcp12_39*RLcp12_110;
    ACcp12_313 = qdd(3)+OMcp12_112*ORcp12_213+OMcp12_16*ORcp12_27+OMcp12_19*ORcp12_210-OMcp12_212*ORcp12_113-OMcp12_26*ORcp12_17-OMcp12_29*...
 ORcp12_110+OPcp12_112*RLcp12_213+OPcp12_16*RLcp12_27+OPcp12_19*RLcp12_210-OPcp12_212*RLcp12_113-OPcp12_26*RLcp12_17-OPcp12_29*RLcp12_110;

% = = Block_1_0_0_13_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp12_113;
    sens.P(2) = POcp12_213;
    sens.P(3) = POcp12_313;
    sens.R(1,1) = ROcp12_113;
    sens.R(1,2) = ROcp12_213;
    sens.R(1,3) = ROcp12_313;
    sens.R(2,1) = ROcp12_413;
    sens.R(2,2) = ROcp12_513;
    sens.R(2,3) = ROcp12_613;
    sens.R(3,1) = ROcp12_711;
    sens.R(3,2) = ROcp12_811;
    sens.R(3,3) = ROcp12_911;
    sens.V(1) = VIcp12_113;
    sens.V(2) = VIcp12_213;
    sens.V(3) = VIcp12_313;
    sens.OM(1) = OMcp12_113;
    sens.OM(2) = OMcp12_213;
    sens.OM(3) = OMcp12_313;
    sens.A(1) = ACcp12_113;
    sens.A(2) = ACcp12_213;
    sens.A(3) = ACcp12_313;
    sens.OMP(1) = OPcp12_113;
    sens.OMP(2) = OPcp12_213;
    sens.OMP(3) = OPcp12_313;
 
% 
case 14, 


% = = Block_1_0_0_14_0_1 = = 
 
% Sensor Kinematics 


    ROcp13_45 = -S4*C5;
    ROcp13_55 = C4*C5;
    ROcp13_75 = S4*S5;
    ROcp13_85 = -C4*S5;
    ROcp13_16 = -(ROcp13_75*S6-C4*C6);
    ROcp13_26 = -(ROcp13_85*S6-S4*C6);
    ROcp13_36 = -C5*S6;
    ROcp13_76 = ROcp13_75*C6+C4*S6;
    ROcp13_86 = ROcp13_85*C6+S4*S6;
    ROcp13_96 = C5*C6;
    OMcp13_15 = qd(5)*C4;
    OMcp13_25 = qd(5)*S4;
    OMcp13_16 = OMcp13_15+ROcp13_45*qd(6);
    OMcp13_26 = OMcp13_25+ROcp13_55*qd(6);
    OMcp13_36 = qd(4)+qd(6)*S5;
    OPcp13_16 = ROcp13_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp13_25*S5-ROcp13_55*qd(4));
    OPcp13_26 = ROcp13_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp13_15*S5-ROcp13_45*qd(4));
    OPcp13_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_14_0_2 = = 
 
% Sensor Kinematics 


    ROcp13_17 = ROcp13_16*C7+ROcp13_45*S7;
    ROcp13_27 = ROcp13_26*C7+ROcp13_55*S7;
    ROcp13_37 = ROcp13_36*C7+S5*S7;
    ROcp13_47 = -(ROcp13_16*S7-ROcp13_45*C7);
    ROcp13_57 = -(ROcp13_26*S7-ROcp13_55*C7);
    ROcp13_67 = -(ROcp13_36*S7-S5*C7);
    ROcp13_18 = ROcp13_17*C8-ROcp13_76*S8;
    ROcp13_28 = ROcp13_27*C8-ROcp13_86*S8;
    ROcp13_38 = ROcp13_37*C8-ROcp13_96*S8;
    ROcp13_78 = ROcp13_17*S8+ROcp13_76*C8;
    ROcp13_88 = ROcp13_27*S8+ROcp13_86*C8;
    ROcp13_98 = ROcp13_37*S8+ROcp13_96*C8;
    ROcp13_49 = ROcp13_47*C9+ROcp13_78*S9;
    ROcp13_59 = ROcp13_57*C9+ROcp13_88*S9;
    ROcp13_69 = ROcp13_67*C9+ROcp13_98*S9;
    ROcp13_79 = -(ROcp13_47*S9-ROcp13_78*C9);
    ROcp13_89 = -(ROcp13_57*S9-ROcp13_88*C9);
    ROcp13_99 = -(ROcp13_67*S9-ROcp13_98*C9);
    ROcp13_410 = ROcp13_49*C10+ROcp13_79*S10;
    ROcp13_510 = ROcp13_59*C10+ROcp13_89*S10;
    ROcp13_610 = ROcp13_69*C10+ROcp13_99*S10;
    ROcp13_710 = -(ROcp13_49*S10-ROcp13_79*C10);
    ROcp13_810 = -(ROcp13_59*S10-ROcp13_89*C10);
    ROcp13_910 = -(ROcp13_69*S10-ROcp13_99*C10);
    ROcp13_111 = ROcp13_18*C11-ROcp13_710*S11;
    ROcp13_211 = ROcp13_28*C11-ROcp13_810*S11;
    ROcp13_311 = ROcp13_38*C11-ROcp13_910*S11;
    ROcp13_711 = ROcp13_18*S11+ROcp13_710*C11;
    ROcp13_811 = ROcp13_28*S11+ROcp13_810*C11;
    ROcp13_911 = ROcp13_38*S11+ROcp13_910*C11;
    ROcp13_112 = ROcp13_111*C12+ROcp13_410*S12;
    ROcp13_212 = ROcp13_211*C12+ROcp13_510*S12;
    ROcp13_312 = ROcp13_311*C12+ROcp13_610*S12;
    ROcp13_412 = -(ROcp13_111*S12-ROcp13_410*C12);
    ROcp13_512 = -(ROcp13_211*S12-ROcp13_510*C12);
    ROcp13_612 = -(ROcp13_311*S12-ROcp13_610*C12);
    ROcp13_113 = ROcp13_112*C13+ROcp13_412*S13;
    ROcp13_213 = ROcp13_212*C13+ROcp13_512*S13;
    ROcp13_313 = ROcp13_312*C13+ROcp13_612*S13;
    ROcp13_413 = -(ROcp13_112*S13-ROcp13_412*C13);
    ROcp13_513 = -(ROcp13_212*S13-ROcp13_512*C13);
    ROcp13_613 = -(ROcp13_312*S13-ROcp13_612*C13);
    ROcp13_414 = ROcp13_413*C14+ROcp13_711*S14;
    ROcp13_514 = ROcp13_513*C14+ROcp13_811*S14;
    ROcp13_614 = ROcp13_613*C14+ROcp13_911*S14;
    ROcp13_714 = -(ROcp13_413*S14-ROcp13_711*C14);
    ROcp13_814 = -(ROcp13_513*S14-ROcp13_811*C14);
    ROcp13_914 = -(ROcp13_613*S14-ROcp13_911*C14);
    RLcp13_17 = ROcp13_16*s.dpt(1,1)+ROcp13_45*s.dpt(2,1)+ROcp13_76*s.dpt(3,1);
    RLcp13_27 = ROcp13_26*s.dpt(1,1)+ROcp13_55*s.dpt(2,1)+ROcp13_86*s.dpt(3,1);
    RLcp13_37 = ROcp13_36*s.dpt(1,1)+ROcp13_96*s.dpt(3,1)+s.dpt(2,1)*S5;
    OMcp13_17 = OMcp13_16+ROcp13_76*qd(7);
    OMcp13_27 = OMcp13_26+ROcp13_86*qd(7);
    OMcp13_37 = OMcp13_36+ROcp13_96*qd(7);
    ORcp13_17 = OMcp13_26*RLcp13_37-OMcp13_36*RLcp13_27;
    ORcp13_27 = -(OMcp13_16*RLcp13_37-OMcp13_36*RLcp13_17);
    ORcp13_37 = OMcp13_16*RLcp13_27-OMcp13_26*RLcp13_17;
    OMcp13_18 = OMcp13_17+ROcp13_47*qd(8);
    OMcp13_28 = OMcp13_27+ROcp13_57*qd(8);
    OMcp13_38 = OMcp13_37+ROcp13_67*qd(8);
    OMcp13_19 = OMcp13_18+ROcp13_18*qd(9);
    OMcp13_29 = OMcp13_28+ROcp13_28*qd(9);
    OMcp13_39 = OMcp13_38+ROcp13_38*qd(9);
    OPcp13_19 = OPcp13_16+ROcp13_18*qdd(9)+ROcp13_47*qdd(8)+ROcp13_76*qdd(7)+qd(7)*(OMcp13_26*ROcp13_96-OMcp13_36*ROcp13_86)+qd(8)*(OMcp13_27*...
 ROcp13_67-OMcp13_37*ROcp13_57)+qd(9)*(OMcp13_28*ROcp13_38-OMcp13_38*ROcp13_28);
    OPcp13_29 = OPcp13_26+ROcp13_28*qdd(9)+ROcp13_57*qdd(8)+ROcp13_86*qdd(7)-qd(7)*(OMcp13_16*ROcp13_96-OMcp13_36*ROcp13_76)-qd(8)*(OMcp13_17*...
 ROcp13_67-OMcp13_37*ROcp13_47)-qd(9)*(OMcp13_18*ROcp13_38-OMcp13_38*ROcp13_18);
    OPcp13_39 = OPcp13_36+ROcp13_38*qdd(9)+ROcp13_67*qdd(8)+ROcp13_96*qdd(7)+qd(7)*(OMcp13_16*ROcp13_86-OMcp13_26*ROcp13_76)+qd(8)*(OMcp13_17*...
 ROcp13_57-OMcp13_27*ROcp13_47)+qd(9)*(OMcp13_18*ROcp13_28-OMcp13_28*ROcp13_18);
    RLcp13_110 = ROcp13_49*s.dpt(2,24);
    RLcp13_210 = ROcp13_59*s.dpt(2,24);
    RLcp13_310 = ROcp13_69*s.dpt(2,24);
    OMcp13_110 = OMcp13_19+ROcp13_18*qd(10);
    OMcp13_210 = OMcp13_29+ROcp13_28*qd(10);
    OMcp13_310 = OMcp13_39+ROcp13_38*qd(10);
    ORcp13_110 = OMcp13_29*RLcp13_310-OMcp13_39*RLcp13_210;
    ORcp13_210 = -(OMcp13_19*RLcp13_310-OMcp13_39*RLcp13_110);
    ORcp13_310 = OMcp13_19*RLcp13_210-OMcp13_29*RLcp13_110;
    OMcp13_111 = OMcp13_110+ROcp13_410*qd(11);
    OMcp13_211 = OMcp13_210+ROcp13_510*qd(11);
    OMcp13_311 = OMcp13_310+ROcp13_610*qd(11);
    OMcp13_112 = OMcp13_111+ROcp13_711*qd(12);
    OMcp13_212 = OMcp13_211+ROcp13_811*qd(12);
    OMcp13_312 = OMcp13_311+ROcp13_911*qd(12);
    OPcp13_112 = OPcp13_19+ROcp13_18*qdd(10)+ROcp13_410*qdd(11)+ROcp13_711*qdd(12)+qd(10)*(OMcp13_29*ROcp13_38-OMcp13_39*ROcp13_28)+qd(11)*(...
 OMcp13_210*ROcp13_610-OMcp13_310*ROcp13_510)+qd(12)*(OMcp13_211*ROcp13_911-OMcp13_311*ROcp13_811);
    OPcp13_212 = OPcp13_29+ROcp13_28*qdd(10)+ROcp13_510*qdd(11)+ROcp13_811*qdd(12)-qd(10)*(OMcp13_19*ROcp13_38-OMcp13_39*ROcp13_18)-qd(11)*(...
 OMcp13_110*ROcp13_610-OMcp13_310*ROcp13_410)-qd(12)*(OMcp13_111*ROcp13_911-OMcp13_311*ROcp13_711);
    OPcp13_312 = OPcp13_39+ROcp13_38*qdd(10)+ROcp13_610*qdd(11)+ROcp13_911*qdd(12)+qd(10)*(OMcp13_19*ROcp13_28-OMcp13_29*ROcp13_18)+qd(11)*(...
 OMcp13_110*ROcp13_510-OMcp13_210*ROcp13_410)+qd(12)*(OMcp13_111*ROcp13_811-OMcp13_211*ROcp13_711);
    RLcp13_113 = ROcp13_112*s.dpt(1,27)+ROcp13_412*s.dpt(2,27)+ROcp13_711*s.dpt(3,27);
    RLcp13_213 = ROcp13_212*s.dpt(1,27)+ROcp13_512*s.dpt(2,27)+ROcp13_811*s.dpt(3,27);
    RLcp13_313 = ROcp13_312*s.dpt(1,27)+ROcp13_612*s.dpt(2,27)+ROcp13_911*s.dpt(3,27);
    POcp13_113 = RLcp13_110+RLcp13_113+RLcp13_17+q(1);
    POcp13_213 = RLcp13_210+RLcp13_213+RLcp13_27+q(2);
    POcp13_313 = RLcp13_310+RLcp13_313+RLcp13_37+q(3);
    OMcp13_113 = OMcp13_112+ROcp13_711*qd(13);
    OMcp13_213 = OMcp13_212+ROcp13_811*qd(13);
    OMcp13_313 = OMcp13_312+ROcp13_911*qd(13);
    ORcp13_113 = OMcp13_212*RLcp13_313-OMcp13_312*RLcp13_213;
    ORcp13_213 = -(OMcp13_112*RLcp13_313-OMcp13_312*RLcp13_113);
    ORcp13_313 = OMcp13_112*RLcp13_213-OMcp13_212*RLcp13_113;
    VIcp13_113 = ORcp13_110+ORcp13_113+ORcp13_17+qd(1);
    VIcp13_213 = ORcp13_210+ORcp13_213+ORcp13_27+qd(2);
    VIcp13_313 = ORcp13_310+ORcp13_313+ORcp13_37+qd(3);
    ACcp13_113 = qdd(1)+OMcp13_212*ORcp13_313+OMcp13_26*ORcp13_37+OMcp13_29*ORcp13_310-OMcp13_312*ORcp13_213-OMcp13_36*ORcp13_27-OMcp13_39*...
 ORcp13_210+OPcp13_212*RLcp13_313+OPcp13_26*RLcp13_37+OPcp13_29*RLcp13_310-OPcp13_312*RLcp13_213-OPcp13_36*RLcp13_27-OPcp13_39*RLcp13_210;
    ACcp13_213 = qdd(2)-OMcp13_112*ORcp13_313-OMcp13_16*ORcp13_37-OMcp13_19*ORcp13_310+OMcp13_312*ORcp13_113+OMcp13_36*ORcp13_17+OMcp13_39*...
 ORcp13_110-OPcp13_112*RLcp13_313-OPcp13_16*RLcp13_37-OPcp13_19*RLcp13_310+OPcp13_312*RLcp13_113+OPcp13_36*RLcp13_17+OPcp13_39*RLcp13_110;
    ACcp13_313 = qdd(3)+OMcp13_112*ORcp13_213+OMcp13_16*ORcp13_27+OMcp13_19*ORcp13_210-OMcp13_212*ORcp13_113-OMcp13_26*ORcp13_17-OMcp13_29*...
 ORcp13_110+OPcp13_112*RLcp13_213+OPcp13_16*RLcp13_27+OPcp13_19*RLcp13_210-OPcp13_212*RLcp13_113-OPcp13_26*RLcp13_17-OPcp13_29*RLcp13_110;
    OMcp13_114 = OMcp13_113+ROcp13_113*qd(14);
    OMcp13_214 = OMcp13_213+ROcp13_213*qd(14);
    OMcp13_314 = OMcp13_313+ROcp13_313*qd(14);
    OPcp13_114 = OPcp13_112+ROcp13_113*qdd(14)+ROcp13_711*qdd(13)+qd(13)*(OMcp13_212*ROcp13_911-OMcp13_312*ROcp13_811)+qd(14)*(OMcp13_213*...
 ROcp13_313-OMcp13_313*ROcp13_213);
    OPcp13_214 = OPcp13_212+ROcp13_213*qdd(14)+ROcp13_811*qdd(13)-qd(13)*(OMcp13_112*ROcp13_911-OMcp13_312*ROcp13_711)-qd(14)*(OMcp13_113*...
 ROcp13_313-OMcp13_313*ROcp13_113);
    OPcp13_314 = OPcp13_312+ROcp13_313*qdd(14)+ROcp13_911*qdd(13)+qd(13)*(OMcp13_112*ROcp13_811-OMcp13_212*ROcp13_711)+qd(14)*(OMcp13_113*...
 ROcp13_213-OMcp13_213*ROcp13_113);

% = = Block_1_0_0_14_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp13_113;
    sens.P(2) = POcp13_213;
    sens.P(3) = POcp13_313;
    sens.R(1,1) = ROcp13_113;
    sens.R(1,2) = ROcp13_213;
    sens.R(1,3) = ROcp13_313;
    sens.R(2,1) = ROcp13_414;
    sens.R(2,2) = ROcp13_514;
    sens.R(2,3) = ROcp13_614;
    sens.R(3,1) = ROcp13_714;
    sens.R(3,2) = ROcp13_814;
    sens.R(3,3) = ROcp13_914;
    sens.V(1) = VIcp13_113;
    sens.V(2) = VIcp13_213;
    sens.V(3) = VIcp13_313;
    sens.OM(1) = OMcp13_114;
    sens.OM(2) = OMcp13_214;
    sens.OM(3) = OMcp13_314;
    sens.A(1) = ACcp13_113;
    sens.A(2) = ACcp13_213;
    sens.A(3) = ACcp13_313;
    sens.OMP(1) = OPcp13_114;
    sens.OMP(2) = OPcp13_214;
    sens.OMP(3) = OPcp13_314;
 
% 
case 15, 


% = = Block_1_0_0_15_0_1 = = 
 
% Sensor Kinematics 


    ROcp14_45 = -S4*C5;
    ROcp14_55 = C4*C5;
    ROcp14_75 = S4*S5;
    ROcp14_85 = -C4*S5;
    ROcp14_16 = -(ROcp14_75*S6-C4*C6);
    ROcp14_26 = -(ROcp14_85*S6-S4*C6);
    ROcp14_36 = -C5*S6;
    ROcp14_76 = ROcp14_75*C6+C4*S6;
    ROcp14_86 = ROcp14_85*C6+S4*S6;
    ROcp14_96 = C5*C6;
    OMcp14_15 = qd(5)*C4;
    OMcp14_25 = qd(5)*S4;
    OMcp14_16 = OMcp14_15+ROcp14_45*qd(6);
    OMcp14_26 = OMcp14_25+ROcp14_55*qd(6);
    OMcp14_36 = qd(4)+qd(6)*S5;
    OPcp14_16 = ROcp14_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp14_25*S5-ROcp14_55*qd(4));
    OPcp14_26 = ROcp14_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp14_15*S5-ROcp14_45*qd(4));
    OPcp14_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_15_0_2 = = 
 
% Sensor Kinematics 


    ROcp14_17 = ROcp14_16*C7+ROcp14_45*S7;
    ROcp14_27 = ROcp14_26*C7+ROcp14_55*S7;
    ROcp14_37 = ROcp14_36*C7+S5*S7;
    ROcp14_47 = -(ROcp14_16*S7-ROcp14_45*C7);
    ROcp14_57 = -(ROcp14_26*S7-ROcp14_55*C7);
    ROcp14_67 = -(ROcp14_36*S7-S5*C7);
    ROcp14_18 = ROcp14_17*C8-ROcp14_76*S8;
    ROcp14_28 = ROcp14_27*C8-ROcp14_86*S8;
    ROcp14_38 = ROcp14_37*C8-ROcp14_96*S8;
    ROcp14_78 = ROcp14_17*S8+ROcp14_76*C8;
    ROcp14_88 = ROcp14_27*S8+ROcp14_86*C8;
    ROcp14_98 = ROcp14_37*S8+ROcp14_96*C8;
    ROcp14_49 = ROcp14_47*C9+ROcp14_78*S9;
    ROcp14_59 = ROcp14_57*C9+ROcp14_88*S9;
    ROcp14_69 = ROcp14_67*C9+ROcp14_98*S9;
    ROcp14_79 = -(ROcp14_47*S9-ROcp14_78*C9);
    ROcp14_89 = -(ROcp14_57*S9-ROcp14_88*C9);
    ROcp14_99 = -(ROcp14_67*S9-ROcp14_98*C9);
    ROcp14_410 = ROcp14_49*C10+ROcp14_79*S10;
    ROcp14_510 = ROcp14_59*C10+ROcp14_89*S10;
    ROcp14_610 = ROcp14_69*C10+ROcp14_99*S10;
    ROcp14_710 = -(ROcp14_49*S10-ROcp14_79*C10);
    ROcp14_810 = -(ROcp14_59*S10-ROcp14_89*C10);
    ROcp14_910 = -(ROcp14_69*S10-ROcp14_99*C10);
    ROcp14_111 = ROcp14_18*C11-ROcp14_710*S11;
    ROcp14_211 = ROcp14_28*C11-ROcp14_810*S11;
    ROcp14_311 = ROcp14_38*C11-ROcp14_910*S11;
    ROcp14_711 = ROcp14_18*S11+ROcp14_710*C11;
    ROcp14_811 = ROcp14_28*S11+ROcp14_810*C11;
    ROcp14_911 = ROcp14_38*S11+ROcp14_910*C11;
    ROcp14_112 = ROcp14_111*C12+ROcp14_410*S12;
    ROcp14_212 = ROcp14_211*C12+ROcp14_510*S12;
    ROcp14_312 = ROcp14_311*C12+ROcp14_610*S12;
    ROcp14_412 = -(ROcp14_111*S12-ROcp14_410*C12);
    ROcp14_512 = -(ROcp14_211*S12-ROcp14_510*C12);
    ROcp14_612 = -(ROcp14_311*S12-ROcp14_610*C12);
    ROcp14_113 = ROcp14_112*C13+ROcp14_412*S13;
    ROcp14_213 = ROcp14_212*C13+ROcp14_512*S13;
    ROcp14_313 = ROcp14_312*C13+ROcp14_612*S13;
    ROcp14_413 = -(ROcp14_112*S13-ROcp14_412*C13);
    ROcp14_513 = -(ROcp14_212*S13-ROcp14_512*C13);
    ROcp14_613 = -(ROcp14_312*S13-ROcp14_612*C13);
    ROcp14_414 = ROcp14_413*C14+ROcp14_711*S14;
    ROcp14_514 = ROcp14_513*C14+ROcp14_811*S14;
    ROcp14_614 = ROcp14_613*C14+ROcp14_911*S14;
    ROcp14_714 = -(ROcp14_413*S14-ROcp14_711*C14);
    ROcp14_814 = -(ROcp14_513*S14-ROcp14_811*C14);
    ROcp14_914 = -(ROcp14_613*S14-ROcp14_911*C14);
    ROcp14_115 = ROcp14_113*C15-ROcp14_714*S15;
    ROcp14_215 = ROcp14_213*C15-ROcp14_814*S15;
    ROcp14_315 = ROcp14_313*C15-ROcp14_914*S15;
    ROcp14_715 = ROcp14_113*S15+ROcp14_714*C15;
    ROcp14_815 = ROcp14_213*S15+ROcp14_814*C15;
    ROcp14_915 = ROcp14_313*S15+ROcp14_914*C15;
    RLcp14_17 = ROcp14_16*s.dpt(1,1)+ROcp14_45*s.dpt(2,1)+ROcp14_76*s.dpt(3,1);
    RLcp14_27 = ROcp14_26*s.dpt(1,1)+ROcp14_55*s.dpt(2,1)+ROcp14_86*s.dpt(3,1);
    RLcp14_37 = ROcp14_36*s.dpt(1,1)+ROcp14_96*s.dpt(3,1)+s.dpt(2,1)*S5;
    OMcp14_17 = OMcp14_16+ROcp14_76*qd(7);
    OMcp14_27 = OMcp14_26+ROcp14_86*qd(7);
    OMcp14_37 = OMcp14_36+ROcp14_96*qd(7);
    ORcp14_17 = OMcp14_26*RLcp14_37-OMcp14_36*RLcp14_27;
    ORcp14_27 = -(OMcp14_16*RLcp14_37-OMcp14_36*RLcp14_17);
    ORcp14_37 = OMcp14_16*RLcp14_27-OMcp14_26*RLcp14_17;
    OMcp14_18 = OMcp14_17+ROcp14_47*qd(8);
    OMcp14_28 = OMcp14_27+ROcp14_57*qd(8);
    OMcp14_38 = OMcp14_37+ROcp14_67*qd(8);
    OMcp14_19 = OMcp14_18+ROcp14_18*qd(9);
    OMcp14_29 = OMcp14_28+ROcp14_28*qd(9);
    OMcp14_39 = OMcp14_38+ROcp14_38*qd(9);
    OPcp14_19 = OPcp14_16+ROcp14_18*qdd(9)+ROcp14_47*qdd(8)+ROcp14_76*qdd(7)+qd(7)*(OMcp14_26*ROcp14_96-OMcp14_36*ROcp14_86)+qd(8)*(OMcp14_27*...
 ROcp14_67-OMcp14_37*ROcp14_57)+qd(9)*(OMcp14_28*ROcp14_38-OMcp14_38*ROcp14_28);
    OPcp14_29 = OPcp14_26+ROcp14_28*qdd(9)+ROcp14_57*qdd(8)+ROcp14_86*qdd(7)-qd(7)*(OMcp14_16*ROcp14_96-OMcp14_36*ROcp14_76)-qd(8)*(OMcp14_17*...
 ROcp14_67-OMcp14_37*ROcp14_47)-qd(9)*(OMcp14_18*ROcp14_38-OMcp14_38*ROcp14_18);
    OPcp14_39 = OPcp14_36+ROcp14_38*qdd(9)+ROcp14_67*qdd(8)+ROcp14_96*qdd(7)+qd(7)*(OMcp14_16*ROcp14_86-OMcp14_26*ROcp14_76)+qd(8)*(OMcp14_17*...
 ROcp14_57-OMcp14_27*ROcp14_47)+qd(9)*(OMcp14_18*ROcp14_28-OMcp14_28*ROcp14_18);
    RLcp14_110 = ROcp14_49*s.dpt(2,24);
    RLcp14_210 = ROcp14_59*s.dpt(2,24);
    RLcp14_310 = ROcp14_69*s.dpt(2,24);
    OMcp14_110 = OMcp14_19+ROcp14_18*qd(10);
    OMcp14_210 = OMcp14_29+ROcp14_28*qd(10);
    OMcp14_310 = OMcp14_39+ROcp14_38*qd(10);
    ORcp14_110 = OMcp14_29*RLcp14_310-OMcp14_39*RLcp14_210;
    ORcp14_210 = -(OMcp14_19*RLcp14_310-OMcp14_39*RLcp14_110);
    ORcp14_310 = OMcp14_19*RLcp14_210-OMcp14_29*RLcp14_110;
    OMcp14_111 = OMcp14_110+ROcp14_410*qd(11);
    OMcp14_211 = OMcp14_210+ROcp14_510*qd(11);
    OMcp14_311 = OMcp14_310+ROcp14_610*qd(11);
    OMcp14_112 = OMcp14_111+ROcp14_711*qd(12);
    OMcp14_212 = OMcp14_211+ROcp14_811*qd(12);
    OMcp14_312 = OMcp14_311+ROcp14_911*qd(12);
    OPcp14_112 = OPcp14_19+ROcp14_18*qdd(10)+ROcp14_410*qdd(11)+ROcp14_711*qdd(12)+qd(10)*(OMcp14_29*ROcp14_38-OMcp14_39*ROcp14_28)+qd(11)*(...
 OMcp14_210*ROcp14_610-OMcp14_310*ROcp14_510)+qd(12)*(OMcp14_211*ROcp14_911-OMcp14_311*ROcp14_811);
    OPcp14_212 = OPcp14_29+ROcp14_28*qdd(10)+ROcp14_510*qdd(11)+ROcp14_811*qdd(12)-qd(10)*(OMcp14_19*ROcp14_38-OMcp14_39*ROcp14_18)-qd(11)*(...
 OMcp14_110*ROcp14_610-OMcp14_310*ROcp14_410)-qd(12)*(OMcp14_111*ROcp14_911-OMcp14_311*ROcp14_711);
    OPcp14_312 = OPcp14_39+ROcp14_38*qdd(10)+ROcp14_610*qdd(11)+ROcp14_911*qdd(12)+qd(10)*(OMcp14_19*ROcp14_28-OMcp14_29*ROcp14_18)+qd(11)*(...
 OMcp14_110*ROcp14_510-OMcp14_210*ROcp14_410)+qd(12)*(OMcp14_111*ROcp14_811-OMcp14_211*ROcp14_711);
    RLcp14_113 = ROcp14_112*s.dpt(1,27)+ROcp14_412*s.dpt(2,27)+ROcp14_711*s.dpt(3,27);
    RLcp14_213 = ROcp14_212*s.dpt(1,27)+ROcp14_512*s.dpt(2,27)+ROcp14_811*s.dpt(3,27);
    RLcp14_313 = ROcp14_312*s.dpt(1,27)+ROcp14_612*s.dpt(2,27)+ROcp14_911*s.dpt(3,27);
    POcp14_113 = RLcp14_110+RLcp14_113+RLcp14_17+q(1);
    POcp14_213 = RLcp14_210+RLcp14_213+RLcp14_27+q(2);
    POcp14_313 = RLcp14_310+RLcp14_313+RLcp14_37+q(3);
    OMcp14_113 = OMcp14_112+ROcp14_711*qd(13);
    OMcp14_213 = OMcp14_212+ROcp14_811*qd(13);
    OMcp14_313 = OMcp14_312+ROcp14_911*qd(13);
    ORcp14_113 = OMcp14_212*RLcp14_313-OMcp14_312*RLcp14_213;
    ORcp14_213 = -(OMcp14_112*RLcp14_313-OMcp14_312*RLcp14_113);
    ORcp14_313 = OMcp14_112*RLcp14_213-OMcp14_212*RLcp14_113;
    VIcp14_113 = ORcp14_110+ORcp14_113+ORcp14_17+qd(1);
    VIcp14_213 = ORcp14_210+ORcp14_213+ORcp14_27+qd(2);
    VIcp14_313 = ORcp14_310+ORcp14_313+ORcp14_37+qd(3);
    ACcp14_113 = qdd(1)+OMcp14_212*ORcp14_313+OMcp14_26*ORcp14_37+OMcp14_29*ORcp14_310-OMcp14_312*ORcp14_213-OMcp14_36*ORcp14_27-OMcp14_39*...
 ORcp14_210+OPcp14_212*RLcp14_313+OPcp14_26*RLcp14_37+OPcp14_29*RLcp14_310-OPcp14_312*RLcp14_213-OPcp14_36*RLcp14_27-OPcp14_39*RLcp14_210;
    ACcp14_213 = qdd(2)-OMcp14_112*ORcp14_313-OMcp14_16*ORcp14_37-OMcp14_19*ORcp14_310+OMcp14_312*ORcp14_113+OMcp14_36*ORcp14_17+OMcp14_39*...
 ORcp14_110-OPcp14_112*RLcp14_313-OPcp14_16*RLcp14_37-OPcp14_19*RLcp14_310+OPcp14_312*RLcp14_113+OPcp14_36*RLcp14_17+OPcp14_39*RLcp14_110;
    ACcp14_313 = qdd(3)+OMcp14_112*ORcp14_213+OMcp14_16*ORcp14_27+OMcp14_19*ORcp14_210-OMcp14_212*ORcp14_113-OMcp14_26*ORcp14_17-OMcp14_29*...
 ORcp14_110+OPcp14_112*RLcp14_213+OPcp14_16*RLcp14_27+OPcp14_19*RLcp14_210-OPcp14_212*RLcp14_113-OPcp14_26*RLcp14_17-OPcp14_29*RLcp14_110;
    OMcp14_114 = OMcp14_113+ROcp14_113*qd(14);
    OMcp14_214 = OMcp14_213+ROcp14_213*qd(14);
    OMcp14_314 = OMcp14_313+ROcp14_313*qd(14);
    OMcp14_115 = OMcp14_114+ROcp14_414*qd(15);
    OMcp14_215 = OMcp14_214+ROcp14_514*qd(15);
    OMcp14_315 = OMcp14_314+ROcp14_614*qd(15);
    OPcp14_115 = OPcp14_112+ROcp14_113*qdd(14)+ROcp14_414*qdd(15)+ROcp14_711*qdd(13)+qd(13)*(OMcp14_212*ROcp14_911-OMcp14_312*ROcp14_811)+qd(14)*(...
 OMcp14_213*ROcp14_313-OMcp14_313*ROcp14_213)+qd(15)*(OMcp14_214*ROcp14_614-OMcp14_314*ROcp14_514);
    OPcp14_215 = OPcp14_212+ROcp14_213*qdd(14)+ROcp14_514*qdd(15)+ROcp14_811*qdd(13)-qd(13)*(OMcp14_112*ROcp14_911-OMcp14_312*ROcp14_711)-qd(14)*(...
 OMcp14_113*ROcp14_313-OMcp14_313*ROcp14_113)-qd(15)*(OMcp14_114*ROcp14_614-OMcp14_314*ROcp14_414);
    OPcp14_315 = OPcp14_312+ROcp14_313*qdd(14)+ROcp14_614*qdd(15)+ROcp14_911*qdd(13)+qd(13)*(OMcp14_112*ROcp14_811-OMcp14_212*ROcp14_711)+qd(14)*(...
 OMcp14_113*ROcp14_213-OMcp14_213*ROcp14_113)+qd(15)*(OMcp14_114*ROcp14_514-OMcp14_214*ROcp14_414);

% = = Block_1_0_0_15_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp14_113;
    sens.P(2) = POcp14_213;
    sens.P(3) = POcp14_313;
    sens.R(1,1) = ROcp14_115;
    sens.R(1,2) = ROcp14_215;
    sens.R(1,3) = ROcp14_315;
    sens.R(2,1) = ROcp14_414;
    sens.R(2,2) = ROcp14_514;
    sens.R(2,3) = ROcp14_614;
    sens.R(3,1) = ROcp14_715;
    sens.R(3,2) = ROcp14_815;
    sens.R(3,3) = ROcp14_915;
    sens.V(1) = VIcp14_113;
    sens.V(2) = VIcp14_213;
    sens.V(3) = VIcp14_313;
    sens.OM(1) = OMcp14_115;
    sens.OM(2) = OMcp14_215;
    sens.OM(3) = OMcp14_315;
    sens.A(1) = ACcp14_113;
    sens.A(2) = ACcp14_213;
    sens.A(3) = ACcp14_313;
    sens.OMP(1) = OPcp14_115;
    sens.OMP(2) = OPcp14_215;
    sens.OMP(3) = OPcp14_315;
 
% 
case 16, 


% = = Block_1_0_0_16_0_1 = = 
 
% Sensor Kinematics 


    ROcp15_45 = -S4*C5;
    ROcp15_55 = C4*C5;
    ROcp15_75 = S4*S5;
    ROcp15_85 = -C4*S5;
    ROcp15_16 = -(ROcp15_75*S6-C4*C6);
    ROcp15_26 = -(ROcp15_85*S6-S4*C6);
    ROcp15_36 = -C5*S6;
    ROcp15_76 = ROcp15_75*C6+C4*S6;
    ROcp15_86 = ROcp15_85*C6+S4*S6;
    ROcp15_96 = C5*C6;
    OMcp15_15 = qd(5)*C4;
    OMcp15_25 = qd(5)*S4;
    OMcp15_16 = OMcp15_15+ROcp15_45*qd(6);
    OMcp15_26 = OMcp15_25+ROcp15_55*qd(6);
    OMcp15_36 = qd(4)+qd(6)*S5;
    OPcp15_16 = ROcp15_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp15_25*S5-ROcp15_55*qd(4));
    OPcp15_26 = ROcp15_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp15_15*S5-ROcp15_45*qd(4));
    OPcp15_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_16_0_3 = = 
 
% Sensor Kinematics 


    ROcp15_116 = ROcp15_16*C16+ROcp15_45*S16;
    ROcp15_216 = ROcp15_26*C16+ROcp15_55*S16;
    ROcp15_316 = ROcp15_36*C16+S16*S5;
    ROcp15_416 = -(ROcp15_16*S16-ROcp15_45*C16);
    ROcp15_516 = -(ROcp15_26*S16-ROcp15_55*C16);
    ROcp15_616 = -(ROcp15_36*S16-C16*S5);
    RLcp15_116 = ROcp15_16*s.dpt(1,2)+ROcp15_45*s.dpt(2,2)+ROcp15_76*s.dpt(3,2);
    RLcp15_216 = ROcp15_26*s.dpt(1,2)+ROcp15_55*s.dpt(2,2)+ROcp15_86*s.dpt(3,2);
    RLcp15_316 = ROcp15_36*s.dpt(1,2)+ROcp15_96*s.dpt(3,2)+s.dpt(2,2)*S5;
    POcp15_116 = RLcp15_116+q(1);
    POcp15_216 = RLcp15_216+q(2);
    POcp15_316 = RLcp15_316+q(3);
    OMcp15_116 = OMcp15_16+ROcp15_76*qd(16);
    OMcp15_216 = OMcp15_26+ROcp15_86*qd(16);
    OMcp15_316 = OMcp15_36+ROcp15_96*qd(16);
    ORcp15_116 = OMcp15_26*RLcp15_316-OMcp15_36*RLcp15_216;
    ORcp15_216 = -(OMcp15_16*RLcp15_316-OMcp15_36*RLcp15_116);
    ORcp15_316 = OMcp15_16*RLcp15_216-OMcp15_26*RLcp15_116;
    VIcp15_116 = ORcp15_116+qd(1);
    VIcp15_216 = ORcp15_216+qd(2);
    VIcp15_316 = ORcp15_316+qd(3);
    OPcp15_116 = OPcp15_16+ROcp15_76*qdd(16)+qd(16)*(OMcp15_26*ROcp15_96-OMcp15_36*ROcp15_86);
    OPcp15_216 = OPcp15_26+ROcp15_86*qdd(16)-qd(16)*(OMcp15_16*ROcp15_96-OMcp15_36*ROcp15_76);
    OPcp15_316 = OPcp15_36+ROcp15_96*qdd(16)+qd(16)*(OMcp15_16*ROcp15_86-OMcp15_26*ROcp15_76);
    ACcp15_116 = qdd(1)+OMcp15_26*ORcp15_316-OMcp15_36*ORcp15_216+OPcp15_26*RLcp15_316-OPcp15_36*RLcp15_216;
    ACcp15_216 = qdd(2)-OMcp15_16*ORcp15_316+OMcp15_36*ORcp15_116-OPcp15_16*RLcp15_316+OPcp15_36*RLcp15_116;
    ACcp15_316 = qdd(3)+OMcp15_16*ORcp15_216-OMcp15_26*ORcp15_116+OPcp15_16*RLcp15_216-OPcp15_26*RLcp15_116;

% = = Block_1_0_0_16_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp15_116;
    sens.P(2) = POcp15_216;
    sens.P(3) = POcp15_316;
    sens.R(1,1) = ROcp15_116;
    sens.R(1,2) = ROcp15_216;
    sens.R(1,3) = ROcp15_316;
    sens.R(2,1) = ROcp15_416;
    sens.R(2,2) = ROcp15_516;
    sens.R(2,3) = ROcp15_616;
    sens.R(3,1) = ROcp15_76;
    sens.R(3,2) = ROcp15_86;
    sens.R(3,3) = ROcp15_96;
    sens.V(1) = VIcp15_116;
    sens.V(2) = VIcp15_216;
    sens.V(3) = VIcp15_316;
    sens.OM(1) = OMcp15_116;
    sens.OM(2) = OMcp15_216;
    sens.OM(3) = OMcp15_316;
    sens.A(1) = ACcp15_116;
    sens.A(2) = ACcp15_216;
    sens.A(3) = ACcp15_316;
    sens.OMP(1) = OPcp15_116;
    sens.OMP(2) = OPcp15_216;
    sens.OMP(3) = OPcp15_316;
 
% 
case 17, 


% = = Block_1_0_0_17_0_1 = = 
 
% Sensor Kinematics 


    ROcp16_45 = -S4*C5;
    ROcp16_55 = C4*C5;
    ROcp16_75 = S4*S5;
    ROcp16_85 = -C4*S5;
    ROcp16_16 = -(ROcp16_75*S6-C4*C6);
    ROcp16_26 = -(ROcp16_85*S6-S4*C6);
    ROcp16_36 = -C5*S6;
    ROcp16_76 = ROcp16_75*C6+C4*S6;
    ROcp16_86 = ROcp16_85*C6+S4*S6;
    ROcp16_96 = C5*C6;
    OMcp16_15 = qd(5)*C4;
    OMcp16_25 = qd(5)*S4;
    OMcp16_16 = OMcp16_15+ROcp16_45*qd(6);
    OMcp16_26 = OMcp16_25+ROcp16_55*qd(6);
    OMcp16_36 = qd(4)+qd(6)*S5;
    OPcp16_16 = ROcp16_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp16_25*S5-ROcp16_55*qd(4));
    OPcp16_26 = ROcp16_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp16_15*S5-ROcp16_45*qd(4));
    OPcp16_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_17_0_3 = = 
 
% Sensor Kinematics 


    ROcp16_116 = ROcp16_16*C16+ROcp16_45*S16;
    ROcp16_216 = ROcp16_26*C16+ROcp16_55*S16;
    ROcp16_316 = ROcp16_36*C16+S16*S5;
    ROcp16_416 = -(ROcp16_16*S16-ROcp16_45*C16);
    ROcp16_516 = -(ROcp16_26*S16-ROcp16_55*C16);
    ROcp16_616 = -(ROcp16_36*S16-C16*S5);
    ROcp16_417 = ROcp16_416*C17+ROcp16_76*S17;
    ROcp16_517 = ROcp16_516*C17+ROcp16_86*S17;
    ROcp16_617 = ROcp16_616*C17+ROcp16_96*S17;
    ROcp16_717 = -(ROcp16_416*S17-ROcp16_76*C17);
    ROcp16_817 = -(ROcp16_516*S17-ROcp16_86*C17);
    ROcp16_917 = -(ROcp16_616*S17-ROcp16_96*C17);
    RLcp16_116 = ROcp16_16*s.dpt(1,2)+ROcp16_45*s.dpt(2,2)+ROcp16_76*s.dpt(3,2);
    RLcp16_216 = ROcp16_26*s.dpt(1,2)+ROcp16_55*s.dpt(2,2)+ROcp16_86*s.dpt(3,2);
    RLcp16_316 = ROcp16_36*s.dpt(1,2)+ROcp16_96*s.dpt(3,2)+s.dpt(2,2)*S5;
    POcp16_116 = RLcp16_116+q(1);
    POcp16_216 = RLcp16_216+q(2);
    POcp16_316 = RLcp16_316+q(3);
    OMcp16_116 = OMcp16_16+ROcp16_76*qd(16);
    OMcp16_216 = OMcp16_26+ROcp16_86*qd(16);
    OMcp16_316 = OMcp16_36+ROcp16_96*qd(16);
    ORcp16_116 = OMcp16_26*RLcp16_316-OMcp16_36*RLcp16_216;
    ORcp16_216 = -(OMcp16_16*RLcp16_316-OMcp16_36*RLcp16_116);
    ORcp16_316 = OMcp16_16*RLcp16_216-OMcp16_26*RLcp16_116;
    VIcp16_116 = ORcp16_116+qd(1);
    VIcp16_216 = ORcp16_216+qd(2);
    VIcp16_316 = ORcp16_316+qd(3);
    ACcp16_116 = qdd(1)+OMcp16_26*ORcp16_316-OMcp16_36*ORcp16_216+OPcp16_26*RLcp16_316-OPcp16_36*RLcp16_216;
    ACcp16_216 = qdd(2)-OMcp16_16*ORcp16_316+OMcp16_36*ORcp16_116-OPcp16_16*RLcp16_316+OPcp16_36*RLcp16_116;
    ACcp16_316 = qdd(3)+OMcp16_16*ORcp16_216-OMcp16_26*ORcp16_116+OPcp16_16*RLcp16_216-OPcp16_26*RLcp16_116;
    OMcp16_117 = OMcp16_116+ROcp16_116*qd(17);
    OMcp16_217 = OMcp16_216+ROcp16_216*qd(17);
    OMcp16_317 = OMcp16_316+ROcp16_316*qd(17);
    OPcp16_117 = OPcp16_16+ROcp16_116*qdd(17)+ROcp16_76*qdd(16)+qd(16)*(OMcp16_26*ROcp16_96-OMcp16_36*ROcp16_86)+qd(17)*(OMcp16_216*ROcp16_316-...
 OMcp16_316*ROcp16_216);
    OPcp16_217 = OPcp16_26+ROcp16_216*qdd(17)+ROcp16_86*qdd(16)-qd(16)*(OMcp16_16*ROcp16_96-OMcp16_36*ROcp16_76)-qd(17)*(OMcp16_116*ROcp16_316-...
 OMcp16_316*ROcp16_116);
    OPcp16_317 = OPcp16_36+ROcp16_316*qdd(17)+ROcp16_96*qdd(16)+qd(16)*(OMcp16_16*ROcp16_86-OMcp16_26*ROcp16_76)+qd(17)*(OMcp16_116*ROcp16_216-...
 OMcp16_216*ROcp16_116);

% = = Block_1_0_0_17_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp16_116;
    sens.P(2) = POcp16_216;
    sens.P(3) = POcp16_316;
    sens.R(1,1) = ROcp16_116;
    sens.R(1,2) = ROcp16_216;
    sens.R(1,3) = ROcp16_316;
    sens.R(2,1) = ROcp16_417;
    sens.R(2,2) = ROcp16_517;
    sens.R(2,3) = ROcp16_617;
    sens.R(3,1) = ROcp16_717;
    sens.R(3,2) = ROcp16_817;
    sens.R(3,3) = ROcp16_917;
    sens.V(1) = VIcp16_116;
    sens.V(2) = VIcp16_216;
    sens.V(3) = VIcp16_316;
    sens.OM(1) = OMcp16_117;
    sens.OM(2) = OMcp16_217;
    sens.OM(3) = OMcp16_317;
    sens.A(1) = ACcp16_116;
    sens.A(2) = ACcp16_216;
    sens.A(3) = ACcp16_316;
    sens.OMP(1) = OPcp16_117;
    sens.OMP(2) = OPcp16_217;
    sens.OMP(3) = OPcp16_317;
 
% 
case 18, 


% = = Block_1_0_0_18_0_1 = = 
 
% Sensor Kinematics 


    ROcp17_45 = -S4*C5;
    ROcp17_55 = C4*C5;
    ROcp17_75 = S4*S5;
    ROcp17_85 = -C4*S5;
    ROcp17_16 = -(ROcp17_75*S6-C4*C6);
    ROcp17_26 = -(ROcp17_85*S6-S4*C6);
    ROcp17_36 = -C5*S6;
    ROcp17_76 = ROcp17_75*C6+C4*S6;
    ROcp17_86 = ROcp17_85*C6+S4*S6;
    ROcp17_96 = C5*C6;
    OMcp17_15 = qd(5)*C4;
    OMcp17_25 = qd(5)*S4;
    OMcp17_16 = OMcp17_15+ROcp17_45*qd(6);
    OMcp17_26 = OMcp17_25+ROcp17_55*qd(6);
    OMcp17_36 = qd(4)+qd(6)*S5;
    OPcp17_16 = ROcp17_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp17_25*S5-ROcp17_55*qd(4));
    OPcp17_26 = ROcp17_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp17_15*S5-ROcp17_45*qd(4));
    OPcp17_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_18_0_4 = = 
 
% Sensor Kinematics 


    ROcp17_118 = ROcp17_16*C18+ROcp17_45*S18;
    ROcp17_218 = ROcp17_26*C18+ROcp17_55*S18;
    ROcp17_318 = ROcp17_36*C18+S18*S5;
    ROcp17_418 = -(ROcp17_16*S18-ROcp17_45*C18);
    ROcp17_518 = -(ROcp17_26*S18-ROcp17_55*C18);
    ROcp17_618 = -(ROcp17_36*S18-C18*S5);
    RLcp17_118 = ROcp17_16*s.dpt(1,3)+ROcp17_45*s.dpt(2,3)+ROcp17_76*s.dpt(3,3);
    RLcp17_218 = ROcp17_26*s.dpt(1,3)+ROcp17_55*s.dpt(2,3)+ROcp17_86*s.dpt(3,3);
    RLcp17_318 = ROcp17_36*s.dpt(1,3)+ROcp17_96*s.dpt(3,3)+s.dpt(2,3)*S5;
    POcp17_118 = RLcp17_118+q(1);
    POcp17_218 = RLcp17_218+q(2);
    POcp17_318 = RLcp17_318+q(3);
    OMcp17_118 = OMcp17_16+ROcp17_76*qd(18);
    OMcp17_218 = OMcp17_26+ROcp17_86*qd(18);
    OMcp17_318 = OMcp17_36+ROcp17_96*qd(18);
    ORcp17_118 = OMcp17_26*RLcp17_318-OMcp17_36*RLcp17_218;
    ORcp17_218 = -(OMcp17_16*RLcp17_318-OMcp17_36*RLcp17_118);
    ORcp17_318 = OMcp17_16*RLcp17_218-OMcp17_26*RLcp17_118;
    VIcp17_118 = ORcp17_118+qd(1);
    VIcp17_218 = ORcp17_218+qd(2);
    VIcp17_318 = ORcp17_318+qd(3);
    OPcp17_118 = OPcp17_16+ROcp17_76*qdd(18)+qd(18)*(OMcp17_26*ROcp17_96-OMcp17_36*ROcp17_86);
    OPcp17_218 = OPcp17_26+ROcp17_86*qdd(18)-qd(18)*(OMcp17_16*ROcp17_96-OMcp17_36*ROcp17_76);
    OPcp17_318 = OPcp17_36+ROcp17_96*qdd(18)+qd(18)*(OMcp17_16*ROcp17_86-OMcp17_26*ROcp17_76);
    ACcp17_118 = qdd(1)+OMcp17_26*ORcp17_318-OMcp17_36*ORcp17_218+OPcp17_26*RLcp17_318-OPcp17_36*RLcp17_218;
    ACcp17_218 = qdd(2)-OMcp17_16*ORcp17_318+OMcp17_36*ORcp17_118-OPcp17_16*RLcp17_318+OPcp17_36*RLcp17_118;
    ACcp17_318 = qdd(3)+OMcp17_16*ORcp17_218-OMcp17_26*ORcp17_118+OPcp17_16*RLcp17_218-OPcp17_26*RLcp17_118;

% = = Block_1_0_0_18_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp17_118;
    sens.P(2) = POcp17_218;
    sens.P(3) = POcp17_318;
    sens.R(1,1) = ROcp17_118;
    sens.R(1,2) = ROcp17_218;
    sens.R(1,3) = ROcp17_318;
    sens.R(2,1) = ROcp17_418;
    sens.R(2,2) = ROcp17_518;
    sens.R(2,3) = ROcp17_618;
    sens.R(3,1) = ROcp17_76;
    sens.R(3,2) = ROcp17_86;
    sens.R(3,3) = ROcp17_96;
    sens.V(1) = VIcp17_118;
    sens.V(2) = VIcp17_218;
    sens.V(3) = VIcp17_318;
    sens.OM(1) = OMcp17_118;
    sens.OM(2) = OMcp17_218;
    sens.OM(3) = OMcp17_318;
    sens.A(1) = ACcp17_118;
    sens.A(2) = ACcp17_218;
    sens.A(3) = ACcp17_318;
    sens.OMP(1) = OPcp17_118;
    sens.OMP(2) = OPcp17_218;
    sens.OMP(3) = OPcp17_318;
 
% 
case 19, 


% = = Block_1_0_0_19_0_1 = = 
 
% Sensor Kinematics 


    ROcp18_45 = -S4*C5;
    ROcp18_55 = C4*C5;
    ROcp18_75 = S4*S5;
    ROcp18_85 = -C4*S5;
    ROcp18_16 = -(ROcp18_75*S6-C4*C6);
    ROcp18_26 = -(ROcp18_85*S6-S4*C6);
    ROcp18_36 = -C5*S6;
    ROcp18_76 = ROcp18_75*C6+C4*S6;
    ROcp18_86 = ROcp18_85*C6+S4*S6;
    ROcp18_96 = C5*C6;
    OMcp18_15 = qd(5)*C4;
    OMcp18_25 = qd(5)*S4;
    OMcp18_16 = OMcp18_15+ROcp18_45*qd(6);
    OMcp18_26 = OMcp18_25+ROcp18_55*qd(6);
    OMcp18_36 = qd(4)+qd(6)*S5;
    OPcp18_16 = ROcp18_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp18_25*S5-ROcp18_55*qd(4));
    OPcp18_26 = ROcp18_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp18_15*S5-ROcp18_45*qd(4));
    OPcp18_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_19_0_4 = = 
 
% Sensor Kinematics 


    ROcp18_118 = ROcp18_16*C18+ROcp18_45*S18;
    ROcp18_218 = ROcp18_26*C18+ROcp18_55*S18;
    ROcp18_318 = ROcp18_36*C18+S18*S5;
    ROcp18_418 = -(ROcp18_16*S18-ROcp18_45*C18);
    ROcp18_518 = -(ROcp18_26*S18-ROcp18_55*C18);
    ROcp18_618 = -(ROcp18_36*S18-C18*S5);
    ROcp18_419 = ROcp18_418*C19+ROcp18_76*S19;
    ROcp18_519 = ROcp18_518*C19+ROcp18_86*S19;
    ROcp18_619 = ROcp18_618*C19+ROcp18_96*S19;
    ROcp18_719 = -(ROcp18_418*S19-ROcp18_76*C19);
    ROcp18_819 = -(ROcp18_518*S19-ROcp18_86*C19);
    ROcp18_919 = -(ROcp18_618*S19-ROcp18_96*C19);
    RLcp18_118 = ROcp18_16*s.dpt(1,3)+ROcp18_45*s.dpt(2,3)+ROcp18_76*s.dpt(3,3);
    RLcp18_218 = ROcp18_26*s.dpt(1,3)+ROcp18_55*s.dpt(2,3)+ROcp18_86*s.dpt(3,3);
    RLcp18_318 = ROcp18_36*s.dpt(1,3)+ROcp18_96*s.dpt(3,3)+s.dpt(2,3)*S5;
    POcp18_118 = RLcp18_118+q(1);
    POcp18_218 = RLcp18_218+q(2);
    POcp18_318 = RLcp18_318+q(3);
    OMcp18_118 = OMcp18_16+ROcp18_76*qd(18);
    OMcp18_218 = OMcp18_26+ROcp18_86*qd(18);
    OMcp18_318 = OMcp18_36+ROcp18_96*qd(18);
    ORcp18_118 = OMcp18_26*RLcp18_318-OMcp18_36*RLcp18_218;
    ORcp18_218 = -(OMcp18_16*RLcp18_318-OMcp18_36*RLcp18_118);
    ORcp18_318 = OMcp18_16*RLcp18_218-OMcp18_26*RLcp18_118;
    VIcp18_118 = ORcp18_118+qd(1);
    VIcp18_218 = ORcp18_218+qd(2);
    VIcp18_318 = ORcp18_318+qd(3);
    ACcp18_118 = qdd(1)+OMcp18_26*ORcp18_318-OMcp18_36*ORcp18_218+OPcp18_26*RLcp18_318-OPcp18_36*RLcp18_218;
    ACcp18_218 = qdd(2)-OMcp18_16*ORcp18_318+OMcp18_36*ORcp18_118-OPcp18_16*RLcp18_318+OPcp18_36*RLcp18_118;
    ACcp18_318 = qdd(3)+OMcp18_16*ORcp18_218-OMcp18_26*ORcp18_118+OPcp18_16*RLcp18_218-OPcp18_26*RLcp18_118;
    OMcp18_119 = OMcp18_118+ROcp18_118*qd(19);
    OMcp18_219 = OMcp18_218+ROcp18_218*qd(19);
    OMcp18_319 = OMcp18_318+ROcp18_318*qd(19);
    OPcp18_119 = OPcp18_16+ROcp18_118*qdd(19)+ROcp18_76*qdd(18)+qd(18)*(OMcp18_26*ROcp18_96-OMcp18_36*ROcp18_86)+qd(19)*(OMcp18_218*ROcp18_318-...
 OMcp18_318*ROcp18_218);
    OPcp18_219 = OPcp18_26+ROcp18_218*qdd(19)+ROcp18_86*qdd(18)-qd(18)*(OMcp18_16*ROcp18_96-OMcp18_36*ROcp18_76)-qd(19)*(OMcp18_118*ROcp18_318-...
 OMcp18_318*ROcp18_118);
    OPcp18_319 = OPcp18_36+ROcp18_318*qdd(19)+ROcp18_96*qdd(18)+qd(18)*(OMcp18_16*ROcp18_86-OMcp18_26*ROcp18_76)+qd(19)*(OMcp18_118*ROcp18_218-...
 OMcp18_218*ROcp18_118);

% = = Block_1_0_0_19_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp18_118;
    sens.P(2) = POcp18_218;
    sens.P(3) = POcp18_318;
    sens.R(1,1) = ROcp18_118;
    sens.R(1,2) = ROcp18_218;
    sens.R(1,3) = ROcp18_318;
    sens.R(2,1) = ROcp18_419;
    sens.R(2,2) = ROcp18_519;
    sens.R(2,3) = ROcp18_619;
    sens.R(3,1) = ROcp18_719;
    sens.R(3,2) = ROcp18_819;
    sens.R(3,3) = ROcp18_919;
    sens.V(1) = VIcp18_118;
    sens.V(2) = VIcp18_218;
    sens.V(3) = VIcp18_318;
    sens.OM(1) = OMcp18_119;
    sens.OM(2) = OMcp18_219;
    sens.OM(3) = OMcp18_319;
    sens.A(1) = ACcp18_118;
    sens.A(2) = ACcp18_218;
    sens.A(3) = ACcp18_318;
    sens.OMP(1) = OPcp18_119;
    sens.OMP(2) = OPcp18_219;
    sens.OMP(3) = OPcp18_319;
 
% 
case 20, 


% = = Block_1_0_0_20_0_1 = = 
 
% Sensor Kinematics 


    ROcp19_45 = -S4*C5;
    ROcp19_55 = C4*C5;
    ROcp19_75 = S4*S5;
    ROcp19_85 = -C4*S5;
    ROcp19_16 = -(ROcp19_75*S6-C4*C6);
    ROcp19_26 = -(ROcp19_85*S6-S4*C6);
    ROcp19_36 = -C5*S6;
    ROcp19_76 = ROcp19_75*C6+C4*S6;
    ROcp19_86 = ROcp19_85*C6+S4*S6;
    ROcp19_96 = C5*C6;
    OMcp19_15 = qd(5)*C4;
    OMcp19_25 = qd(5)*S4;
    OMcp19_16 = OMcp19_15+ROcp19_45*qd(6);
    OMcp19_26 = OMcp19_25+ROcp19_55*qd(6);
    OMcp19_36 = qd(4)+qd(6)*S5;
    OPcp19_16 = ROcp19_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp19_25*S5-ROcp19_55*qd(4));
    OPcp19_26 = ROcp19_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp19_15*S5-ROcp19_45*qd(4));
    OPcp19_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_20_0_5 = = 
 
% Sensor Kinematics 


    ROcp19_120 = ROcp19_16*C20+ROcp19_45*S20;
    ROcp19_220 = ROcp19_26*C20+ROcp19_55*S20;
    ROcp19_320 = ROcp19_36*C20+S20*S5;
    ROcp19_420 = -(ROcp19_16*S20-ROcp19_45*C20);
    ROcp19_520 = -(ROcp19_26*S20-ROcp19_55*C20);
    ROcp19_620 = -(ROcp19_36*S20-C20*S5);
    RLcp19_120 = ROcp19_16*s.dpt(1,4)+ROcp19_45*s.dpt(2,4)+ROcp19_76*s.dpt(3,4);
    RLcp19_220 = ROcp19_26*s.dpt(1,4)+ROcp19_55*s.dpt(2,4)+ROcp19_86*s.dpt(3,4);
    RLcp19_320 = ROcp19_36*s.dpt(1,4)+ROcp19_96*s.dpt(3,4)+s.dpt(2,4)*S5;
    POcp19_120 = RLcp19_120+q(1);
    POcp19_220 = RLcp19_220+q(2);
    POcp19_320 = RLcp19_320+q(3);
    OMcp19_120 = OMcp19_16+ROcp19_76*qd(20);
    OMcp19_220 = OMcp19_26+ROcp19_86*qd(20);
    OMcp19_320 = OMcp19_36+ROcp19_96*qd(20);
    ORcp19_120 = OMcp19_26*RLcp19_320-OMcp19_36*RLcp19_220;
    ORcp19_220 = -(OMcp19_16*RLcp19_320-OMcp19_36*RLcp19_120);
    ORcp19_320 = OMcp19_16*RLcp19_220-OMcp19_26*RLcp19_120;
    VIcp19_120 = ORcp19_120+qd(1);
    VIcp19_220 = ORcp19_220+qd(2);
    VIcp19_320 = ORcp19_320+qd(3);
    OPcp19_120 = OPcp19_16+ROcp19_76*qdd(20)+qd(20)*(OMcp19_26*ROcp19_96-OMcp19_36*ROcp19_86);
    OPcp19_220 = OPcp19_26+ROcp19_86*qdd(20)-qd(20)*(OMcp19_16*ROcp19_96-OMcp19_36*ROcp19_76);
    OPcp19_320 = OPcp19_36+ROcp19_96*qdd(20)+qd(20)*(OMcp19_16*ROcp19_86-OMcp19_26*ROcp19_76);
    ACcp19_120 = qdd(1)+OMcp19_26*ORcp19_320-OMcp19_36*ORcp19_220+OPcp19_26*RLcp19_320-OPcp19_36*RLcp19_220;
    ACcp19_220 = qdd(2)-OMcp19_16*ORcp19_320+OMcp19_36*ORcp19_120-OPcp19_16*RLcp19_320+OPcp19_36*RLcp19_120;
    ACcp19_320 = qdd(3)+OMcp19_16*ORcp19_220-OMcp19_26*ORcp19_120+OPcp19_16*RLcp19_220-OPcp19_26*RLcp19_120;

% = = Block_1_0_0_20_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp19_120;
    sens.P(2) = POcp19_220;
    sens.P(3) = POcp19_320;
    sens.R(1,1) = ROcp19_120;
    sens.R(1,2) = ROcp19_220;
    sens.R(1,3) = ROcp19_320;
    sens.R(2,1) = ROcp19_420;
    sens.R(2,2) = ROcp19_520;
    sens.R(2,3) = ROcp19_620;
    sens.R(3,1) = ROcp19_76;
    sens.R(3,2) = ROcp19_86;
    sens.R(3,3) = ROcp19_96;
    sens.V(1) = VIcp19_120;
    sens.V(2) = VIcp19_220;
    sens.V(3) = VIcp19_320;
    sens.OM(1) = OMcp19_120;
    sens.OM(2) = OMcp19_220;
    sens.OM(3) = OMcp19_320;
    sens.A(1) = ACcp19_120;
    sens.A(2) = ACcp19_220;
    sens.A(3) = ACcp19_320;
    sens.OMP(1) = OPcp19_120;
    sens.OMP(2) = OPcp19_220;
    sens.OMP(3) = OPcp19_320;
 
% 
case 21, 


% = = Block_1_0_0_21_0_1 = = 
 
% Sensor Kinematics 


    ROcp20_45 = -S4*C5;
    ROcp20_55 = C4*C5;
    ROcp20_75 = S4*S5;
    ROcp20_85 = -C4*S5;
    ROcp20_16 = -(ROcp20_75*S6-C4*C6);
    ROcp20_26 = -(ROcp20_85*S6-S4*C6);
    ROcp20_36 = -C5*S6;
    ROcp20_76 = ROcp20_75*C6+C4*S6;
    ROcp20_86 = ROcp20_85*C6+S4*S6;
    ROcp20_96 = C5*C6;
    OMcp20_15 = qd(5)*C4;
    OMcp20_25 = qd(5)*S4;
    OMcp20_16 = OMcp20_15+ROcp20_45*qd(6);
    OMcp20_26 = OMcp20_25+ROcp20_55*qd(6);
    OMcp20_36 = qd(4)+qd(6)*S5;
    OPcp20_16 = ROcp20_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp20_25*S5-ROcp20_55*qd(4));
    OPcp20_26 = ROcp20_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp20_15*S5-ROcp20_45*qd(4));
    OPcp20_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_21_0_5 = = 
 
% Sensor Kinematics 


    ROcp20_120 = ROcp20_16*C20+ROcp20_45*S20;
    ROcp20_220 = ROcp20_26*C20+ROcp20_55*S20;
    ROcp20_320 = ROcp20_36*C20+S20*S5;
    ROcp20_420 = -(ROcp20_16*S20-ROcp20_45*C20);
    ROcp20_520 = -(ROcp20_26*S20-ROcp20_55*C20);
    ROcp20_620 = -(ROcp20_36*S20-C20*S5);
    ROcp20_421 = ROcp20_420*C21+ROcp20_76*S21;
    ROcp20_521 = ROcp20_520*C21+ROcp20_86*S21;
    ROcp20_621 = ROcp20_620*C21+ROcp20_96*S21;
    ROcp20_721 = -(ROcp20_420*S21-ROcp20_76*C21);
    ROcp20_821 = -(ROcp20_520*S21-ROcp20_86*C21);
    ROcp20_921 = -(ROcp20_620*S21-ROcp20_96*C21);
    RLcp20_120 = ROcp20_16*s.dpt(1,4)+ROcp20_45*s.dpt(2,4)+ROcp20_76*s.dpt(3,4);
    RLcp20_220 = ROcp20_26*s.dpt(1,4)+ROcp20_55*s.dpt(2,4)+ROcp20_86*s.dpt(3,4);
    RLcp20_320 = ROcp20_36*s.dpt(1,4)+ROcp20_96*s.dpt(3,4)+s.dpt(2,4)*S5;
    POcp20_120 = RLcp20_120+q(1);
    POcp20_220 = RLcp20_220+q(2);
    POcp20_320 = RLcp20_320+q(3);
    OMcp20_120 = OMcp20_16+ROcp20_76*qd(20);
    OMcp20_220 = OMcp20_26+ROcp20_86*qd(20);
    OMcp20_320 = OMcp20_36+ROcp20_96*qd(20);
    ORcp20_120 = OMcp20_26*RLcp20_320-OMcp20_36*RLcp20_220;
    ORcp20_220 = -(OMcp20_16*RLcp20_320-OMcp20_36*RLcp20_120);
    ORcp20_320 = OMcp20_16*RLcp20_220-OMcp20_26*RLcp20_120;
    VIcp20_120 = ORcp20_120+qd(1);
    VIcp20_220 = ORcp20_220+qd(2);
    VIcp20_320 = ORcp20_320+qd(3);
    ACcp20_120 = qdd(1)+OMcp20_26*ORcp20_320-OMcp20_36*ORcp20_220+OPcp20_26*RLcp20_320-OPcp20_36*RLcp20_220;
    ACcp20_220 = qdd(2)-OMcp20_16*ORcp20_320+OMcp20_36*ORcp20_120-OPcp20_16*RLcp20_320+OPcp20_36*RLcp20_120;
    ACcp20_320 = qdd(3)+OMcp20_16*ORcp20_220-OMcp20_26*ORcp20_120+OPcp20_16*RLcp20_220-OPcp20_26*RLcp20_120;
    OMcp20_121 = OMcp20_120+ROcp20_120*qd(21);
    OMcp20_221 = OMcp20_220+ROcp20_220*qd(21);
    OMcp20_321 = OMcp20_320+ROcp20_320*qd(21);
    OPcp20_121 = OPcp20_16+ROcp20_120*qdd(21)+ROcp20_76*qdd(20)+qd(20)*(OMcp20_26*ROcp20_96-OMcp20_36*ROcp20_86)+qd(21)*(OMcp20_220*ROcp20_320-...
 OMcp20_320*ROcp20_220);
    OPcp20_221 = OPcp20_26+ROcp20_220*qdd(21)+ROcp20_86*qdd(20)-qd(20)*(OMcp20_16*ROcp20_96-OMcp20_36*ROcp20_76)-qd(21)*(OMcp20_120*ROcp20_320-...
 OMcp20_320*ROcp20_120);
    OPcp20_321 = OPcp20_36+ROcp20_320*qdd(21)+ROcp20_96*qdd(20)+qd(20)*(OMcp20_16*ROcp20_86-OMcp20_26*ROcp20_76)+qd(21)*(OMcp20_120*ROcp20_220-...
 OMcp20_220*ROcp20_120);

% = = Block_1_0_0_21_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp20_120;
    sens.P(2) = POcp20_220;
    sens.P(3) = POcp20_320;
    sens.R(1,1) = ROcp20_120;
    sens.R(1,2) = ROcp20_220;
    sens.R(1,3) = ROcp20_320;
    sens.R(2,1) = ROcp20_421;
    sens.R(2,2) = ROcp20_521;
    sens.R(2,3) = ROcp20_621;
    sens.R(3,1) = ROcp20_721;
    sens.R(3,2) = ROcp20_821;
    sens.R(3,3) = ROcp20_921;
    sens.V(1) = VIcp20_120;
    sens.V(2) = VIcp20_220;
    sens.V(3) = VIcp20_320;
    sens.OM(1) = OMcp20_121;
    sens.OM(2) = OMcp20_221;
    sens.OM(3) = OMcp20_321;
    sens.A(1) = ACcp20_120;
    sens.A(2) = ACcp20_220;
    sens.A(3) = ACcp20_320;
    sens.OMP(1) = OPcp20_121;
    sens.OMP(2) = OPcp20_221;
    sens.OMP(3) = OPcp20_321;
 
% 
case 22, 


% = = Block_1_0_0_22_0_1 = = 
 
% Sensor Kinematics 


    ROcp21_45 = -S4*C5;
    ROcp21_55 = C4*C5;
    ROcp21_75 = S4*S5;
    ROcp21_85 = -C4*S5;
    ROcp21_16 = -(ROcp21_75*S6-C4*C6);
    ROcp21_26 = -(ROcp21_85*S6-S4*C6);
    ROcp21_36 = -C5*S6;
    ROcp21_76 = ROcp21_75*C6+C4*S6;
    ROcp21_86 = ROcp21_85*C6+S4*S6;
    ROcp21_96 = C5*C6;
    OMcp21_15 = qd(5)*C4;
    OMcp21_25 = qd(5)*S4;
    OMcp21_16 = OMcp21_15+ROcp21_45*qd(6);
    OMcp21_26 = OMcp21_25+ROcp21_55*qd(6);
    OMcp21_36 = qd(4)+qd(6)*S5;
    OPcp21_16 = ROcp21_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp21_25*S5-ROcp21_55*qd(4));
    OPcp21_26 = ROcp21_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp21_15*S5-ROcp21_45*qd(4));
    OPcp21_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_22_0_6 = = 
 
% Sensor Kinematics 


    ROcp21_122 = ROcp21_16*C22+ROcp21_45*S22;
    ROcp21_222 = ROcp21_26*C22+ROcp21_55*S22;
    ROcp21_322 = ROcp21_36*C22+S22*S5;
    ROcp21_422 = -(ROcp21_16*S22-ROcp21_45*C22);
    ROcp21_522 = -(ROcp21_26*S22-ROcp21_55*C22);
    ROcp21_622 = -(ROcp21_36*S22-C22*S5);
    RLcp21_122 = ROcp21_16*s.dpt(1,5)+ROcp21_45*s.dpt(2,5)+ROcp21_76*s.dpt(3,5);
    RLcp21_222 = ROcp21_26*s.dpt(1,5)+ROcp21_55*s.dpt(2,5)+ROcp21_86*s.dpt(3,5);
    RLcp21_322 = ROcp21_36*s.dpt(1,5)+ROcp21_96*s.dpt(3,5)+s.dpt(2,5)*S5;
    POcp21_122 = RLcp21_122+q(1);
    POcp21_222 = RLcp21_222+q(2);
    POcp21_322 = RLcp21_322+q(3);
    OMcp21_122 = OMcp21_16+ROcp21_76*qd(22);
    OMcp21_222 = OMcp21_26+ROcp21_86*qd(22);
    OMcp21_322 = OMcp21_36+ROcp21_96*qd(22);
    ORcp21_122 = OMcp21_26*RLcp21_322-OMcp21_36*RLcp21_222;
    ORcp21_222 = -(OMcp21_16*RLcp21_322-OMcp21_36*RLcp21_122);
    ORcp21_322 = OMcp21_16*RLcp21_222-OMcp21_26*RLcp21_122;
    VIcp21_122 = ORcp21_122+qd(1);
    VIcp21_222 = ORcp21_222+qd(2);
    VIcp21_322 = ORcp21_322+qd(3);
    OPcp21_122 = OPcp21_16+ROcp21_76*qdd(22)+qd(22)*(OMcp21_26*ROcp21_96-OMcp21_36*ROcp21_86);
    OPcp21_222 = OPcp21_26+ROcp21_86*qdd(22)-qd(22)*(OMcp21_16*ROcp21_96-OMcp21_36*ROcp21_76);
    OPcp21_322 = OPcp21_36+ROcp21_96*qdd(22)+qd(22)*(OMcp21_16*ROcp21_86-OMcp21_26*ROcp21_76);
    ACcp21_122 = qdd(1)+OMcp21_26*ORcp21_322-OMcp21_36*ORcp21_222+OPcp21_26*RLcp21_322-OPcp21_36*RLcp21_222;
    ACcp21_222 = qdd(2)-OMcp21_16*ORcp21_322+OMcp21_36*ORcp21_122-OPcp21_16*RLcp21_322+OPcp21_36*RLcp21_122;
    ACcp21_322 = qdd(3)+OMcp21_16*ORcp21_222-OMcp21_26*ORcp21_122+OPcp21_16*RLcp21_222-OPcp21_26*RLcp21_122;

% = = Block_1_0_0_22_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp21_122;
    sens.P(2) = POcp21_222;
    sens.P(3) = POcp21_322;
    sens.R(1,1) = ROcp21_122;
    sens.R(1,2) = ROcp21_222;
    sens.R(1,3) = ROcp21_322;
    sens.R(2,1) = ROcp21_422;
    sens.R(2,2) = ROcp21_522;
    sens.R(2,3) = ROcp21_622;
    sens.R(3,1) = ROcp21_76;
    sens.R(3,2) = ROcp21_86;
    sens.R(3,3) = ROcp21_96;
    sens.V(1) = VIcp21_122;
    sens.V(2) = VIcp21_222;
    sens.V(3) = VIcp21_322;
    sens.OM(1) = OMcp21_122;
    sens.OM(2) = OMcp21_222;
    sens.OM(3) = OMcp21_322;
    sens.A(1) = ACcp21_122;
    sens.A(2) = ACcp21_222;
    sens.A(3) = ACcp21_322;
    sens.OMP(1) = OPcp21_122;
    sens.OMP(2) = OPcp21_222;
    sens.OMP(3) = OPcp21_322;
 
% 
case 23, 


% = = Block_1_0_0_23_0_1 = = 
 
% Sensor Kinematics 


    ROcp22_45 = -S4*C5;
    ROcp22_55 = C4*C5;
    ROcp22_75 = S4*S5;
    ROcp22_85 = -C4*S5;
    ROcp22_16 = -(ROcp22_75*S6-C4*C6);
    ROcp22_26 = -(ROcp22_85*S6-S4*C6);
    ROcp22_36 = -C5*S6;
    ROcp22_76 = ROcp22_75*C6+C4*S6;
    ROcp22_86 = ROcp22_85*C6+S4*S6;
    ROcp22_96 = C5*C6;
    OMcp22_15 = qd(5)*C4;
    OMcp22_25 = qd(5)*S4;
    OMcp22_16 = OMcp22_15+ROcp22_45*qd(6);
    OMcp22_26 = OMcp22_25+ROcp22_55*qd(6);
    OMcp22_36 = qd(4)+qd(6)*S5;
    OPcp22_16 = ROcp22_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp22_25*S5-ROcp22_55*qd(4));
    OPcp22_26 = ROcp22_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp22_15*S5-ROcp22_45*qd(4));
    OPcp22_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_23_0_6 = = 
 
% Sensor Kinematics 


    ROcp22_122 = ROcp22_16*C22+ROcp22_45*S22;
    ROcp22_222 = ROcp22_26*C22+ROcp22_55*S22;
    ROcp22_322 = ROcp22_36*C22+S22*S5;
    ROcp22_422 = -(ROcp22_16*S22-ROcp22_45*C22);
    ROcp22_522 = -(ROcp22_26*S22-ROcp22_55*C22);
    ROcp22_622 = -(ROcp22_36*S22-C22*S5);
    ROcp22_423 = ROcp22_422*C23+ROcp22_76*S23;
    ROcp22_523 = ROcp22_522*C23+ROcp22_86*S23;
    ROcp22_623 = ROcp22_622*C23+ROcp22_96*S23;
    ROcp22_723 = -(ROcp22_422*S23-ROcp22_76*C23);
    ROcp22_823 = -(ROcp22_522*S23-ROcp22_86*C23);
    ROcp22_923 = -(ROcp22_622*S23-ROcp22_96*C23);
    RLcp22_122 = ROcp22_16*s.dpt(1,5)+ROcp22_45*s.dpt(2,5)+ROcp22_76*s.dpt(3,5);
    RLcp22_222 = ROcp22_26*s.dpt(1,5)+ROcp22_55*s.dpt(2,5)+ROcp22_86*s.dpt(3,5);
    RLcp22_322 = ROcp22_36*s.dpt(1,5)+ROcp22_96*s.dpt(3,5)+s.dpt(2,5)*S5;
    POcp22_122 = RLcp22_122+q(1);
    POcp22_222 = RLcp22_222+q(2);
    POcp22_322 = RLcp22_322+q(3);
    OMcp22_122 = OMcp22_16+ROcp22_76*qd(22);
    OMcp22_222 = OMcp22_26+ROcp22_86*qd(22);
    OMcp22_322 = OMcp22_36+ROcp22_96*qd(22);
    ORcp22_122 = OMcp22_26*RLcp22_322-OMcp22_36*RLcp22_222;
    ORcp22_222 = -(OMcp22_16*RLcp22_322-OMcp22_36*RLcp22_122);
    ORcp22_322 = OMcp22_16*RLcp22_222-OMcp22_26*RLcp22_122;
    VIcp22_122 = ORcp22_122+qd(1);
    VIcp22_222 = ORcp22_222+qd(2);
    VIcp22_322 = ORcp22_322+qd(3);
    ACcp22_122 = qdd(1)+OMcp22_26*ORcp22_322-OMcp22_36*ORcp22_222+OPcp22_26*RLcp22_322-OPcp22_36*RLcp22_222;
    ACcp22_222 = qdd(2)-OMcp22_16*ORcp22_322+OMcp22_36*ORcp22_122-OPcp22_16*RLcp22_322+OPcp22_36*RLcp22_122;
    ACcp22_322 = qdd(3)+OMcp22_16*ORcp22_222-OMcp22_26*ORcp22_122+OPcp22_16*RLcp22_222-OPcp22_26*RLcp22_122;
    OMcp22_123 = OMcp22_122+ROcp22_122*qd(23);
    OMcp22_223 = OMcp22_222+ROcp22_222*qd(23);
    OMcp22_323 = OMcp22_322+ROcp22_322*qd(23);
    OPcp22_123 = OPcp22_16+ROcp22_122*qdd(23)+ROcp22_76*qdd(22)+qd(22)*(OMcp22_26*ROcp22_96-OMcp22_36*ROcp22_86)+qd(23)*(OMcp22_222*ROcp22_322-...
 OMcp22_322*ROcp22_222);
    OPcp22_223 = OPcp22_26+ROcp22_222*qdd(23)+ROcp22_86*qdd(22)-qd(22)*(OMcp22_16*ROcp22_96-OMcp22_36*ROcp22_76)-qd(23)*(OMcp22_122*ROcp22_322-...
 OMcp22_322*ROcp22_122);
    OPcp22_323 = OPcp22_36+ROcp22_322*qdd(23)+ROcp22_96*qdd(22)+qd(22)*(OMcp22_16*ROcp22_86-OMcp22_26*ROcp22_76)+qd(23)*(OMcp22_122*ROcp22_222-...
 OMcp22_222*ROcp22_122);

% = = Block_1_0_0_23_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp22_122;
    sens.P(2) = POcp22_222;
    sens.P(3) = POcp22_322;
    sens.R(1,1) = ROcp22_122;
    sens.R(1,2) = ROcp22_222;
    sens.R(1,3) = ROcp22_322;
    sens.R(2,1) = ROcp22_423;
    sens.R(2,2) = ROcp22_523;
    sens.R(2,3) = ROcp22_623;
    sens.R(3,1) = ROcp22_723;
    sens.R(3,2) = ROcp22_823;
    sens.R(3,3) = ROcp22_923;
    sens.V(1) = VIcp22_122;
    sens.V(2) = VIcp22_222;
    sens.V(3) = VIcp22_322;
    sens.OM(1) = OMcp22_123;
    sens.OM(2) = OMcp22_223;
    sens.OM(3) = OMcp22_323;
    sens.A(1) = ACcp22_122;
    sens.A(2) = ACcp22_222;
    sens.A(3) = ACcp22_322;
    sens.OMP(1) = OPcp22_123;
    sens.OMP(2) = OPcp22_223;
    sens.OMP(3) = OPcp22_323;
 
% 
case 24, 


% = = Block_1_0_0_24_0_1 = = 
 
% Sensor Kinematics 


    ROcp23_45 = -S4*C5;
    ROcp23_55 = C4*C5;
    ROcp23_75 = S4*S5;
    ROcp23_85 = -C4*S5;
    ROcp23_16 = -(ROcp23_75*S6-C4*C6);
    ROcp23_26 = -(ROcp23_85*S6-S4*C6);
    ROcp23_36 = -C5*S6;
    ROcp23_76 = ROcp23_75*C6+C4*S6;
    ROcp23_86 = ROcp23_85*C6+S4*S6;
    ROcp23_96 = C5*C6;
    OMcp23_15 = qd(5)*C4;
    OMcp23_25 = qd(5)*S4;
    OMcp23_16 = OMcp23_15+ROcp23_45*qd(6);
    OMcp23_26 = OMcp23_25+ROcp23_55*qd(6);
    OMcp23_36 = qd(4)+qd(6)*S5;
    OPcp23_16 = ROcp23_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp23_25*S5-ROcp23_55*qd(4));
    OPcp23_26 = ROcp23_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp23_15*S5-ROcp23_45*qd(4));
    OPcp23_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_24_0_7 = = 
 
% Sensor Kinematics 


    ROcp23_124 = ROcp23_16*C24+ROcp23_45*S24;
    ROcp23_224 = ROcp23_26*C24+ROcp23_55*S24;
    ROcp23_324 = ROcp23_36*C24+S24*S5;
    ROcp23_424 = -(ROcp23_16*S24-ROcp23_45*C24);
    ROcp23_524 = -(ROcp23_26*S24-ROcp23_55*C24);
    ROcp23_624 = -(ROcp23_36*S24-C24*S5);
    RLcp23_124 = ROcp23_16*s.dpt(1,6)+ROcp23_45*s.dpt(2,6)+ROcp23_76*s.dpt(3,6);
    RLcp23_224 = ROcp23_26*s.dpt(1,6)+ROcp23_55*s.dpt(2,6)+ROcp23_86*s.dpt(3,6);
    RLcp23_324 = ROcp23_36*s.dpt(1,6)+ROcp23_96*s.dpt(3,6)+s.dpt(2,6)*S5;
    POcp23_124 = RLcp23_124+q(1);
    POcp23_224 = RLcp23_224+q(2);
    POcp23_324 = RLcp23_324+q(3);
    OMcp23_124 = OMcp23_16+ROcp23_76*qd(24);
    OMcp23_224 = OMcp23_26+ROcp23_86*qd(24);
    OMcp23_324 = OMcp23_36+ROcp23_96*qd(24);
    ORcp23_124 = OMcp23_26*RLcp23_324-OMcp23_36*RLcp23_224;
    ORcp23_224 = -(OMcp23_16*RLcp23_324-OMcp23_36*RLcp23_124);
    ORcp23_324 = OMcp23_16*RLcp23_224-OMcp23_26*RLcp23_124;
    VIcp23_124 = ORcp23_124+qd(1);
    VIcp23_224 = ORcp23_224+qd(2);
    VIcp23_324 = ORcp23_324+qd(3);
    OPcp23_124 = OPcp23_16+ROcp23_76*qdd(24)+qd(24)*(OMcp23_26*ROcp23_96-OMcp23_36*ROcp23_86);
    OPcp23_224 = OPcp23_26+ROcp23_86*qdd(24)-qd(24)*(OMcp23_16*ROcp23_96-OMcp23_36*ROcp23_76);
    OPcp23_324 = OPcp23_36+ROcp23_96*qdd(24)+qd(24)*(OMcp23_16*ROcp23_86-OMcp23_26*ROcp23_76);
    ACcp23_124 = qdd(1)+OMcp23_26*ORcp23_324-OMcp23_36*ORcp23_224+OPcp23_26*RLcp23_324-OPcp23_36*RLcp23_224;
    ACcp23_224 = qdd(2)-OMcp23_16*ORcp23_324+OMcp23_36*ORcp23_124-OPcp23_16*RLcp23_324+OPcp23_36*RLcp23_124;
    ACcp23_324 = qdd(3)+OMcp23_16*ORcp23_224-OMcp23_26*ORcp23_124+OPcp23_16*RLcp23_224-OPcp23_26*RLcp23_124;

% = = Block_1_0_0_24_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp23_124;
    sens.P(2) = POcp23_224;
    sens.P(3) = POcp23_324;
    sens.R(1,1) = ROcp23_124;
    sens.R(1,2) = ROcp23_224;
    sens.R(1,3) = ROcp23_324;
    sens.R(2,1) = ROcp23_424;
    sens.R(2,2) = ROcp23_524;
    sens.R(2,3) = ROcp23_624;
    sens.R(3,1) = ROcp23_76;
    sens.R(3,2) = ROcp23_86;
    sens.R(3,3) = ROcp23_96;
    sens.V(1) = VIcp23_124;
    sens.V(2) = VIcp23_224;
    sens.V(3) = VIcp23_324;
    sens.OM(1) = OMcp23_124;
    sens.OM(2) = OMcp23_224;
    sens.OM(3) = OMcp23_324;
    sens.A(1) = ACcp23_124;
    sens.A(2) = ACcp23_224;
    sens.A(3) = ACcp23_324;
    sens.OMP(1) = OPcp23_124;
    sens.OMP(2) = OPcp23_224;
    sens.OMP(3) = OPcp23_324;
 
% 
case 25, 


% = = Block_1_0_0_25_0_1 = = 
 
% Sensor Kinematics 


    ROcp24_45 = -S4*C5;
    ROcp24_55 = C4*C5;
    ROcp24_75 = S4*S5;
    ROcp24_85 = -C4*S5;
    ROcp24_16 = -(ROcp24_75*S6-C4*C6);
    ROcp24_26 = -(ROcp24_85*S6-S4*C6);
    ROcp24_36 = -C5*S6;
    ROcp24_76 = ROcp24_75*C6+C4*S6;
    ROcp24_86 = ROcp24_85*C6+S4*S6;
    ROcp24_96 = C5*C6;
    OMcp24_15 = qd(5)*C4;
    OMcp24_25 = qd(5)*S4;
    OMcp24_16 = OMcp24_15+ROcp24_45*qd(6);
    OMcp24_26 = OMcp24_25+ROcp24_55*qd(6);
    OMcp24_36 = qd(4)+qd(6)*S5;
    OPcp24_16 = ROcp24_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp24_25*S5-ROcp24_55*qd(4));
    OPcp24_26 = ROcp24_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp24_15*S5-ROcp24_45*qd(4));
    OPcp24_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_25_0_7 = = 
 
% Sensor Kinematics 


    ROcp24_124 = ROcp24_16*C24+ROcp24_45*S24;
    ROcp24_224 = ROcp24_26*C24+ROcp24_55*S24;
    ROcp24_324 = ROcp24_36*C24+S24*S5;
    ROcp24_424 = -(ROcp24_16*S24-ROcp24_45*C24);
    ROcp24_524 = -(ROcp24_26*S24-ROcp24_55*C24);
    ROcp24_624 = -(ROcp24_36*S24-C24*S5);
    ROcp24_125 = ROcp24_124*C25-ROcp24_76*S25;
    ROcp24_225 = ROcp24_224*C25-ROcp24_86*S25;
    ROcp24_325 = ROcp24_324*C25-ROcp24_96*S25;
    ROcp24_725 = ROcp24_124*S25+ROcp24_76*C25;
    ROcp24_825 = ROcp24_224*S25+ROcp24_86*C25;
    ROcp24_925 = ROcp24_324*S25+ROcp24_96*C25;
    RLcp24_124 = ROcp24_16*s.dpt(1,6)+ROcp24_45*s.dpt(2,6)+ROcp24_76*s.dpt(3,6);
    RLcp24_224 = ROcp24_26*s.dpt(1,6)+ROcp24_55*s.dpt(2,6)+ROcp24_86*s.dpt(3,6);
    RLcp24_324 = ROcp24_36*s.dpt(1,6)+ROcp24_96*s.dpt(3,6)+s.dpt(2,6)*S5;
    POcp24_124 = RLcp24_124+q(1);
    POcp24_224 = RLcp24_224+q(2);
    POcp24_324 = RLcp24_324+q(3);
    OMcp24_124 = OMcp24_16+ROcp24_76*qd(24);
    OMcp24_224 = OMcp24_26+ROcp24_86*qd(24);
    OMcp24_324 = OMcp24_36+ROcp24_96*qd(24);
    ORcp24_124 = OMcp24_26*RLcp24_324-OMcp24_36*RLcp24_224;
    ORcp24_224 = -(OMcp24_16*RLcp24_324-OMcp24_36*RLcp24_124);
    ORcp24_324 = OMcp24_16*RLcp24_224-OMcp24_26*RLcp24_124;
    VIcp24_124 = ORcp24_124+qd(1);
    VIcp24_224 = ORcp24_224+qd(2);
    VIcp24_324 = ORcp24_324+qd(3);
    ACcp24_124 = qdd(1)+OMcp24_26*ORcp24_324-OMcp24_36*ORcp24_224+OPcp24_26*RLcp24_324-OPcp24_36*RLcp24_224;
    ACcp24_224 = qdd(2)-OMcp24_16*ORcp24_324+OMcp24_36*ORcp24_124-OPcp24_16*RLcp24_324+OPcp24_36*RLcp24_124;
    ACcp24_324 = qdd(3)+OMcp24_16*ORcp24_224-OMcp24_26*ORcp24_124+OPcp24_16*RLcp24_224-OPcp24_26*RLcp24_124;
    OMcp24_125 = OMcp24_124+ROcp24_424*qd(25);
    OMcp24_225 = OMcp24_224+ROcp24_524*qd(25);
    OMcp24_325 = OMcp24_324+ROcp24_624*qd(25);
    OPcp24_125 = OPcp24_16+ROcp24_424*qdd(25)+ROcp24_76*qdd(24)+qd(24)*(OMcp24_26*ROcp24_96-OMcp24_36*ROcp24_86)+qd(25)*(OMcp24_224*ROcp24_624-...
 OMcp24_324*ROcp24_524);
    OPcp24_225 = OPcp24_26+ROcp24_524*qdd(25)+ROcp24_86*qdd(24)-qd(24)*(OMcp24_16*ROcp24_96-OMcp24_36*ROcp24_76)-qd(25)*(OMcp24_124*ROcp24_624-...
 OMcp24_324*ROcp24_424);
    OPcp24_325 = OPcp24_36+ROcp24_624*qdd(25)+ROcp24_96*qdd(24)+qd(24)*(OMcp24_16*ROcp24_86-OMcp24_26*ROcp24_76)+qd(25)*(OMcp24_124*ROcp24_524-...
 OMcp24_224*ROcp24_424);

% = = Block_1_0_0_25_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp24_124;
    sens.P(2) = POcp24_224;
    sens.P(3) = POcp24_324;
    sens.R(1,1) = ROcp24_125;
    sens.R(1,2) = ROcp24_225;
    sens.R(1,3) = ROcp24_325;
    sens.R(2,1) = ROcp24_424;
    sens.R(2,2) = ROcp24_524;
    sens.R(2,3) = ROcp24_624;
    sens.R(3,1) = ROcp24_725;
    sens.R(3,2) = ROcp24_825;
    sens.R(3,3) = ROcp24_925;
    sens.V(1) = VIcp24_124;
    sens.V(2) = VIcp24_224;
    sens.V(3) = VIcp24_324;
    sens.OM(1) = OMcp24_125;
    sens.OM(2) = OMcp24_225;
    sens.OM(3) = OMcp24_325;
    sens.A(1) = ACcp24_124;
    sens.A(2) = ACcp24_224;
    sens.A(3) = ACcp24_324;
    sens.OMP(1) = OPcp24_125;
    sens.OMP(2) = OPcp24_225;
    sens.OMP(3) = OPcp24_325;
 
% 
case 26, 


% = = Block_1_0_0_26_0_1 = = 
 
% Sensor Kinematics 


    ROcp25_45 = -S4*C5;
    ROcp25_55 = C4*C5;
    ROcp25_75 = S4*S5;
    ROcp25_85 = -C4*S5;
    ROcp25_16 = -(ROcp25_75*S6-C4*C6);
    ROcp25_26 = -(ROcp25_85*S6-S4*C6);
    ROcp25_36 = -C5*S6;
    ROcp25_76 = ROcp25_75*C6+C4*S6;
    ROcp25_86 = ROcp25_85*C6+S4*S6;
    ROcp25_96 = C5*C6;
    OMcp25_15 = qd(5)*C4;
    OMcp25_25 = qd(5)*S4;
    OMcp25_16 = OMcp25_15+ROcp25_45*qd(6);
    OMcp25_26 = OMcp25_25+ROcp25_55*qd(6);
    OMcp25_36 = qd(4)+qd(6)*S5;
    OPcp25_16 = ROcp25_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp25_25*S5-ROcp25_55*qd(4));
    OPcp25_26 = ROcp25_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp25_15*S5-ROcp25_45*qd(4));
    OPcp25_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_26_0_7 = = 
 
% Sensor Kinematics 


    ROcp25_124 = ROcp25_16*C24+ROcp25_45*S24;
    ROcp25_224 = ROcp25_26*C24+ROcp25_55*S24;
    ROcp25_324 = ROcp25_36*C24+S24*S5;
    ROcp25_424 = -(ROcp25_16*S24-ROcp25_45*C24);
    ROcp25_524 = -(ROcp25_26*S24-ROcp25_55*C24);
    ROcp25_624 = -(ROcp25_36*S24-C24*S5);
    ROcp25_125 = ROcp25_124*C25-ROcp25_76*S25;
    ROcp25_225 = ROcp25_224*C25-ROcp25_86*S25;
    ROcp25_325 = ROcp25_324*C25-ROcp25_96*S25;
    ROcp25_725 = ROcp25_124*S25+ROcp25_76*C25;
    ROcp25_825 = ROcp25_224*S25+ROcp25_86*C25;
    ROcp25_925 = ROcp25_324*S25+ROcp25_96*C25;
    ROcp25_426 = ROcp25_424*C26+ROcp25_725*S26;
    ROcp25_526 = ROcp25_524*C26+ROcp25_825*S26;
    ROcp25_626 = ROcp25_624*C26+ROcp25_925*S26;
    ROcp25_726 = -(ROcp25_424*S26-ROcp25_725*C26);
    ROcp25_826 = -(ROcp25_524*S26-ROcp25_825*C26);
    ROcp25_926 = -(ROcp25_624*S26-ROcp25_925*C26);
    RLcp25_124 = ROcp25_16*s.dpt(1,6)+ROcp25_45*s.dpt(2,6)+ROcp25_76*s.dpt(3,6);
    RLcp25_224 = ROcp25_26*s.dpt(1,6)+ROcp25_55*s.dpt(2,6)+ROcp25_86*s.dpt(3,6);
    RLcp25_324 = ROcp25_36*s.dpt(1,6)+ROcp25_96*s.dpt(3,6)+s.dpt(2,6)*S5;
    POcp25_124 = RLcp25_124+q(1);
    POcp25_224 = RLcp25_224+q(2);
    POcp25_324 = RLcp25_324+q(3);
    OMcp25_124 = OMcp25_16+ROcp25_76*qd(24);
    OMcp25_224 = OMcp25_26+ROcp25_86*qd(24);
    OMcp25_324 = OMcp25_36+ROcp25_96*qd(24);
    ORcp25_124 = OMcp25_26*RLcp25_324-OMcp25_36*RLcp25_224;
    ORcp25_224 = -(OMcp25_16*RLcp25_324-OMcp25_36*RLcp25_124);
    ORcp25_324 = OMcp25_16*RLcp25_224-OMcp25_26*RLcp25_124;
    VIcp25_124 = ORcp25_124+qd(1);
    VIcp25_224 = ORcp25_224+qd(2);
    VIcp25_324 = ORcp25_324+qd(3);
    ACcp25_124 = qdd(1)+OMcp25_26*ORcp25_324-OMcp25_36*ORcp25_224+OPcp25_26*RLcp25_324-OPcp25_36*RLcp25_224;
    ACcp25_224 = qdd(2)-OMcp25_16*ORcp25_324+OMcp25_36*ORcp25_124-OPcp25_16*RLcp25_324+OPcp25_36*RLcp25_124;
    ACcp25_324 = qdd(3)+OMcp25_16*ORcp25_224-OMcp25_26*ORcp25_124+OPcp25_16*RLcp25_224-OPcp25_26*RLcp25_124;
    OMcp25_125 = OMcp25_124+ROcp25_424*qd(25);
    OMcp25_225 = OMcp25_224+ROcp25_524*qd(25);
    OMcp25_325 = OMcp25_324+ROcp25_624*qd(25);
    OMcp25_126 = OMcp25_125+ROcp25_125*qd(26);
    OMcp25_226 = OMcp25_225+ROcp25_225*qd(26);
    OMcp25_326 = OMcp25_325+ROcp25_325*qd(26);
    OPcp25_126 = OPcp25_16+ROcp25_125*qdd(26)+ROcp25_424*qdd(25)+ROcp25_76*qdd(24)+qd(24)*(OMcp25_26*ROcp25_96-OMcp25_36*ROcp25_86)+qd(25)*(...
 OMcp25_224*ROcp25_624-OMcp25_324*ROcp25_524)+qd(26)*(OMcp25_225*ROcp25_325-OMcp25_325*ROcp25_225);
    OPcp25_226 = OPcp25_26+ROcp25_225*qdd(26)+ROcp25_524*qdd(25)+ROcp25_86*qdd(24)-qd(24)*(OMcp25_16*ROcp25_96-OMcp25_36*ROcp25_76)-qd(25)*(...
 OMcp25_124*ROcp25_624-OMcp25_324*ROcp25_424)-qd(26)*(OMcp25_125*ROcp25_325-OMcp25_325*ROcp25_125);
    OPcp25_326 = OPcp25_36+ROcp25_325*qdd(26)+ROcp25_624*qdd(25)+ROcp25_96*qdd(24)+qd(24)*(OMcp25_16*ROcp25_86-OMcp25_26*ROcp25_76)+qd(25)*(...
 OMcp25_124*ROcp25_524-OMcp25_224*ROcp25_424)+qd(26)*(OMcp25_125*ROcp25_225-OMcp25_225*ROcp25_125);

% = = Block_1_0_0_26_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp25_124;
    sens.P(2) = POcp25_224;
    sens.P(3) = POcp25_324;
    sens.R(1,1) = ROcp25_125;
    sens.R(1,2) = ROcp25_225;
    sens.R(1,3) = ROcp25_325;
    sens.R(2,1) = ROcp25_426;
    sens.R(2,2) = ROcp25_526;
    sens.R(2,3) = ROcp25_626;
    sens.R(3,1) = ROcp25_726;
    sens.R(3,2) = ROcp25_826;
    sens.R(3,3) = ROcp25_926;
    sens.V(1) = VIcp25_124;
    sens.V(2) = VIcp25_224;
    sens.V(3) = VIcp25_324;
    sens.OM(1) = OMcp25_126;
    sens.OM(2) = OMcp25_226;
    sens.OM(3) = OMcp25_326;
    sens.A(1) = ACcp25_124;
    sens.A(2) = ACcp25_224;
    sens.A(3) = ACcp25_324;
    sens.OMP(1) = OPcp25_126;
    sens.OMP(2) = OPcp25_226;
    sens.OMP(3) = OPcp25_326;
 
% 
case 27, 


% = = Block_1_0_0_27_0_1 = = 
 
% Sensor Kinematics 


    ROcp26_45 = -S4*C5;
    ROcp26_55 = C4*C5;
    ROcp26_75 = S4*S5;
    ROcp26_85 = -C4*S5;
    ROcp26_16 = -(ROcp26_75*S6-C4*C6);
    ROcp26_26 = -(ROcp26_85*S6-S4*C6);
    ROcp26_36 = -C5*S6;
    ROcp26_76 = ROcp26_75*C6+C4*S6;
    ROcp26_86 = ROcp26_85*C6+S4*S6;
    ROcp26_96 = C5*C6;
    OMcp26_15 = qd(5)*C4;
    OMcp26_25 = qd(5)*S4;
    OMcp26_16 = OMcp26_15+ROcp26_45*qd(6);
    OMcp26_26 = OMcp26_25+ROcp26_55*qd(6);
    OMcp26_36 = qd(4)+qd(6)*S5;
    OPcp26_16 = ROcp26_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp26_25*S5-ROcp26_55*qd(4));
    OPcp26_26 = ROcp26_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp26_15*S5-ROcp26_45*qd(4));
    OPcp26_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_27_0_7 = = 
 
% Sensor Kinematics 


    ROcp26_124 = ROcp26_16*C24+ROcp26_45*S24;
    ROcp26_224 = ROcp26_26*C24+ROcp26_55*S24;
    ROcp26_324 = ROcp26_36*C24+S24*S5;
    ROcp26_424 = -(ROcp26_16*S24-ROcp26_45*C24);
    ROcp26_524 = -(ROcp26_26*S24-ROcp26_55*C24);
    ROcp26_624 = -(ROcp26_36*S24-C24*S5);
    ROcp26_125 = ROcp26_124*C25-ROcp26_76*S25;
    ROcp26_225 = ROcp26_224*C25-ROcp26_86*S25;
    ROcp26_325 = ROcp26_324*C25-ROcp26_96*S25;
    ROcp26_725 = ROcp26_124*S25+ROcp26_76*C25;
    ROcp26_825 = ROcp26_224*S25+ROcp26_86*C25;
    ROcp26_925 = ROcp26_324*S25+ROcp26_96*C25;
    ROcp26_426 = ROcp26_424*C26+ROcp26_725*S26;
    ROcp26_526 = ROcp26_524*C26+ROcp26_825*S26;
    ROcp26_626 = ROcp26_624*C26+ROcp26_925*S26;
    ROcp26_726 = -(ROcp26_424*S26-ROcp26_725*C26);
    ROcp26_826 = -(ROcp26_524*S26-ROcp26_825*C26);
    ROcp26_926 = -(ROcp26_624*S26-ROcp26_925*C26);
    ROcp26_427 = ROcp26_426*C27+ROcp26_726*S27;
    ROcp26_527 = ROcp26_526*C27+ROcp26_826*S27;
    ROcp26_627 = ROcp26_626*C27+ROcp26_926*S27;
    ROcp26_727 = -(ROcp26_426*S27-ROcp26_726*C27);
    ROcp26_827 = -(ROcp26_526*S27-ROcp26_826*C27);
    ROcp26_927 = -(ROcp26_626*S27-ROcp26_926*C27);
    RLcp26_124 = ROcp26_16*s.dpt(1,6)+ROcp26_45*s.dpt(2,6)+ROcp26_76*s.dpt(3,6);
    RLcp26_224 = ROcp26_26*s.dpt(1,6)+ROcp26_55*s.dpt(2,6)+ROcp26_86*s.dpt(3,6);
    RLcp26_324 = ROcp26_36*s.dpt(1,6)+ROcp26_96*s.dpt(3,6)+s.dpt(2,6)*S5;
    OMcp26_124 = OMcp26_16+ROcp26_76*qd(24);
    OMcp26_224 = OMcp26_26+ROcp26_86*qd(24);
    OMcp26_324 = OMcp26_36+ROcp26_96*qd(24);
    ORcp26_124 = OMcp26_26*RLcp26_324-OMcp26_36*RLcp26_224;
    ORcp26_224 = -(OMcp26_16*RLcp26_324-OMcp26_36*RLcp26_124);
    ORcp26_324 = OMcp26_16*RLcp26_224-OMcp26_26*RLcp26_124;
    OMcp26_125 = OMcp26_124+ROcp26_424*qd(25);
    OMcp26_225 = OMcp26_224+ROcp26_524*qd(25);
    OMcp26_325 = OMcp26_324+ROcp26_624*qd(25);
    OMcp26_126 = OMcp26_125+ROcp26_125*qd(26);
    OMcp26_226 = OMcp26_225+ROcp26_225*qd(26);
    OMcp26_326 = OMcp26_325+ROcp26_325*qd(26);
    OPcp26_126 = OPcp26_16+ROcp26_125*qdd(26)+ROcp26_424*qdd(25)+ROcp26_76*qdd(24)+qd(24)*(OMcp26_26*ROcp26_96-OMcp26_36*ROcp26_86)+qd(25)*(...
 OMcp26_224*ROcp26_624-OMcp26_324*ROcp26_524)+qd(26)*(OMcp26_225*ROcp26_325-OMcp26_325*ROcp26_225);
    OPcp26_226 = OPcp26_26+ROcp26_225*qdd(26)+ROcp26_524*qdd(25)+ROcp26_86*qdd(24)-qd(24)*(OMcp26_16*ROcp26_96-OMcp26_36*ROcp26_76)-qd(25)*(...
 OMcp26_124*ROcp26_624-OMcp26_324*ROcp26_424)-qd(26)*(OMcp26_125*ROcp26_325-OMcp26_325*ROcp26_125);
    OPcp26_326 = OPcp26_36+ROcp26_325*qdd(26)+ROcp26_624*qdd(25)+ROcp26_96*qdd(24)+qd(24)*(OMcp26_16*ROcp26_86-OMcp26_26*ROcp26_76)+qd(25)*(...
 OMcp26_124*ROcp26_524-OMcp26_224*ROcp26_424)+qd(26)*(OMcp26_125*ROcp26_225-OMcp26_225*ROcp26_125);
    RLcp26_127 = ROcp26_426*s.dpt(2,37);
    RLcp26_227 = ROcp26_526*s.dpt(2,37);
    RLcp26_327 = ROcp26_626*s.dpt(2,37);
    POcp26_127 = RLcp26_124+RLcp26_127+q(1);
    POcp26_227 = RLcp26_224+RLcp26_227+q(2);
    POcp26_327 = RLcp26_324+RLcp26_327+q(3);
    OMcp26_127 = OMcp26_126+ROcp26_125*qd(27);
    OMcp26_227 = OMcp26_226+ROcp26_225*qd(27);
    OMcp26_327 = OMcp26_326+ROcp26_325*qd(27);
    ORcp26_127 = OMcp26_226*RLcp26_327-OMcp26_326*RLcp26_227;
    ORcp26_227 = -(OMcp26_126*RLcp26_327-OMcp26_326*RLcp26_127);
    ORcp26_327 = OMcp26_126*RLcp26_227-OMcp26_226*RLcp26_127;
    VIcp26_127 = ORcp26_124+ORcp26_127+qd(1);
    VIcp26_227 = ORcp26_224+ORcp26_227+qd(2);
    VIcp26_327 = ORcp26_324+ORcp26_327+qd(3);
    OPcp26_127 = OPcp26_126+ROcp26_125*qdd(27)+qd(27)*(OMcp26_226*ROcp26_325-OMcp26_326*ROcp26_225);
    OPcp26_227 = OPcp26_226+ROcp26_225*qdd(27)-qd(27)*(OMcp26_126*ROcp26_325-OMcp26_326*ROcp26_125);
    OPcp26_327 = OPcp26_326+ROcp26_325*qdd(27)+qd(27)*(OMcp26_126*ROcp26_225-OMcp26_226*ROcp26_125);
    ACcp26_127 = qdd(1)+OMcp26_226*ORcp26_327+OMcp26_26*ORcp26_324-OMcp26_326*ORcp26_227-OMcp26_36*ORcp26_224+OPcp26_226*RLcp26_327+OPcp26_26*...
 RLcp26_324-OPcp26_326*RLcp26_227-OPcp26_36*RLcp26_224;
    ACcp26_227 = qdd(2)-OMcp26_126*ORcp26_327-OMcp26_16*ORcp26_324+OMcp26_326*ORcp26_127+OMcp26_36*ORcp26_124-OPcp26_126*RLcp26_327-OPcp26_16*...
 RLcp26_324+OPcp26_326*RLcp26_127+OPcp26_36*RLcp26_124;
    ACcp26_327 = qdd(3)+OMcp26_126*ORcp26_227+OMcp26_16*ORcp26_224-OMcp26_226*ORcp26_127-OMcp26_26*ORcp26_124+OPcp26_126*RLcp26_227+OPcp26_16*...
 RLcp26_224-OPcp26_226*RLcp26_127-OPcp26_26*RLcp26_124;

% = = Block_1_0_0_27_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp26_127;
    sens.P(2) = POcp26_227;
    sens.P(3) = POcp26_327;
    sens.R(1,1) = ROcp26_125;
    sens.R(1,2) = ROcp26_225;
    sens.R(1,3) = ROcp26_325;
    sens.R(2,1) = ROcp26_427;
    sens.R(2,2) = ROcp26_527;
    sens.R(2,3) = ROcp26_627;
    sens.R(3,1) = ROcp26_727;
    sens.R(3,2) = ROcp26_827;
    sens.R(3,3) = ROcp26_927;
    sens.V(1) = VIcp26_127;
    sens.V(2) = VIcp26_227;
    sens.V(3) = VIcp26_327;
    sens.OM(1) = OMcp26_127;
    sens.OM(2) = OMcp26_227;
    sens.OM(3) = OMcp26_327;
    sens.A(1) = ACcp26_127;
    sens.A(2) = ACcp26_227;
    sens.A(3) = ACcp26_327;
    sens.OMP(1) = OPcp26_127;
    sens.OMP(2) = OPcp26_227;
    sens.OMP(3) = OPcp26_327;
 
% 
case 28, 


% = = Block_1_0_0_28_0_1 = = 
 
% Sensor Kinematics 


    ROcp27_45 = -S4*C5;
    ROcp27_55 = C4*C5;
    ROcp27_75 = S4*S5;
    ROcp27_85 = -C4*S5;
    ROcp27_16 = -(ROcp27_75*S6-C4*C6);
    ROcp27_26 = -(ROcp27_85*S6-S4*C6);
    ROcp27_36 = -C5*S6;
    ROcp27_76 = ROcp27_75*C6+C4*S6;
    ROcp27_86 = ROcp27_85*C6+S4*S6;
    ROcp27_96 = C5*C6;
    OMcp27_15 = qd(5)*C4;
    OMcp27_25 = qd(5)*S4;
    OMcp27_16 = OMcp27_15+ROcp27_45*qd(6);
    OMcp27_26 = OMcp27_25+ROcp27_55*qd(6);
    OMcp27_36 = qd(4)+qd(6)*S5;
    OPcp27_16 = ROcp27_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp27_25*S5-ROcp27_55*qd(4));
    OPcp27_26 = ROcp27_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp27_15*S5-ROcp27_45*qd(4));
    OPcp27_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_28_0_7 = = 
 
% Sensor Kinematics 


    ROcp27_124 = ROcp27_16*C24+ROcp27_45*S24;
    ROcp27_224 = ROcp27_26*C24+ROcp27_55*S24;
    ROcp27_324 = ROcp27_36*C24+S24*S5;
    ROcp27_424 = -(ROcp27_16*S24-ROcp27_45*C24);
    ROcp27_524 = -(ROcp27_26*S24-ROcp27_55*C24);
    ROcp27_624 = -(ROcp27_36*S24-C24*S5);
    ROcp27_125 = ROcp27_124*C25-ROcp27_76*S25;
    ROcp27_225 = ROcp27_224*C25-ROcp27_86*S25;
    ROcp27_325 = ROcp27_324*C25-ROcp27_96*S25;
    ROcp27_725 = ROcp27_124*S25+ROcp27_76*C25;
    ROcp27_825 = ROcp27_224*S25+ROcp27_86*C25;
    ROcp27_925 = ROcp27_324*S25+ROcp27_96*C25;
    ROcp27_426 = ROcp27_424*C26+ROcp27_725*S26;
    ROcp27_526 = ROcp27_524*C26+ROcp27_825*S26;
    ROcp27_626 = ROcp27_624*C26+ROcp27_925*S26;
    ROcp27_726 = -(ROcp27_424*S26-ROcp27_725*C26);
    ROcp27_826 = -(ROcp27_524*S26-ROcp27_825*C26);
    ROcp27_926 = -(ROcp27_624*S26-ROcp27_925*C26);
    ROcp27_427 = ROcp27_426*C27+ROcp27_726*S27;
    ROcp27_527 = ROcp27_526*C27+ROcp27_826*S27;
    ROcp27_627 = ROcp27_626*C27+ROcp27_926*S27;
    ROcp27_727 = -(ROcp27_426*S27-ROcp27_726*C27);
    ROcp27_827 = -(ROcp27_526*S27-ROcp27_826*C27);
    ROcp27_927 = -(ROcp27_626*S27-ROcp27_926*C27);
    ROcp27_128 = ROcp27_125*C28-ROcp27_727*S28;
    ROcp27_228 = ROcp27_225*C28-ROcp27_827*S28;
    ROcp27_328 = ROcp27_325*C28-ROcp27_927*S28;
    ROcp27_728 = ROcp27_125*S28+ROcp27_727*C28;
    ROcp27_828 = ROcp27_225*S28+ROcp27_827*C28;
    ROcp27_928 = ROcp27_325*S28+ROcp27_927*C28;
    RLcp27_124 = ROcp27_16*s.dpt(1,6)+ROcp27_45*s.dpt(2,6)+ROcp27_76*s.dpt(3,6);
    RLcp27_224 = ROcp27_26*s.dpt(1,6)+ROcp27_55*s.dpt(2,6)+ROcp27_86*s.dpt(3,6);
    RLcp27_324 = ROcp27_36*s.dpt(1,6)+ROcp27_96*s.dpt(3,6)+s.dpt(2,6)*S5;
    OMcp27_124 = OMcp27_16+ROcp27_76*qd(24);
    OMcp27_224 = OMcp27_26+ROcp27_86*qd(24);
    OMcp27_324 = OMcp27_36+ROcp27_96*qd(24);
    ORcp27_124 = OMcp27_26*RLcp27_324-OMcp27_36*RLcp27_224;
    ORcp27_224 = -(OMcp27_16*RLcp27_324-OMcp27_36*RLcp27_124);
    ORcp27_324 = OMcp27_16*RLcp27_224-OMcp27_26*RLcp27_124;
    OMcp27_125 = OMcp27_124+ROcp27_424*qd(25);
    OMcp27_225 = OMcp27_224+ROcp27_524*qd(25);
    OMcp27_325 = OMcp27_324+ROcp27_624*qd(25);
    OMcp27_126 = OMcp27_125+ROcp27_125*qd(26);
    OMcp27_226 = OMcp27_225+ROcp27_225*qd(26);
    OMcp27_326 = OMcp27_325+ROcp27_325*qd(26);
    OPcp27_126 = OPcp27_16+ROcp27_125*qdd(26)+ROcp27_424*qdd(25)+ROcp27_76*qdd(24)+qd(24)*(OMcp27_26*ROcp27_96-OMcp27_36*ROcp27_86)+qd(25)*(...
 OMcp27_224*ROcp27_624-OMcp27_324*ROcp27_524)+qd(26)*(OMcp27_225*ROcp27_325-OMcp27_325*ROcp27_225);
    OPcp27_226 = OPcp27_26+ROcp27_225*qdd(26)+ROcp27_524*qdd(25)+ROcp27_86*qdd(24)-qd(24)*(OMcp27_16*ROcp27_96-OMcp27_36*ROcp27_76)-qd(25)*(...
 OMcp27_124*ROcp27_624-OMcp27_324*ROcp27_424)-qd(26)*(OMcp27_125*ROcp27_325-OMcp27_325*ROcp27_125);
    OPcp27_326 = OPcp27_36+ROcp27_325*qdd(26)+ROcp27_624*qdd(25)+ROcp27_96*qdd(24)+qd(24)*(OMcp27_16*ROcp27_86-OMcp27_26*ROcp27_76)+qd(25)*(...
 OMcp27_124*ROcp27_524-OMcp27_224*ROcp27_424)+qd(26)*(OMcp27_125*ROcp27_225-OMcp27_225*ROcp27_125);
    RLcp27_127 = ROcp27_426*s.dpt(2,37);
    RLcp27_227 = ROcp27_526*s.dpt(2,37);
    RLcp27_327 = ROcp27_626*s.dpt(2,37);
    POcp27_127 = RLcp27_124+RLcp27_127+q(1);
    POcp27_227 = RLcp27_224+RLcp27_227+q(2);
    POcp27_327 = RLcp27_324+RLcp27_327+q(3);
    OMcp27_127 = OMcp27_126+ROcp27_125*qd(27);
    OMcp27_227 = OMcp27_226+ROcp27_225*qd(27);
    OMcp27_327 = OMcp27_326+ROcp27_325*qd(27);
    ORcp27_127 = OMcp27_226*RLcp27_327-OMcp27_326*RLcp27_227;
    ORcp27_227 = -(OMcp27_126*RLcp27_327-OMcp27_326*RLcp27_127);
    ORcp27_327 = OMcp27_126*RLcp27_227-OMcp27_226*RLcp27_127;
    VIcp27_127 = ORcp27_124+ORcp27_127+qd(1);
    VIcp27_227 = ORcp27_224+ORcp27_227+qd(2);
    VIcp27_327 = ORcp27_324+ORcp27_327+qd(3);
    ACcp27_127 = qdd(1)+OMcp27_226*ORcp27_327+OMcp27_26*ORcp27_324-OMcp27_326*ORcp27_227-OMcp27_36*ORcp27_224+OPcp27_226*RLcp27_327+OPcp27_26*...
 RLcp27_324-OPcp27_326*RLcp27_227-OPcp27_36*RLcp27_224;
    ACcp27_227 = qdd(2)-OMcp27_126*ORcp27_327-OMcp27_16*ORcp27_324+OMcp27_326*ORcp27_127+OMcp27_36*ORcp27_124-OPcp27_126*RLcp27_327-OPcp27_16*...
 RLcp27_324+OPcp27_326*RLcp27_127+OPcp27_36*RLcp27_124;
    ACcp27_327 = qdd(3)+OMcp27_126*ORcp27_227+OMcp27_16*ORcp27_224-OMcp27_226*ORcp27_127-OMcp27_26*ORcp27_124+OPcp27_126*RLcp27_227+OPcp27_16*...
 RLcp27_224-OPcp27_226*RLcp27_127-OPcp27_26*RLcp27_124;
    OMcp27_128 = OMcp27_127+ROcp27_427*qd(28);
    OMcp27_228 = OMcp27_227+ROcp27_527*qd(28);
    OMcp27_328 = OMcp27_327+ROcp27_627*qd(28);
    OPcp27_128 = OPcp27_126+ROcp27_125*qdd(27)+ROcp27_427*qdd(28)+qd(27)*(OMcp27_226*ROcp27_325-OMcp27_326*ROcp27_225)+qd(28)*(OMcp27_227*...
 ROcp27_627-OMcp27_327*ROcp27_527);
    OPcp27_228 = OPcp27_226+ROcp27_225*qdd(27)+ROcp27_527*qdd(28)-qd(27)*(OMcp27_126*ROcp27_325-OMcp27_326*ROcp27_125)-qd(28)*(OMcp27_127*...
 ROcp27_627-OMcp27_327*ROcp27_427);
    OPcp27_328 = OPcp27_326+ROcp27_325*qdd(27)+ROcp27_627*qdd(28)+qd(27)*(OMcp27_126*ROcp27_225-OMcp27_226*ROcp27_125)+qd(28)*(OMcp27_127*...
 ROcp27_527-OMcp27_227*ROcp27_427);

% = = Block_1_0_0_28_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp27_127;
    sens.P(2) = POcp27_227;
    sens.P(3) = POcp27_327;
    sens.R(1,1) = ROcp27_128;
    sens.R(1,2) = ROcp27_228;
    sens.R(1,3) = ROcp27_328;
    sens.R(2,1) = ROcp27_427;
    sens.R(2,2) = ROcp27_527;
    sens.R(2,3) = ROcp27_627;
    sens.R(3,1) = ROcp27_728;
    sens.R(3,2) = ROcp27_828;
    sens.R(3,3) = ROcp27_928;
    sens.V(1) = VIcp27_127;
    sens.V(2) = VIcp27_227;
    sens.V(3) = VIcp27_327;
    sens.OM(1) = OMcp27_128;
    sens.OM(2) = OMcp27_228;
    sens.OM(3) = OMcp27_328;
    sens.A(1) = ACcp27_127;
    sens.A(2) = ACcp27_227;
    sens.A(3) = ACcp27_327;
    sens.OMP(1) = OPcp27_128;
    sens.OMP(2) = OPcp27_228;
    sens.OMP(3) = OPcp27_328;
 
% 
case 29, 


% = = Block_1_0_0_29_0_1 = = 
 
% Sensor Kinematics 


    ROcp28_45 = -S4*C5;
    ROcp28_55 = C4*C5;
    ROcp28_75 = S4*S5;
    ROcp28_85 = -C4*S5;
    ROcp28_16 = -(ROcp28_75*S6-C4*C6);
    ROcp28_26 = -(ROcp28_85*S6-S4*C6);
    ROcp28_36 = -C5*S6;
    ROcp28_76 = ROcp28_75*C6+C4*S6;
    ROcp28_86 = ROcp28_85*C6+S4*S6;
    ROcp28_96 = C5*C6;
    OMcp28_15 = qd(5)*C4;
    OMcp28_25 = qd(5)*S4;
    OMcp28_16 = OMcp28_15+ROcp28_45*qd(6);
    OMcp28_26 = OMcp28_25+ROcp28_55*qd(6);
    OMcp28_36 = qd(4)+qd(6)*S5;
    OPcp28_16 = ROcp28_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp28_25*S5-ROcp28_55*qd(4));
    OPcp28_26 = ROcp28_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp28_15*S5-ROcp28_45*qd(4));
    OPcp28_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_29_0_7 = = 
 
% Sensor Kinematics 


    ROcp28_124 = ROcp28_16*C24+ROcp28_45*S24;
    ROcp28_224 = ROcp28_26*C24+ROcp28_55*S24;
    ROcp28_324 = ROcp28_36*C24+S24*S5;
    ROcp28_424 = -(ROcp28_16*S24-ROcp28_45*C24);
    ROcp28_524 = -(ROcp28_26*S24-ROcp28_55*C24);
    ROcp28_624 = -(ROcp28_36*S24-C24*S5);
    ROcp28_125 = ROcp28_124*C25-ROcp28_76*S25;
    ROcp28_225 = ROcp28_224*C25-ROcp28_86*S25;
    ROcp28_325 = ROcp28_324*C25-ROcp28_96*S25;
    ROcp28_725 = ROcp28_124*S25+ROcp28_76*C25;
    ROcp28_825 = ROcp28_224*S25+ROcp28_86*C25;
    ROcp28_925 = ROcp28_324*S25+ROcp28_96*C25;
    ROcp28_426 = ROcp28_424*C26+ROcp28_725*S26;
    ROcp28_526 = ROcp28_524*C26+ROcp28_825*S26;
    ROcp28_626 = ROcp28_624*C26+ROcp28_925*S26;
    ROcp28_726 = -(ROcp28_424*S26-ROcp28_725*C26);
    ROcp28_826 = -(ROcp28_524*S26-ROcp28_825*C26);
    ROcp28_926 = -(ROcp28_624*S26-ROcp28_925*C26);
    ROcp28_427 = ROcp28_426*C27+ROcp28_726*S27;
    ROcp28_527 = ROcp28_526*C27+ROcp28_826*S27;
    ROcp28_627 = ROcp28_626*C27+ROcp28_926*S27;
    ROcp28_727 = -(ROcp28_426*S27-ROcp28_726*C27);
    ROcp28_827 = -(ROcp28_526*S27-ROcp28_826*C27);
    ROcp28_927 = -(ROcp28_626*S27-ROcp28_926*C27);
    ROcp28_128 = ROcp28_125*C28-ROcp28_727*S28;
    ROcp28_228 = ROcp28_225*C28-ROcp28_827*S28;
    ROcp28_328 = ROcp28_325*C28-ROcp28_927*S28;
    ROcp28_728 = ROcp28_125*S28+ROcp28_727*C28;
    ROcp28_828 = ROcp28_225*S28+ROcp28_827*C28;
    ROcp28_928 = ROcp28_325*S28+ROcp28_927*C28;
    ROcp28_129 = ROcp28_128*C29+ROcp28_427*S29;
    ROcp28_229 = ROcp28_228*C29+ROcp28_527*S29;
    ROcp28_329 = ROcp28_328*C29+ROcp28_627*S29;
    ROcp28_429 = -(ROcp28_128*S29-ROcp28_427*C29);
    ROcp28_529 = -(ROcp28_228*S29-ROcp28_527*C29);
    ROcp28_629 = -(ROcp28_328*S29-ROcp28_627*C29);
    RLcp28_124 = ROcp28_16*s.dpt(1,6)+ROcp28_45*s.dpt(2,6)+ROcp28_76*s.dpt(3,6);
    RLcp28_224 = ROcp28_26*s.dpt(1,6)+ROcp28_55*s.dpt(2,6)+ROcp28_86*s.dpt(3,6);
    RLcp28_324 = ROcp28_36*s.dpt(1,6)+ROcp28_96*s.dpt(3,6)+s.dpt(2,6)*S5;
    OMcp28_124 = OMcp28_16+ROcp28_76*qd(24);
    OMcp28_224 = OMcp28_26+ROcp28_86*qd(24);
    OMcp28_324 = OMcp28_36+ROcp28_96*qd(24);
    ORcp28_124 = OMcp28_26*RLcp28_324-OMcp28_36*RLcp28_224;
    ORcp28_224 = -(OMcp28_16*RLcp28_324-OMcp28_36*RLcp28_124);
    ORcp28_324 = OMcp28_16*RLcp28_224-OMcp28_26*RLcp28_124;
    OMcp28_125 = OMcp28_124+ROcp28_424*qd(25);
    OMcp28_225 = OMcp28_224+ROcp28_524*qd(25);
    OMcp28_325 = OMcp28_324+ROcp28_624*qd(25);
    OMcp28_126 = OMcp28_125+ROcp28_125*qd(26);
    OMcp28_226 = OMcp28_225+ROcp28_225*qd(26);
    OMcp28_326 = OMcp28_325+ROcp28_325*qd(26);
    OPcp28_126 = OPcp28_16+ROcp28_125*qdd(26)+ROcp28_424*qdd(25)+ROcp28_76*qdd(24)+qd(24)*(OMcp28_26*ROcp28_96-OMcp28_36*ROcp28_86)+qd(25)*(...
 OMcp28_224*ROcp28_624-OMcp28_324*ROcp28_524)+qd(26)*(OMcp28_225*ROcp28_325-OMcp28_325*ROcp28_225);
    OPcp28_226 = OPcp28_26+ROcp28_225*qdd(26)+ROcp28_524*qdd(25)+ROcp28_86*qdd(24)-qd(24)*(OMcp28_16*ROcp28_96-OMcp28_36*ROcp28_76)-qd(25)*(...
 OMcp28_124*ROcp28_624-OMcp28_324*ROcp28_424)-qd(26)*(OMcp28_125*ROcp28_325-OMcp28_325*ROcp28_125);
    OPcp28_326 = OPcp28_36+ROcp28_325*qdd(26)+ROcp28_624*qdd(25)+ROcp28_96*qdd(24)+qd(24)*(OMcp28_16*ROcp28_86-OMcp28_26*ROcp28_76)+qd(25)*(...
 OMcp28_124*ROcp28_524-OMcp28_224*ROcp28_424)+qd(26)*(OMcp28_125*ROcp28_225-OMcp28_225*ROcp28_125);
    RLcp28_127 = ROcp28_426*s.dpt(2,37);
    RLcp28_227 = ROcp28_526*s.dpt(2,37);
    RLcp28_327 = ROcp28_626*s.dpt(2,37);
    POcp28_127 = RLcp28_124+RLcp28_127+q(1);
    POcp28_227 = RLcp28_224+RLcp28_227+q(2);
    POcp28_327 = RLcp28_324+RLcp28_327+q(3);
    OMcp28_127 = OMcp28_126+ROcp28_125*qd(27);
    OMcp28_227 = OMcp28_226+ROcp28_225*qd(27);
    OMcp28_327 = OMcp28_326+ROcp28_325*qd(27);
    ORcp28_127 = OMcp28_226*RLcp28_327-OMcp28_326*RLcp28_227;
    ORcp28_227 = -(OMcp28_126*RLcp28_327-OMcp28_326*RLcp28_127);
    ORcp28_327 = OMcp28_126*RLcp28_227-OMcp28_226*RLcp28_127;
    VIcp28_127 = ORcp28_124+ORcp28_127+qd(1);
    VIcp28_227 = ORcp28_224+ORcp28_227+qd(2);
    VIcp28_327 = ORcp28_324+ORcp28_327+qd(3);
    ACcp28_127 = qdd(1)+OMcp28_226*ORcp28_327+OMcp28_26*ORcp28_324-OMcp28_326*ORcp28_227-OMcp28_36*ORcp28_224+OPcp28_226*RLcp28_327+OPcp28_26*...
 RLcp28_324-OPcp28_326*RLcp28_227-OPcp28_36*RLcp28_224;
    ACcp28_227 = qdd(2)-OMcp28_126*ORcp28_327-OMcp28_16*ORcp28_324+OMcp28_326*ORcp28_127+OMcp28_36*ORcp28_124-OPcp28_126*RLcp28_327-OPcp28_16*...
 RLcp28_324+OPcp28_326*RLcp28_127+OPcp28_36*RLcp28_124;
    ACcp28_327 = qdd(3)+OMcp28_126*ORcp28_227+OMcp28_16*ORcp28_224-OMcp28_226*ORcp28_127-OMcp28_26*ORcp28_124+OPcp28_126*RLcp28_227+OPcp28_16*...
 RLcp28_224-OPcp28_226*RLcp28_127-OPcp28_26*RLcp28_124;
    OMcp28_128 = OMcp28_127+ROcp28_427*qd(28);
    OMcp28_228 = OMcp28_227+ROcp28_527*qd(28);
    OMcp28_328 = OMcp28_327+ROcp28_627*qd(28);
    OMcp28_129 = OMcp28_128+ROcp28_728*qd(29);
    OMcp28_229 = OMcp28_228+ROcp28_828*qd(29);
    OMcp28_329 = OMcp28_328+ROcp28_928*qd(29);
    OPcp28_129 = OPcp28_126+ROcp28_125*qdd(27)+ROcp28_427*qdd(28)+ROcp28_728*qdd(29)+qd(27)*(OMcp28_226*ROcp28_325-OMcp28_326*ROcp28_225)+qd(28)*(...
 OMcp28_227*ROcp28_627-OMcp28_327*ROcp28_527)+qd(29)*(OMcp28_228*ROcp28_928-OMcp28_328*ROcp28_828);
    OPcp28_229 = OPcp28_226+ROcp28_225*qdd(27)+ROcp28_527*qdd(28)+ROcp28_828*qdd(29)-qd(27)*(OMcp28_126*ROcp28_325-OMcp28_326*ROcp28_125)-qd(28)*(...
 OMcp28_127*ROcp28_627-OMcp28_327*ROcp28_427)-qd(29)*(OMcp28_128*ROcp28_928-OMcp28_328*ROcp28_728);
    OPcp28_329 = OPcp28_326+ROcp28_325*qdd(27)+ROcp28_627*qdd(28)+ROcp28_928*qdd(29)+qd(27)*(OMcp28_126*ROcp28_225-OMcp28_226*ROcp28_125)+qd(28)*(...
 OMcp28_127*ROcp28_527-OMcp28_227*ROcp28_427)+qd(29)*(OMcp28_128*ROcp28_828-OMcp28_228*ROcp28_728);

% = = Block_1_0_0_29_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp28_127;
    sens.P(2) = POcp28_227;
    sens.P(3) = POcp28_327;
    sens.R(1,1) = ROcp28_129;
    sens.R(1,2) = ROcp28_229;
    sens.R(1,3) = ROcp28_329;
    sens.R(2,1) = ROcp28_429;
    sens.R(2,2) = ROcp28_529;
    sens.R(2,3) = ROcp28_629;
    sens.R(3,1) = ROcp28_728;
    sens.R(3,2) = ROcp28_828;
    sens.R(3,3) = ROcp28_928;
    sens.V(1) = VIcp28_127;
    sens.V(2) = VIcp28_227;
    sens.V(3) = VIcp28_327;
    sens.OM(1) = OMcp28_129;
    sens.OM(2) = OMcp28_229;
    sens.OM(3) = OMcp28_329;
    sens.A(1) = ACcp28_127;
    sens.A(2) = ACcp28_227;
    sens.A(3) = ACcp28_327;
    sens.OMP(1) = OPcp28_129;
    sens.OMP(2) = OPcp28_229;
    sens.OMP(3) = OPcp28_329;
 
% 
case 30, 


% = = Block_1_0_0_30_0_1 = = 
 
% Sensor Kinematics 


    ROcp29_45 = -S4*C5;
    ROcp29_55 = C4*C5;
    ROcp29_75 = S4*S5;
    ROcp29_85 = -C4*S5;
    ROcp29_16 = -(ROcp29_75*S6-C4*C6);
    ROcp29_26 = -(ROcp29_85*S6-S4*C6);
    ROcp29_36 = -C5*S6;
    ROcp29_76 = ROcp29_75*C6+C4*S6;
    ROcp29_86 = ROcp29_85*C6+S4*S6;
    ROcp29_96 = C5*C6;
    OMcp29_15 = qd(5)*C4;
    OMcp29_25 = qd(5)*S4;
    OMcp29_16 = OMcp29_15+ROcp29_45*qd(6);
    OMcp29_26 = OMcp29_25+ROcp29_55*qd(6);
    OMcp29_36 = qd(4)+qd(6)*S5;
    OPcp29_16 = ROcp29_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp29_25*S5-ROcp29_55*qd(4));
    OPcp29_26 = ROcp29_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp29_15*S5-ROcp29_45*qd(4));
    OPcp29_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_30_0_7 = = 
 
% Sensor Kinematics 


    ROcp29_124 = ROcp29_16*C24+ROcp29_45*S24;
    ROcp29_224 = ROcp29_26*C24+ROcp29_55*S24;
    ROcp29_324 = ROcp29_36*C24+S24*S5;
    ROcp29_424 = -(ROcp29_16*S24-ROcp29_45*C24);
    ROcp29_524 = -(ROcp29_26*S24-ROcp29_55*C24);
    ROcp29_624 = -(ROcp29_36*S24-C24*S5);
    ROcp29_125 = ROcp29_124*C25-ROcp29_76*S25;
    ROcp29_225 = ROcp29_224*C25-ROcp29_86*S25;
    ROcp29_325 = ROcp29_324*C25-ROcp29_96*S25;
    ROcp29_725 = ROcp29_124*S25+ROcp29_76*C25;
    ROcp29_825 = ROcp29_224*S25+ROcp29_86*C25;
    ROcp29_925 = ROcp29_324*S25+ROcp29_96*C25;
    ROcp29_426 = ROcp29_424*C26+ROcp29_725*S26;
    ROcp29_526 = ROcp29_524*C26+ROcp29_825*S26;
    ROcp29_626 = ROcp29_624*C26+ROcp29_925*S26;
    ROcp29_726 = -(ROcp29_424*S26-ROcp29_725*C26);
    ROcp29_826 = -(ROcp29_524*S26-ROcp29_825*C26);
    ROcp29_926 = -(ROcp29_624*S26-ROcp29_925*C26);
    ROcp29_427 = ROcp29_426*C27+ROcp29_726*S27;
    ROcp29_527 = ROcp29_526*C27+ROcp29_826*S27;
    ROcp29_627 = ROcp29_626*C27+ROcp29_926*S27;
    ROcp29_727 = -(ROcp29_426*S27-ROcp29_726*C27);
    ROcp29_827 = -(ROcp29_526*S27-ROcp29_826*C27);
    ROcp29_927 = -(ROcp29_626*S27-ROcp29_926*C27);
    ROcp29_128 = ROcp29_125*C28-ROcp29_727*S28;
    ROcp29_228 = ROcp29_225*C28-ROcp29_827*S28;
    ROcp29_328 = ROcp29_325*C28-ROcp29_927*S28;
    ROcp29_728 = ROcp29_125*S28+ROcp29_727*C28;
    ROcp29_828 = ROcp29_225*S28+ROcp29_827*C28;
    ROcp29_928 = ROcp29_325*S28+ROcp29_927*C28;
    ROcp29_129 = ROcp29_128*C29+ROcp29_427*S29;
    ROcp29_229 = ROcp29_228*C29+ROcp29_527*S29;
    ROcp29_329 = ROcp29_328*C29+ROcp29_627*S29;
    ROcp29_429 = -(ROcp29_128*S29-ROcp29_427*C29);
    ROcp29_529 = -(ROcp29_228*S29-ROcp29_527*C29);
    ROcp29_629 = -(ROcp29_328*S29-ROcp29_627*C29);
    ROcp29_130 = ROcp29_129*C30+ROcp29_429*S30;
    ROcp29_230 = ROcp29_229*C30+ROcp29_529*S30;
    ROcp29_330 = ROcp29_329*C30+ROcp29_629*S30;
    ROcp29_430 = -(ROcp29_129*S30-ROcp29_429*C30);
    ROcp29_530 = -(ROcp29_229*S30-ROcp29_529*C30);
    ROcp29_630 = -(ROcp29_329*S30-ROcp29_629*C30);
    RLcp29_124 = ROcp29_16*s.dpt(1,6)+ROcp29_45*s.dpt(2,6)+ROcp29_76*s.dpt(3,6);
    RLcp29_224 = ROcp29_26*s.dpt(1,6)+ROcp29_55*s.dpt(2,6)+ROcp29_86*s.dpt(3,6);
    RLcp29_324 = ROcp29_36*s.dpt(1,6)+ROcp29_96*s.dpt(3,6)+s.dpt(2,6)*S5;
    OMcp29_124 = OMcp29_16+ROcp29_76*qd(24);
    OMcp29_224 = OMcp29_26+ROcp29_86*qd(24);
    OMcp29_324 = OMcp29_36+ROcp29_96*qd(24);
    ORcp29_124 = OMcp29_26*RLcp29_324-OMcp29_36*RLcp29_224;
    ORcp29_224 = -(OMcp29_16*RLcp29_324-OMcp29_36*RLcp29_124);
    ORcp29_324 = OMcp29_16*RLcp29_224-OMcp29_26*RLcp29_124;
    OMcp29_125 = OMcp29_124+ROcp29_424*qd(25);
    OMcp29_225 = OMcp29_224+ROcp29_524*qd(25);
    OMcp29_325 = OMcp29_324+ROcp29_624*qd(25);
    OMcp29_126 = OMcp29_125+ROcp29_125*qd(26);
    OMcp29_226 = OMcp29_225+ROcp29_225*qd(26);
    OMcp29_326 = OMcp29_325+ROcp29_325*qd(26);
    OPcp29_126 = OPcp29_16+ROcp29_125*qdd(26)+ROcp29_424*qdd(25)+ROcp29_76*qdd(24)+qd(24)*(OMcp29_26*ROcp29_96-OMcp29_36*ROcp29_86)+qd(25)*(...
 OMcp29_224*ROcp29_624-OMcp29_324*ROcp29_524)+qd(26)*(OMcp29_225*ROcp29_325-OMcp29_325*ROcp29_225);
    OPcp29_226 = OPcp29_26+ROcp29_225*qdd(26)+ROcp29_524*qdd(25)+ROcp29_86*qdd(24)-qd(24)*(OMcp29_16*ROcp29_96-OMcp29_36*ROcp29_76)-qd(25)*(...
 OMcp29_124*ROcp29_624-OMcp29_324*ROcp29_424)-qd(26)*(OMcp29_125*ROcp29_325-OMcp29_325*ROcp29_125);
    OPcp29_326 = OPcp29_36+ROcp29_325*qdd(26)+ROcp29_624*qdd(25)+ROcp29_96*qdd(24)+qd(24)*(OMcp29_16*ROcp29_86-OMcp29_26*ROcp29_76)+qd(25)*(...
 OMcp29_124*ROcp29_524-OMcp29_224*ROcp29_424)+qd(26)*(OMcp29_125*ROcp29_225-OMcp29_225*ROcp29_125);
    RLcp29_127 = ROcp29_426*s.dpt(2,37);
    RLcp29_227 = ROcp29_526*s.dpt(2,37);
    RLcp29_327 = ROcp29_626*s.dpt(2,37);
    OMcp29_127 = OMcp29_126+ROcp29_125*qd(27);
    OMcp29_227 = OMcp29_226+ROcp29_225*qd(27);
    OMcp29_327 = OMcp29_326+ROcp29_325*qd(27);
    ORcp29_127 = OMcp29_226*RLcp29_327-OMcp29_326*RLcp29_227;
    ORcp29_227 = -(OMcp29_126*RLcp29_327-OMcp29_326*RLcp29_127);
    ORcp29_327 = OMcp29_126*RLcp29_227-OMcp29_226*RLcp29_127;
    OMcp29_128 = OMcp29_127+ROcp29_427*qd(28);
    OMcp29_228 = OMcp29_227+ROcp29_527*qd(28);
    OMcp29_328 = OMcp29_327+ROcp29_627*qd(28);
    OMcp29_129 = OMcp29_128+ROcp29_728*qd(29);
    OMcp29_229 = OMcp29_228+ROcp29_828*qd(29);
    OMcp29_329 = OMcp29_328+ROcp29_928*qd(29);
    OPcp29_129 = OPcp29_126+ROcp29_125*qdd(27)+ROcp29_427*qdd(28)+ROcp29_728*qdd(29)+qd(27)*(OMcp29_226*ROcp29_325-OMcp29_326*ROcp29_225)+qd(28)*(...
 OMcp29_227*ROcp29_627-OMcp29_327*ROcp29_527)+qd(29)*(OMcp29_228*ROcp29_928-OMcp29_328*ROcp29_828);
    OPcp29_229 = OPcp29_226+ROcp29_225*qdd(27)+ROcp29_527*qdd(28)+ROcp29_828*qdd(29)-qd(27)*(OMcp29_126*ROcp29_325-OMcp29_326*ROcp29_125)-qd(28)*(...
 OMcp29_127*ROcp29_627-OMcp29_327*ROcp29_427)-qd(29)*(OMcp29_128*ROcp29_928-OMcp29_328*ROcp29_728);
    OPcp29_329 = OPcp29_326+ROcp29_325*qdd(27)+ROcp29_627*qdd(28)+ROcp29_928*qdd(29)+qd(27)*(OMcp29_126*ROcp29_225-OMcp29_226*ROcp29_125)+qd(28)*(...
 OMcp29_127*ROcp29_527-OMcp29_227*ROcp29_427)+qd(29)*(OMcp29_128*ROcp29_828-OMcp29_228*ROcp29_728);
    RLcp29_130 = ROcp29_129*s.dpt(1,40)+ROcp29_429*s.dpt(2,40)+ROcp29_728*s.dpt(3,40);
    RLcp29_230 = ROcp29_229*s.dpt(1,40)+ROcp29_529*s.dpt(2,40)+ROcp29_828*s.dpt(3,40);
    RLcp29_330 = ROcp29_329*s.dpt(1,40)+ROcp29_629*s.dpt(2,40)+ROcp29_928*s.dpt(3,40);
    POcp29_130 = RLcp29_124+RLcp29_127+RLcp29_130+q(1);
    POcp29_230 = RLcp29_224+RLcp29_227+RLcp29_230+q(2);
    POcp29_330 = RLcp29_324+RLcp29_327+RLcp29_330+q(3);
    OMcp29_130 = OMcp29_129+ROcp29_728*qd(30);
    OMcp29_230 = OMcp29_229+ROcp29_828*qd(30);
    OMcp29_330 = OMcp29_329+ROcp29_928*qd(30);
    ORcp29_130 = OMcp29_229*RLcp29_330-OMcp29_329*RLcp29_230;
    ORcp29_230 = -(OMcp29_129*RLcp29_330-OMcp29_329*RLcp29_130);
    ORcp29_330 = OMcp29_129*RLcp29_230-OMcp29_229*RLcp29_130;
    VIcp29_130 = ORcp29_124+ORcp29_127+ORcp29_130+qd(1);
    VIcp29_230 = ORcp29_224+ORcp29_227+ORcp29_230+qd(2);
    VIcp29_330 = ORcp29_324+ORcp29_327+ORcp29_330+qd(3);
    OPcp29_130 = OPcp29_129+ROcp29_728*qdd(30)+qd(30)*(OMcp29_229*ROcp29_928-OMcp29_329*ROcp29_828);
    OPcp29_230 = OPcp29_229+ROcp29_828*qdd(30)-qd(30)*(OMcp29_129*ROcp29_928-OMcp29_329*ROcp29_728);
    OPcp29_330 = OPcp29_329+ROcp29_928*qdd(30)+qd(30)*(OMcp29_129*ROcp29_828-OMcp29_229*ROcp29_728);
    ACcp29_130 = qdd(1)+OMcp29_226*ORcp29_327+OMcp29_229*ORcp29_330+OMcp29_26*ORcp29_324-OMcp29_326*ORcp29_227-OMcp29_329*ORcp29_230-OMcp29_36*...
 ORcp29_224+OPcp29_226*RLcp29_327+OPcp29_229*RLcp29_330+OPcp29_26*RLcp29_324-OPcp29_326*RLcp29_227-OPcp29_329*RLcp29_230-OPcp29_36*RLcp29_224;
    ACcp29_230 = qdd(2)-OMcp29_126*ORcp29_327-OMcp29_129*ORcp29_330-OMcp29_16*ORcp29_324+OMcp29_326*ORcp29_127+OMcp29_329*ORcp29_130+OMcp29_36*...
 ORcp29_124-OPcp29_126*RLcp29_327-OPcp29_129*RLcp29_330-OPcp29_16*RLcp29_324+OPcp29_326*RLcp29_127+OPcp29_329*RLcp29_130+OPcp29_36*RLcp29_124;
    ACcp29_330 = qdd(3)+OMcp29_126*ORcp29_227+OMcp29_129*ORcp29_230+OMcp29_16*ORcp29_224-OMcp29_226*ORcp29_127-OMcp29_229*ORcp29_130-OMcp29_26*...
 ORcp29_124+OPcp29_126*RLcp29_227+OPcp29_129*RLcp29_230+OPcp29_16*RLcp29_224-OPcp29_226*RLcp29_127-OPcp29_229*RLcp29_130-OPcp29_26*RLcp29_124;

% = = Block_1_0_0_30_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp29_130;
    sens.P(2) = POcp29_230;
    sens.P(3) = POcp29_330;
    sens.R(1,1) = ROcp29_130;
    sens.R(1,2) = ROcp29_230;
    sens.R(1,3) = ROcp29_330;
    sens.R(2,1) = ROcp29_430;
    sens.R(2,2) = ROcp29_530;
    sens.R(2,3) = ROcp29_630;
    sens.R(3,1) = ROcp29_728;
    sens.R(3,2) = ROcp29_828;
    sens.R(3,3) = ROcp29_928;
    sens.V(1) = VIcp29_130;
    sens.V(2) = VIcp29_230;
    sens.V(3) = VIcp29_330;
    sens.OM(1) = OMcp29_130;
    sens.OM(2) = OMcp29_230;
    sens.OM(3) = OMcp29_330;
    sens.A(1) = ACcp29_130;
    sens.A(2) = ACcp29_230;
    sens.A(3) = ACcp29_330;
    sens.OMP(1) = OPcp29_130;
    sens.OMP(2) = OPcp29_230;
    sens.OMP(3) = OPcp29_330;
 
% 
case 31, 


% = = Block_1_0_0_31_0_1 = = 
 
% Sensor Kinematics 


    ROcp30_45 = -S4*C5;
    ROcp30_55 = C4*C5;
    ROcp30_75 = S4*S5;
    ROcp30_85 = -C4*S5;
    ROcp30_16 = -(ROcp30_75*S6-C4*C6);
    ROcp30_26 = -(ROcp30_85*S6-S4*C6);
    ROcp30_36 = -C5*S6;
    ROcp30_76 = ROcp30_75*C6+C4*S6;
    ROcp30_86 = ROcp30_85*C6+S4*S6;
    ROcp30_96 = C5*C6;
    OMcp30_15 = qd(5)*C4;
    OMcp30_25 = qd(5)*S4;
    OMcp30_16 = OMcp30_15+ROcp30_45*qd(6);
    OMcp30_26 = OMcp30_25+ROcp30_55*qd(6);
    OMcp30_36 = qd(4)+qd(6)*S5;
    OPcp30_16 = ROcp30_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp30_25*S5-ROcp30_55*qd(4));
    OPcp30_26 = ROcp30_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp30_15*S5-ROcp30_45*qd(4));
    OPcp30_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_31_0_7 = = 
 
% Sensor Kinematics 


    ROcp30_124 = ROcp30_16*C24+ROcp30_45*S24;
    ROcp30_224 = ROcp30_26*C24+ROcp30_55*S24;
    ROcp30_324 = ROcp30_36*C24+S24*S5;
    ROcp30_424 = -(ROcp30_16*S24-ROcp30_45*C24);
    ROcp30_524 = -(ROcp30_26*S24-ROcp30_55*C24);
    ROcp30_624 = -(ROcp30_36*S24-C24*S5);
    ROcp30_125 = ROcp30_124*C25-ROcp30_76*S25;
    ROcp30_225 = ROcp30_224*C25-ROcp30_86*S25;
    ROcp30_325 = ROcp30_324*C25-ROcp30_96*S25;
    ROcp30_725 = ROcp30_124*S25+ROcp30_76*C25;
    ROcp30_825 = ROcp30_224*S25+ROcp30_86*C25;
    ROcp30_925 = ROcp30_324*S25+ROcp30_96*C25;
    ROcp30_426 = ROcp30_424*C26+ROcp30_725*S26;
    ROcp30_526 = ROcp30_524*C26+ROcp30_825*S26;
    ROcp30_626 = ROcp30_624*C26+ROcp30_925*S26;
    ROcp30_726 = -(ROcp30_424*S26-ROcp30_725*C26);
    ROcp30_826 = -(ROcp30_524*S26-ROcp30_825*C26);
    ROcp30_926 = -(ROcp30_624*S26-ROcp30_925*C26);
    ROcp30_427 = ROcp30_426*C27+ROcp30_726*S27;
    ROcp30_527 = ROcp30_526*C27+ROcp30_826*S27;
    ROcp30_627 = ROcp30_626*C27+ROcp30_926*S27;
    ROcp30_727 = -(ROcp30_426*S27-ROcp30_726*C27);
    ROcp30_827 = -(ROcp30_526*S27-ROcp30_826*C27);
    ROcp30_927 = -(ROcp30_626*S27-ROcp30_926*C27);
    ROcp30_128 = ROcp30_125*C28-ROcp30_727*S28;
    ROcp30_228 = ROcp30_225*C28-ROcp30_827*S28;
    ROcp30_328 = ROcp30_325*C28-ROcp30_927*S28;
    ROcp30_728 = ROcp30_125*S28+ROcp30_727*C28;
    ROcp30_828 = ROcp30_225*S28+ROcp30_827*C28;
    ROcp30_928 = ROcp30_325*S28+ROcp30_927*C28;
    ROcp30_129 = ROcp30_128*C29+ROcp30_427*S29;
    ROcp30_229 = ROcp30_228*C29+ROcp30_527*S29;
    ROcp30_329 = ROcp30_328*C29+ROcp30_627*S29;
    ROcp30_429 = -(ROcp30_128*S29-ROcp30_427*C29);
    ROcp30_529 = -(ROcp30_228*S29-ROcp30_527*C29);
    ROcp30_629 = -(ROcp30_328*S29-ROcp30_627*C29);
    ROcp30_130 = ROcp30_129*C30+ROcp30_429*S30;
    ROcp30_230 = ROcp30_229*C30+ROcp30_529*S30;
    ROcp30_330 = ROcp30_329*C30+ROcp30_629*S30;
    ROcp30_430 = -(ROcp30_129*S30-ROcp30_429*C30);
    ROcp30_530 = -(ROcp30_229*S30-ROcp30_529*C30);
    ROcp30_630 = -(ROcp30_329*S30-ROcp30_629*C30);
    ROcp30_431 = ROcp30_430*C31+ROcp30_728*S31;
    ROcp30_531 = ROcp30_530*C31+ROcp30_828*S31;
    ROcp30_631 = ROcp30_630*C31+ROcp30_928*S31;
    ROcp30_731 = -(ROcp30_430*S31-ROcp30_728*C31);
    ROcp30_831 = -(ROcp30_530*S31-ROcp30_828*C31);
    ROcp30_931 = -(ROcp30_630*S31-ROcp30_928*C31);
    RLcp30_124 = ROcp30_16*s.dpt(1,6)+ROcp30_45*s.dpt(2,6)+ROcp30_76*s.dpt(3,6);
    RLcp30_224 = ROcp30_26*s.dpt(1,6)+ROcp30_55*s.dpt(2,6)+ROcp30_86*s.dpt(3,6);
    RLcp30_324 = ROcp30_36*s.dpt(1,6)+ROcp30_96*s.dpt(3,6)+s.dpt(2,6)*S5;
    OMcp30_124 = OMcp30_16+ROcp30_76*qd(24);
    OMcp30_224 = OMcp30_26+ROcp30_86*qd(24);
    OMcp30_324 = OMcp30_36+ROcp30_96*qd(24);
    ORcp30_124 = OMcp30_26*RLcp30_324-OMcp30_36*RLcp30_224;
    ORcp30_224 = -(OMcp30_16*RLcp30_324-OMcp30_36*RLcp30_124);
    ORcp30_324 = OMcp30_16*RLcp30_224-OMcp30_26*RLcp30_124;
    OMcp30_125 = OMcp30_124+ROcp30_424*qd(25);
    OMcp30_225 = OMcp30_224+ROcp30_524*qd(25);
    OMcp30_325 = OMcp30_324+ROcp30_624*qd(25);
    OMcp30_126 = OMcp30_125+ROcp30_125*qd(26);
    OMcp30_226 = OMcp30_225+ROcp30_225*qd(26);
    OMcp30_326 = OMcp30_325+ROcp30_325*qd(26);
    OPcp30_126 = OPcp30_16+ROcp30_125*qdd(26)+ROcp30_424*qdd(25)+ROcp30_76*qdd(24)+qd(24)*(OMcp30_26*ROcp30_96-OMcp30_36*ROcp30_86)+qd(25)*(...
 OMcp30_224*ROcp30_624-OMcp30_324*ROcp30_524)+qd(26)*(OMcp30_225*ROcp30_325-OMcp30_325*ROcp30_225);
    OPcp30_226 = OPcp30_26+ROcp30_225*qdd(26)+ROcp30_524*qdd(25)+ROcp30_86*qdd(24)-qd(24)*(OMcp30_16*ROcp30_96-OMcp30_36*ROcp30_76)-qd(25)*(...
 OMcp30_124*ROcp30_624-OMcp30_324*ROcp30_424)-qd(26)*(OMcp30_125*ROcp30_325-OMcp30_325*ROcp30_125);
    OPcp30_326 = OPcp30_36+ROcp30_325*qdd(26)+ROcp30_624*qdd(25)+ROcp30_96*qdd(24)+qd(24)*(OMcp30_16*ROcp30_86-OMcp30_26*ROcp30_76)+qd(25)*(...
 OMcp30_124*ROcp30_524-OMcp30_224*ROcp30_424)+qd(26)*(OMcp30_125*ROcp30_225-OMcp30_225*ROcp30_125);
    RLcp30_127 = ROcp30_426*s.dpt(2,37);
    RLcp30_227 = ROcp30_526*s.dpt(2,37);
    RLcp30_327 = ROcp30_626*s.dpt(2,37);
    OMcp30_127 = OMcp30_126+ROcp30_125*qd(27);
    OMcp30_227 = OMcp30_226+ROcp30_225*qd(27);
    OMcp30_327 = OMcp30_326+ROcp30_325*qd(27);
    ORcp30_127 = OMcp30_226*RLcp30_327-OMcp30_326*RLcp30_227;
    ORcp30_227 = -(OMcp30_126*RLcp30_327-OMcp30_326*RLcp30_127);
    ORcp30_327 = OMcp30_126*RLcp30_227-OMcp30_226*RLcp30_127;
    OMcp30_128 = OMcp30_127+ROcp30_427*qd(28);
    OMcp30_228 = OMcp30_227+ROcp30_527*qd(28);
    OMcp30_328 = OMcp30_327+ROcp30_627*qd(28);
    OMcp30_129 = OMcp30_128+ROcp30_728*qd(29);
    OMcp30_229 = OMcp30_228+ROcp30_828*qd(29);
    OMcp30_329 = OMcp30_328+ROcp30_928*qd(29);
    OPcp30_129 = OPcp30_126+ROcp30_125*qdd(27)+ROcp30_427*qdd(28)+ROcp30_728*qdd(29)+qd(27)*(OMcp30_226*ROcp30_325-OMcp30_326*ROcp30_225)+qd(28)*(...
 OMcp30_227*ROcp30_627-OMcp30_327*ROcp30_527)+qd(29)*(OMcp30_228*ROcp30_928-OMcp30_328*ROcp30_828);
    OPcp30_229 = OPcp30_226+ROcp30_225*qdd(27)+ROcp30_527*qdd(28)+ROcp30_828*qdd(29)-qd(27)*(OMcp30_126*ROcp30_325-OMcp30_326*ROcp30_125)-qd(28)*(...
 OMcp30_127*ROcp30_627-OMcp30_327*ROcp30_427)-qd(29)*(OMcp30_128*ROcp30_928-OMcp30_328*ROcp30_728);
    OPcp30_329 = OPcp30_326+ROcp30_325*qdd(27)+ROcp30_627*qdd(28)+ROcp30_928*qdd(29)+qd(27)*(OMcp30_126*ROcp30_225-OMcp30_226*ROcp30_125)+qd(28)*(...
 OMcp30_127*ROcp30_527-OMcp30_227*ROcp30_427)+qd(29)*(OMcp30_128*ROcp30_828-OMcp30_228*ROcp30_728);
    RLcp30_130 = ROcp30_129*s.dpt(1,40)+ROcp30_429*s.dpt(2,40)+ROcp30_728*s.dpt(3,40);
    RLcp30_230 = ROcp30_229*s.dpt(1,40)+ROcp30_529*s.dpt(2,40)+ROcp30_828*s.dpt(3,40);
    RLcp30_330 = ROcp30_329*s.dpt(1,40)+ROcp30_629*s.dpt(2,40)+ROcp30_928*s.dpt(3,40);
    POcp30_130 = RLcp30_124+RLcp30_127+RLcp30_130+q(1);
    POcp30_230 = RLcp30_224+RLcp30_227+RLcp30_230+q(2);
    POcp30_330 = RLcp30_324+RLcp30_327+RLcp30_330+q(3);
    OMcp30_130 = OMcp30_129+ROcp30_728*qd(30);
    OMcp30_230 = OMcp30_229+ROcp30_828*qd(30);
    OMcp30_330 = OMcp30_329+ROcp30_928*qd(30);
    ORcp30_130 = OMcp30_229*RLcp30_330-OMcp30_329*RLcp30_230;
    ORcp30_230 = -(OMcp30_129*RLcp30_330-OMcp30_329*RLcp30_130);
    ORcp30_330 = OMcp30_129*RLcp30_230-OMcp30_229*RLcp30_130;
    VIcp30_130 = ORcp30_124+ORcp30_127+ORcp30_130+qd(1);
    VIcp30_230 = ORcp30_224+ORcp30_227+ORcp30_230+qd(2);
    VIcp30_330 = ORcp30_324+ORcp30_327+ORcp30_330+qd(3);
    ACcp30_130 = qdd(1)+OMcp30_226*ORcp30_327+OMcp30_229*ORcp30_330+OMcp30_26*ORcp30_324-OMcp30_326*ORcp30_227-OMcp30_329*ORcp30_230-OMcp30_36*...
 ORcp30_224+OPcp30_226*RLcp30_327+OPcp30_229*RLcp30_330+OPcp30_26*RLcp30_324-OPcp30_326*RLcp30_227-OPcp30_329*RLcp30_230-OPcp30_36*RLcp30_224;
    ACcp30_230 = qdd(2)-OMcp30_126*ORcp30_327-OMcp30_129*ORcp30_330-OMcp30_16*ORcp30_324+OMcp30_326*ORcp30_127+OMcp30_329*ORcp30_130+OMcp30_36*...
 ORcp30_124-OPcp30_126*RLcp30_327-OPcp30_129*RLcp30_330-OPcp30_16*RLcp30_324+OPcp30_326*RLcp30_127+OPcp30_329*RLcp30_130+OPcp30_36*RLcp30_124;
    ACcp30_330 = qdd(3)+OMcp30_126*ORcp30_227+OMcp30_129*ORcp30_230+OMcp30_16*ORcp30_224-OMcp30_226*ORcp30_127-OMcp30_229*ORcp30_130-OMcp30_26*...
 ORcp30_124+OPcp30_126*RLcp30_227+OPcp30_129*RLcp30_230+OPcp30_16*RLcp30_224-OPcp30_226*RLcp30_127-OPcp30_229*RLcp30_130-OPcp30_26*RLcp30_124;
    OMcp30_131 = OMcp30_130+ROcp30_130*qd(31);
    OMcp30_231 = OMcp30_230+ROcp30_230*qd(31);
    OMcp30_331 = OMcp30_330+ROcp30_330*qd(31);
    OPcp30_131 = OPcp30_129+ROcp30_130*qdd(31)+ROcp30_728*qdd(30)+qd(30)*(OMcp30_229*ROcp30_928-OMcp30_329*ROcp30_828)+qd(31)*(OMcp30_230*...
 ROcp30_330-OMcp30_330*ROcp30_230);
    OPcp30_231 = OPcp30_229+ROcp30_230*qdd(31)+ROcp30_828*qdd(30)-qd(30)*(OMcp30_129*ROcp30_928-OMcp30_329*ROcp30_728)-qd(31)*(OMcp30_130*...
 ROcp30_330-OMcp30_330*ROcp30_130);
    OPcp30_331 = OPcp30_329+ROcp30_330*qdd(31)+ROcp30_928*qdd(30)+qd(30)*(OMcp30_129*ROcp30_828-OMcp30_229*ROcp30_728)+qd(31)*(OMcp30_130*...
 ROcp30_230-OMcp30_230*ROcp30_130);

% = = Block_1_0_0_31_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp30_130;
    sens.P(2) = POcp30_230;
    sens.P(3) = POcp30_330;
    sens.R(1,1) = ROcp30_130;
    sens.R(1,2) = ROcp30_230;
    sens.R(1,3) = ROcp30_330;
    sens.R(2,1) = ROcp30_431;
    sens.R(2,2) = ROcp30_531;
    sens.R(2,3) = ROcp30_631;
    sens.R(3,1) = ROcp30_731;
    sens.R(3,2) = ROcp30_831;
    sens.R(3,3) = ROcp30_931;
    sens.V(1) = VIcp30_130;
    sens.V(2) = VIcp30_230;
    sens.V(3) = VIcp30_330;
    sens.OM(1) = OMcp30_131;
    sens.OM(2) = OMcp30_231;
    sens.OM(3) = OMcp30_331;
    sens.A(1) = ACcp30_130;
    sens.A(2) = ACcp30_230;
    sens.A(3) = ACcp30_330;
    sens.OMP(1) = OPcp30_131;
    sens.OMP(2) = OPcp30_231;
    sens.OMP(3) = OPcp30_331;
 
% 
case 32, 


% = = Block_1_0_0_32_0_1 = = 
 
% Sensor Kinematics 


    ROcp31_45 = -S4*C5;
    ROcp31_55 = C4*C5;
    ROcp31_75 = S4*S5;
    ROcp31_85 = -C4*S5;
    ROcp31_16 = -(ROcp31_75*S6-C4*C6);
    ROcp31_26 = -(ROcp31_85*S6-S4*C6);
    ROcp31_36 = -C5*S6;
    ROcp31_76 = ROcp31_75*C6+C4*S6;
    ROcp31_86 = ROcp31_85*C6+S4*S6;
    ROcp31_96 = C5*C6;
    OMcp31_15 = qd(5)*C4;
    OMcp31_25 = qd(5)*S4;
    OMcp31_16 = OMcp31_15+ROcp31_45*qd(6);
    OMcp31_26 = OMcp31_25+ROcp31_55*qd(6);
    OMcp31_36 = qd(4)+qd(6)*S5;
    OPcp31_16 = ROcp31_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp31_25*S5-ROcp31_55*qd(4));
    OPcp31_26 = ROcp31_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp31_15*S5-ROcp31_45*qd(4));
    OPcp31_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_32_0_7 = = 
 
% Sensor Kinematics 


    ROcp31_124 = ROcp31_16*C24+ROcp31_45*S24;
    ROcp31_224 = ROcp31_26*C24+ROcp31_55*S24;
    ROcp31_324 = ROcp31_36*C24+S24*S5;
    ROcp31_424 = -(ROcp31_16*S24-ROcp31_45*C24);
    ROcp31_524 = -(ROcp31_26*S24-ROcp31_55*C24);
    ROcp31_624 = -(ROcp31_36*S24-C24*S5);
    ROcp31_125 = ROcp31_124*C25-ROcp31_76*S25;
    ROcp31_225 = ROcp31_224*C25-ROcp31_86*S25;
    ROcp31_325 = ROcp31_324*C25-ROcp31_96*S25;
    ROcp31_725 = ROcp31_124*S25+ROcp31_76*C25;
    ROcp31_825 = ROcp31_224*S25+ROcp31_86*C25;
    ROcp31_925 = ROcp31_324*S25+ROcp31_96*C25;
    ROcp31_426 = ROcp31_424*C26+ROcp31_725*S26;
    ROcp31_526 = ROcp31_524*C26+ROcp31_825*S26;
    ROcp31_626 = ROcp31_624*C26+ROcp31_925*S26;
    ROcp31_726 = -(ROcp31_424*S26-ROcp31_725*C26);
    ROcp31_826 = -(ROcp31_524*S26-ROcp31_825*C26);
    ROcp31_926 = -(ROcp31_624*S26-ROcp31_925*C26);
    ROcp31_427 = ROcp31_426*C27+ROcp31_726*S27;
    ROcp31_527 = ROcp31_526*C27+ROcp31_826*S27;
    ROcp31_627 = ROcp31_626*C27+ROcp31_926*S27;
    ROcp31_727 = -(ROcp31_426*S27-ROcp31_726*C27);
    ROcp31_827 = -(ROcp31_526*S27-ROcp31_826*C27);
    ROcp31_927 = -(ROcp31_626*S27-ROcp31_926*C27);
    ROcp31_128 = ROcp31_125*C28-ROcp31_727*S28;
    ROcp31_228 = ROcp31_225*C28-ROcp31_827*S28;
    ROcp31_328 = ROcp31_325*C28-ROcp31_927*S28;
    ROcp31_728 = ROcp31_125*S28+ROcp31_727*C28;
    ROcp31_828 = ROcp31_225*S28+ROcp31_827*C28;
    ROcp31_928 = ROcp31_325*S28+ROcp31_927*C28;
    ROcp31_129 = ROcp31_128*C29+ROcp31_427*S29;
    ROcp31_229 = ROcp31_228*C29+ROcp31_527*S29;
    ROcp31_329 = ROcp31_328*C29+ROcp31_627*S29;
    ROcp31_429 = -(ROcp31_128*S29-ROcp31_427*C29);
    ROcp31_529 = -(ROcp31_228*S29-ROcp31_527*C29);
    ROcp31_629 = -(ROcp31_328*S29-ROcp31_627*C29);
    ROcp31_130 = ROcp31_129*C30+ROcp31_429*S30;
    ROcp31_230 = ROcp31_229*C30+ROcp31_529*S30;
    ROcp31_330 = ROcp31_329*C30+ROcp31_629*S30;
    ROcp31_430 = -(ROcp31_129*S30-ROcp31_429*C30);
    ROcp31_530 = -(ROcp31_229*S30-ROcp31_529*C30);
    ROcp31_630 = -(ROcp31_329*S30-ROcp31_629*C30);
    ROcp31_431 = ROcp31_430*C31+ROcp31_728*S31;
    ROcp31_531 = ROcp31_530*C31+ROcp31_828*S31;
    ROcp31_631 = ROcp31_630*C31+ROcp31_928*S31;
    ROcp31_731 = -(ROcp31_430*S31-ROcp31_728*C31);
    ROcp31_831 = -(ROcp31_530*S31-ROcp31_828*C31);
    ROcp31_931 = -(ROcp31_630*S31-ROcp31_928*C31);
    ROcp31_132 = ROcp31_130*C32-ROcp31_731*S32;
    ROcp31_232 = ROcp31_230*C32-ROcp31_831*S32;
    ROcp31_332 = ROcp31_330*C32-ROcp31_931*S32;
    ROcp31_732 = ROcp31_130*S32+ROcp31_731*C32;
    ROcp31_832 = ROcp31_230*S32+ROcp31_831*C32;
    ROcp31_932 = ROcp31_330*S32+ROcp31_931*C32;
    RLcp31_124 = ROcp31_16*s.dpt(1,6)+ROcp31_45*s.dpt(2,6)+ROcp31_76*s.dpt(3,6);
    RLcp31_224 = ROcp31_26*s.dpt(1,6)+ROcp31_55*s.dpt(2,6)+ROcp31_86*s.dpt(3,6);
    RLcp31_324 = ROcp31_36*s.dpt(1,6)+ROcp31_96*s.dpt(3,6)+s.dpt(2,6)*S5;
    OMcp31_124 = OMcp31_16+ROcp31_76*qd(24);
    OMcp31_224 = OMcp31_26+ROcp31_86*qd(24);
    OMcp31_324 = OMcp31_36+ROcp31_96*qd(24);
    ORcp31_124 = OMcp31_26*RLcp31_324-OMcp31_36*RLcp31_224;
    ORcp31_224 = -(OMcp31_16*RLcp31_324-OMcp31_36*RLcp31_124);
    ORcp31_324 = OMcp31_16*RLcp31_224-OMcp31_26*RLcp31_124;
    OMcp31_125 = OMcp31_124+ROcp31_424*qd(25);
    OMcp31_225 = OMcp31_224+ROcp31_524*qd(25);
    OMcp31_325 = OMcp31_324+ROcp31_624*qd(25);
    OMcp31_126 = OMcp31_125+ROcp31_125*qd(26);
    OMcp31_226 = OMcp31_225+ROcp31_225*qd(26);
    OMcp31_326 = OMcp31_325+ROcp31_325*qd(26);
    OPcp31_126 = OPcp31_16+ROcp31_125*qdd(26)+ROcp31_424*qdd(25)+ROcp31_76*qdd(24)+qd(24)*(OMcp31_26*ROcp31_96-OMcp31_36*ROcp31_86)+qd(25)*(...
 OMcp31_224*ROcp31_624-OMcp31_324*ROcp31_524)+qd(26)*(OMcp31_225*ROcp31_325-OMcp31_325*ROcp31_225);
    OPcp31_226 = OPcp31_26+ROcp31_225*qdd(26)+ROcp31_524*qdd(25)+ROcp31_86*qdd(24)-qd(24)*(OMcp31_16*ROcp31_96-OMcp31_36*ROcp31_76)-qd(25)*(...
 OMcp31_124*ROcp31_624-OMcp31_324*ROcp31_424)-qd(26)*(OMcp31_125*ROcp31_325-OMcp31_325*ROcp31_125);
    OPcp31_326 = OPcp31_36+ROcp31_325*qdd(26)+ROcp31_624*qdd(25)+ROcp31_96*qdd(24)+qd(24)*(OMcp31_16*ROcp31_86-OMcp31_26*ROcp31_76)+qd(25)*(...
 OMcp31_124*ROcp31_524-OMcp31_224*ROcp31_424)+qd(26)*(OMcp31_125*ROcp31_225-OMcp31_225*ROcp31_125);
    RLcp31_127 = ROcp31_426*s.dpt(2,37);
    RLcp31_227 = ROcp31_526*s.dpt(2,37);
    RLcp31_327 = ROcp31_626*s.dpt(2,37);
    OMcp31_127 = OMcp31_126+ROcp31_125*qd(27);
    OMcp31_227 = OMcp31_226+ROcp31_225*qd(27);
    OMcp31_327 = OMcp31_326+ROcp31_325*qd(27);
    ORcp31_127 = OMcp31_226*RLcp31_327-OMcp31_326*RLcp31_227;
    ORcp31_227 = -(OMcp31_126*RLcp31_327-OMcp31_326*RLcp31_127);
    ORcp31_327 = OMcp31_126*RLcp31_227-OMcp31_226*RLcp31_127;
    OMcp31_128 = OMcp31_127+ROcp31_427*qd(28);
    OMcp31_228 = OMcp31_227+ROcp31_527*qd(28);
    OMcp31_328 = OMcp31_327+ROcp31_627*qd(28);
    OMcp31_129 = OMcp31_128+ROcp31_728*qd(29);
    OMcp31_229 = OMcp31_228+ROcp31_828*qd(29);
    OMcp31_329 = OMcp31_328+ROcp31_928*qd(29);
    OPcp31_129 = OPcp31_126+ROcp31_125*qdd(27)+ROcp31_427*qdd(28)+ROcp31_728*qdd(29)+qd(27)*(OMcp31_226*ROcp31_325-OMcp31_326*ROcp31_225)+qd(28)*(...
 OMcp31_227*ROcp31_627-OMcp31_327*ROcp31_527)+qd(29)*(OMcp31_228*ROcp31_928-OMcp31_328*ROcp31_828);
    OPcp31_229 = OPcp31_226+ROcp31_225*qdd(27)+ROcp31_527*qdd(28)+ROcp31_828*qdd(29)-qd(27)*(OMcp31_126*ROcp31_325-OMcp31_326*ROcp31_125)-qd(28)*(...
 OMcp31_127*ROcp31_627-OMcp31_327*ROcp31_427)-qd(29)*(OMcp31_128*ROcp31_928-OMcp31_328*ROcp31_728);
    OPcp31_329 = OPcp31_326+ROcp31_325*qdd(27)+ROcp31_627*qdd(28)+ROcp31_928*qdd(29)+qd(27)*(OMcp31_126*ROcp31_225-OMcp31_226*ROcp31_125)+qd(28)*(...
 OMcp31_127*ROcp31_527-OMcp31_227*ROcp31_427)+qd(29)*(OMcp31_128*ROcp31_828-OMcp31_228*ROcp31_728);
    RLcp31_130 = ROcp31_129*s.dpt(1,40)+ROcp31_429*s.dpt(2,40)+ROcp31_728*s.dpt(3,40);
    RLcp31_230 = ROcp31_229*s.dpt(1,40)+ROcp31_529*s.dpt(2,40)+ROcp31_828*s.dpt(3,40);
    RLcp31_330 = ROcp31_329*s.dpt(1,40)+ROcp31_629*s.dpt(2,40)+ROcp31_928*s.dpt(3,40);
    POcp31_130 = RLcp31_124+RLcp31_127+RLcp31_130+q(1);
    POcp31_230 = RLcp31_224+RLcp31_227+RLcp31_230+q(2);
    POcp31_330 = RLcp31_324+RLcp31_327+RLcp31_330+q(3);
    OMcp31_130 = OMcp31_129+ROcp31_728*qd(30);
    OMcp31_230 = OMcp31_229+ROcp31_828*qd(30);
    OMcp31_330 = OMcp31_329+ROcp31_928*qd(30);
    ORcp31_130 = OMcp31_229*RLcp31_330-OMcp31_329*RLcp31_230;
    ORcp31_230 = -(OMcp31_129*RLcp31_330-OMcp31_329*RLcp31_130);
    ORcp31_330 = OMcp31_129*RLcp31_230-OMcp31_229*RLcp31_130;
    VIcp31_130 = ORcp31_124+ORcp31_127+ORcp31_130+qd(1);
    VIcp31_230 = ORcp31_224+ORcp31_227+ORcp31_230+qd(2);
    VIcp31_330 = ORcp31_324+ORcp31_327+ORcp31_330+qd(3);
    ACcp31_130 = qdd(1)+OMcp31_226*ORcp31_327+OMcp31_229*ORcp31_330+OMcp31_26*ORcp31_324-OMcp31_326*ORcp31_227-OMcp31_329*ORcp31_230-OMcp31_36*...
 ORcp31_224+OPcp31_226*RLcp31_327+OPcp31_229*RLcp31_330+OPcp31_26*RLcp31_324-OPcp31_326*RLcp31_227-OPcp31_329*RLcp31_230-OPcp31_36*RLcp31_224;
    ACcp31_230 = qdd(2)-OMcp31_126*ORcp31_327-OMcp31_129*ORcp31_330-OMcp31_16*ORcp31_324+OMcp31_326*ORcp31_127+OMcp31_329*ORcp31_130+OMcp31_36*...
 ORcp31_124-OPcp31_126*RLcp31_327-OPcp31_129*RLcp31_330-OPcp31_16*RLcp31_324+OPcp31_326*RLcp31_127+OPcp31_329*RLcp31_130+OPcp31_36*RLcp31_124;
    ACcp31_330 = qdd(3)+OMcp31_126*ORcp31_227+OMcp31_129*ORcp31_230+OMcp31_16*ORcp31_224-OMcp31_226*ORcp31_127-OMcp31_229*ORcp31_130-OMcp31_26*...
 ORcp31_124+OPcp31_126*RLcp31_227+OPcp31_129*RLcp31_230+OPcp31_16*RLcp31_224-OPcp31_226*RLcp31_127-OPcp31_229*RLcp31_130-OPcp31_26*RLcp31_124;
    OMcp31_131 = OMcp31_130+ROcp31_130*qd(31);
    OMcp31_231 = OMcp31_230+ROcp31_230*qd(31);
    OMcp31_331 = OMcp31_330+ROcp31_330*qd(31);
    OMcp31_132 = OMcp31_131+ROcp31_431*qd(32);
    OMcp31_232 = OMcp31_231+ROcp31_531*qd(32);
    OMcp31_332 = OMcp31_331+ROcp31_631*qd(32);
    OPcp31_132 = OPcp31_129+ROcp31_130*qdd(31)+ROcp31_431*qdd(32)+ROcp31_728*qdd(30)+qd(30)*(OMcp31_229*ROcp31_928-OMcp31_329*ROcp31_828)+qd(31)*(...
 OMcp31_230*ROcp31_330-OMcp31_330*ROcp31_230)+qd(32)*(OMcp31_231*ROcp31_631-OMcp31_331*ROcp31_531);
    OPcp31_232 = OPcp31_229+ROcp31_230*qdd(31)+ROcp31_531*qdd(32)+ROcp31_828*qdd(30)-qd(30)*(OMcp31_129*ROcp31_928-OMcp31_329*ROcp31_728)-qd(31)*(...
 OMcp31_130*ROcp31_330-OMcp31_330*ROcp31_130)-qd(32)*(OMcp31_131*ROcp31_631-OMcp31_331*ROcp31_431);
    OPcp31_332 = OPcp31_329+ROcp31_330*qdd(31)+ROcp31_631*qdd(32)+ROcp31_928*qdd(30)+qd(30)*(OMcp31_129*ROcp31_828-OMcp31_229*ROcp31_728)+qd(31)*(...
 OMcp31_130*ROcp31_230-OMcp31_230*ROcp31_130)+qd(32)*(OMcp31_131*ROcp31_531-OMcp31_231*ROcp31_431);

% = = Block_1_0_0_32_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp31_130;
    sens.P(2) = POcp31_230;
    sens.P(3) = POcp31_330;
    sens.R(1,1) = ROcp31_132;
    sens.R(1,2) = ROcp31_232;
    sens.R(1,3) = ROcp31_332;
    sens.R(2,1) = ROcp31_431;
    sens.R(2,2) = ROcp31_531;
    sens.R(2,3) = ROcp31_631;
    sens.R(3,1) = ROcp31_732;
    sens.R(3,2) = ROcp31_832;
    sens.R(3,3) = ROcp31_932;
    sens.V(1) = VIcp31_130;
    sens.V(2) = VIcp31_230;
    sens.V(3) = VIcp31_330;
    sens.OM(1) = OMcp31_132;
    sens.OM(2) = OMcp31_232;
    sens.OM(3) = OMcp31_332;
    sens.A(1) = ACcp31_130;
    sens.A(2) = ACcp31_230;
    sens.A(3) = ACcp31_330;
    sens.OMP(1) = OPcp31_132;
    sens.OMP(2) = OPcp31_232;
    sens.OMP(3) = OPcp31_332;
 
% 
case 33, 


% = = Block_1_0_0_33_0_1 = = 
 
% Sensor Kinematics 


    ROcp32_45 = -S4*C5;
    ROcp32_55 = C4*C5;
    ROcp32_75 = S4*S5;
    ROcp32_85 = -C4*S5;
    ROcp32_16 = -(ROcp32_75*S6-C4*C6);
    ROcp32_26 = -(ROcp32_85*S6-S4*C6);
    ROcp32_36 = -C5*S6;
    ROcp32_76 = ROcp32_75*C6+C4*S6;
    ROcp32_86 = ROcp32_85*C6+S4*S6;
    ROcp32_96 = C5*C6;
    OMcp32_15 = qd(5)*C4;
    OMcp32_25 = qd(5)*S4;
    OMcp32_16 = OMcp32_15+ROcp32_45*qd(6);
    OMcp32_26 = OMcp32_25+ROcp32_55*qd(6);
    OMcp32_36 = qd(4)+qd(6)*S5;
    OPcp32_16 = ROcp32_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp32_25*S5-ROcp32_55*qd(4));
    OPcp32_26 = ROcp32_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp32_15*S5-ROcp32_45*qd(4));
    OPcp32_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_33_0_8 = = 
 
% Sensor Kinematics 


    RLcp32_133 = ROcp32_16*s.dpt(1,9)+ROcp32_45*q(33)+ROcp32_76*s.dpt(3,9);
    RLcp32_233 = ROcp32_26*s.dpt(1,9)+ROcp32_55*q(33)+ROcp32_86*s.dpt(3,9);
    RLcp32_333 = ROcp32_36*s.dpt(1,9)+ROcp32_96*s.dpt(3,9)+q(33)*S5;
    POcp32_133 = RLcp32_133+q(1);
    POcp32_233 = RLcp32_233+q(2);
    POcp32_333 = RLcp32_333+q(3);
    ORcp32_133 = OMcp32_26*RLcp32_333-OMcp32_36*RLcp32_233;
    ORcp32_233 = -(OMcp32_16*RLcp32_333-OMcp32_36*RLcp32_133);
    ORcp32_333 = OMcp32_16*RLcp32_233-OMcp32_26*RLcp32_133;
    VIcp32_133 = ORcp32_133+qd(1)+ROcp32_45*qd(33);
    VIcp32_233 = ORcp32_233+qd(2)+ROcp32_55*qd(33);
    VIcp32_333 = ORcp32_333+qd(3)+qd(33)*S5;
    ACcp32_133 = qdd(1)+OMcp32_26*ORcp32_333-OMcp32_36*ORcp32_233+OPcp32_26*RLcp32_333-OPcp32_36*RLcp32_233+ROcp32_45*qdd(33)+(2.0)*qd(33)*(OMcp32_26*S5...
 -OMcp32_36*ROcp32_55);
    ACcp32_233 = qdd(2)-OMcp32_16*ORcp32_333+OMcp32_36*ORcp32_133-OPcp32_16*RLcp32_333+OPcp32_36*RLcp32_133+ROcp32_55*qdd(33)-(2.0)*qd(33)*(OMcp32_16*S5...
 -OMcp32_36*ROcp32_45);
    ACcp32_333 = qdd(3)+OMcp32_16*ORcp32_233-OMcp32_26*ORcp32_133+OPcp32_16*RLcp32_233-OPcp32_26*RLcp32_133+qdd(33)*S5+(2.0)*qd(33)*(OMcp32_16*ROcp32_55...
 -OMcp32_26*ROcp32_45);

% = = Block_1_0_0_33_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp32_133;
    sens.P(2) = POcp32_233;
    sens.P(3) = POcp32_333;
    sens.R(1,1) = ROcp32_16;
    sens.R(1,2) = ROcp32_26;
    sens.R(1,3) = ROcp32_36;
    sens.R(2,1) = ROcp32_45;
    sens.R(2,2) = ROcp32_55;
    sens.R(2,3) = S5;
    sens.R(3,1) = ROcp32_76;
    sens.R(3,2) = ROcp32_86;
    sens.R(3,3) = ROcp32_96;
    sens.V(1) = VIcp32_133;
    sens.V(2) = VIcp32_233;
    sens.V(3) = VIcp32_333;
    sens.OM(1) = OMcp32_16;
    sens.OM(2) = OMcp32_26;
    sens.OM(3) = OMcp32_36;
    sens.A(1) = ACcp32_133;
    sens.A(2) = ACcp32_233;
    sens.A(3) = ACcp32_333;
    sens.OMP(1) = OPcp32_16;
    sens.OMP(2) = OPcp32_26;
    sens.OMP(3) = OPcp32_36;
 
% 
case 34, 


% = = Block_1_0_0_34_0_1 = = 
 
% Sensor Kinematics 


    ROcp33_45 = -S4*C5;
    ROcp33_55 = C4*C5;
    ROcp33_75 = S4*S5;
    ROcp33_85 = -C4*S5;
    ROcp33_16 = -(ROcp33_75*S6-C4*C6);
    ROcp33_26 = -(ROcp33_85*S6-S4*C6);
    ROcp33_36 = -C5*S6;
    ROcp33_76 = ROcp33_75*C6+C4*S6;
    ROcp33_86 = ROcp33_85*C6+S4*S6;
    ROcp33_96 = C5*C6;
    OMcp33_15 = qd(5)*C4;
    OMcp33_25 = qd(5)*S4;
    OMcp33_16 = OMcp33_15+ROcp33_45*qd(6);
    OMcp33_26 = OMcp33_25+ROcp33_55*qd(6);
    OMcp33_36 = qd(4)+qd(6)*S5;
    OPcp33_16 = ROcp33_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp33_25*S5-ROcp33_55*qd(4));
    OPcp33_26 = ROcp33_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp33_15*S5-ROcp33_45*qd(4));
    OPcp33_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_34_0_9 = = 
 
% Sensor Kinematics 


    ROcp33_134 = ROcp33_16*C34+ROcp33_45*S34;
    ROcp33_234 = ROcp33_26*C34+ROcp33_55*S34;
    ROcp33_334 = ROcp33_36*C34+S34*S5;
    ROcp33_434 = -(ROcp33_16*S34-ROcp33_45*C34);
    ROcp33_534 = -(ROcp33_26*S34-ROcp33_55*C34);
    ROcp33_634 = -(ROcp33_36*S34-C34*S5);
    RLcp33_134 = ROcp33_16*s.dpt(1,10)+ROcp33_45*s.dpt(2,10)+ROcp33_76*s.dpt(3,10);
    RLcp33_234 = ROcp33_26*s.dpt(1,10)+ROcp33_55*s.dpt(2,10)+ROcp33_86*s.dpt(3,10);
    RLcp33_334 = ROcp33_36*s.dpt(1,10)+ROcp33_96*s.dpt(3,10)+s.dpt(2,10)*S5;
    POcp33_134 = RLcp33_134+q(1);
    POcp33_234 = RLcp33_234+q(2);
    POcp33_334 = RLcp33_334+q(3);
    OMcp33_134 = OMcp33_16+ROcp33_76*qd(34);
    OMcp33_234 = OMcp33_26+ROcp33_86*qd(34);
    OMcp33_334 = OMcp33_36+ROcp33_96*qd(34);
    ORcp33_134 = OMcp33_26*RLcp33_334-OMcp33_36*RLcp33_234;
    ORcp33_234 = -(OMcp33_16*RLcp33_334-OMcp33_36*RLcp33_134);
    ORcp33_334 = OMcp33_16*RLcp33_234-OMcp33_26*RLcp33_134;
    VIcp33_134 = ORcp33_134+qd(1);
    VIcp33_234 = ORcp33_234+qd(2);
    VIcp33_334 = ORcp33_334+qd(3);
    OPcp33_134 = OPcp33_16+ROcp33_76*qdd(34)+qd(34)*(OMcp33_26*ROcp33_96-OMcp33_36*ROcp33_86);
    OPcp33_234 = OPcp33_26+ROcp33_86*qdd(34)-qd(34)*(OMcp33_16*ROcp33_96-OMcp33_36*ROcp33_76);
    OPcp33_334 = OPcp33_36+ROcp33_96*qdd(34)+qd(34)*(OMcp33_16*ROcp33_86-OMcp33_26*ROcp33_76);
    ACcp33_134 = qdd(1)+OMcp33_26*ORcp33_334-OMcp33_36*ORcp33_234+OPcp33_26*RLcp33_334-OPcp33_36*RLcp33_234;
    ACcp33_234 = qdd(2)-OMcp33_16*ORcp33_334+OMcp33_36*ORcp33_134-OPcp33_16*RLcp33_334+OPcp33_36*RLcp33_134;
    ACcp33_334 = qdd(3)+OMcp33_16*ORcp33_234-OMcp33_26*ORcp33_134+OPcp33_16*RLcp33_234-OPcp33_26*RLcp33_134;

% = = Block_1_0_0_34_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp33_134;
    sens.P(2) = POcp33_234;
    sens.P(3) = POcp33_334;
    sens.R(1,1) = ROcp33_134;
    sens.R(1,2) = ROcp33_234;
    sens.R(1,3) = ROcp33_334;
    sens.R(2,1) = ROcp33_434;
    sens.R(2,2) = ROcp33_534;
    sens.R(2,3) = ROcp33_634;
    sens.R(3,1) = ROcp33_76;
    sens.R(3,2) = ROcp33_86;
    sens.R(3,3) = ROcp33_96;
    sens.V(1) = VIcp33_134;
    sens.V(2) = VIcp33_234;
    sens.V(3) = VIcp33_334;
    sens.OM(1) = OMcp33_134;
    sens.OM(2) = OMcp33_234;
    sens.OM(3) = OMcp33_334;
    sens.A(1) = ACcp33_134;
    sens.A(2) = ACcp33_234;
    sens.A(3) = ACcp33_334;
    sens.OMP(1) = OPcp33_134;
    sens.OMP(2) = OPcp33_234;
    sens.OMP(3) = OPcp33_334;
 
% 
case 35, 


% = = Block_1_0_0_35_0_1 = = 
 
% Sensor Kinematics 


    ROcp34_45 = -S4*C5;
    ROcp34_55 = C4*C5;
    ROcp34_75 = S4*S5;
    ROcp34_85 = -C4*S5;
    ROcp34_16 = -(ROcp34_75*S6-C4*C6);
    ROcp34_26 = -(ROcp34_85*S6-S4*C6);
    ROcp34_36 = -C5*S6;
    ROcp34_76 = ROcp34_75*C6+C4*S6;
    ROcp34_86 = ROcp34_85*C6+S4*S6;
    ROcp34_96 = C5*C6;
    OMcp34_15 = qd(5)*C4;
    OMcp34_25 = qd(5)*S4;
    OMcp34_16 = OMcp34_15+ROcp34_45*qd(6);
    OMcp34_26 = OMcp34_25+ROcp34_55*qd(6);
    OMcp34_36 = qd(4)+qd(6)*S5;
    OPcp34_16 = ROcp34_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp34_25*S5-ROcp34_55*qd(4));
    OPcp34_26 = ROcp34_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp34_15*S5-ROcp34_45*qd(4));
    OPcp34_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_35_0_9 = = 
 
% Sensor Kinematics 


    ROcp34_134 = ROcp34_16*C34+ROcp34_45*S34;
    ROcp34_234 = ROcp34_26*C34+ROcp34_55*S34;
    ROcp34_334 = ROcp34_36*C34+S34*S5;
    ROcp34_434 = -(ROcp34_16*S34-ROcp34_45*C34);
    ROcp34_534 = -(ROcp34_26*S34-ROcp34_55*C34);
    ROcp34_634 = -(ROcp34_36*S34-C34*S5);
    ROcp34_135 = ROcp34_134*C35-ROcp34_76*S35;
    ROcp34_235 = ROcp34_234*C35-ROcp34_86*S35;
    ROcp34_335 = ROcp34_334*C35-ROcp34_96*S35;
    ROcp34_735 = ROcp34_134*S35+ROcp34_76*C35;
    ROcp34_835 = ROcp34_234*S35+ROcp34_86*C35;
    ROcp34_935 = ROcp34_334*S35+ROcp34_96*C35;
    RLcp34_134 = ROcp34_16*s.dpt(1,10)+ROcp34_45*s.dpt(2,10)+ROcp34_76*s.dpt(3,10);
    RLcp34_234 = ROcp34_26*s.dpt(1,10)+ROcp34_55*s.dpt(2,10)+ROcp34_86*s.dpt(3,10);
    RLcp34_334 = ROcp34_36*s.dpt(1,10)+ROcp34_96*s.dpt(3,10)+s.dpt(2,10)*S5;
    POcp34_134 = RLcp34_134+q(1);
    POcp34_234 = RLcp34_234+q(2);
    POcp34_334 = RLcp34_334+q(3);
    OMcp34_134 = OMcp34_16+ROcp34_76*qd(34);
    OMcp34_234 = OMcp34_26+ROcp34_86*qd(34);
    OMcp34_334 = OMcp34_36+ROcp34_96*qd(34);
    ORcp34_134 = OMcp34_26*RLcp34_334-OMcp34_36*RLcp34_234;
    ORcp34_234 = -(OMcp34_16*RLcp34_334-OMcp34_36*RLcp34_134);
    ORcp34_334 = OMcp34_16*RLcp34_234-OMcp34_26*RLcp34_134;
    VIcp34_134 = ORcp34_134+qd(1);
    VIcp34_234 = ORcp34_234+qd(2);
    VIcp34_334 = ORcp34_334+qd(3);
    ACcp34_134 = qdd(1)+OMcp34_26*ORcp34_334-OMcp34_36*ORcp34_234+OPcp34_26*RLcp34_334-OPcp34_36*RLcp34_234;
    ACcp34_234 = qdd(2)-OMcp34_16*ORcp34_334+OMcp34_36*ORcp34_134-OPcp34_16*RLcp34_334+OPcp34_36*RLcp34_134;
    ACcp34_334 = qdd(3)+OMcp34_16*ORcp34_234-OMcp34_26*ORcp34_134+OPcp34_16*RLcp34_234-OPcp34_26*RLcp34_134;
    OMcp34_135 = OMcp34_134+ROcp34_434*qd(35);
    OMcp34_235 = OMcp34_234+ROcp34_534*qd(35);
    OMcp34_335 = OMcp34_334+ROcp34_634*qd(35);
    OPcp34_135 = OPcp34_16+ROcp34_434*qdd(35)+ROcp34_76*qdd(34)+qd(34)*(OMcp34_26*ROcp34_96-OMcp34_36*ROcp34_86)+qd(35)*(OMcp34_234*ROcp34_634-...
 OMcp34_334*ROcp34_534);
    OPcp34_235 = OPcp34_26+ROcp34_534*qdd(35)+ROcp34_86*qdd(34)-qd(34)*(OMcp34_16*ROcp34_96-OMcp34_36*ROcp34_76)-qd(35)*(OMcp34_134*ROcp34_634-...
 OMcp34_334*ROcp34_434);
    OPcp34_335 = OPcp34_36+ROcp34_634*qdd(35)+ROcp34_96*qdd(34)+qd(34)*(OMcp34_16*ROcp34_86-OMcp34_26*ROcp34_76)+qd(35)*(OMcp34_134*ROcp34_534-...
 OMcp34_234*ROcp34_434);

% = = Block_1_0_0_35_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp34_134;
    sens.P(2) = POcp34_234;
    sens.P(3) = POcp34_334;
    sens.R(1,1) = ROcp34_135;
    sens.R(1,2) = ROcp34_235;
    sens.R(1,3) = ROcp34_335;
    sens.R(2,1) = ROcp34_434;
    sens.R(2,2) = ROcp34_534;
    sens.R(2,3) = ROcp34_634;
    sens.R(3,1) = ROcp34_735;
    sens.R(3,2) = ROcp34_835;
    sens.R(3,3) = ROcp34_935;
    sens.V(1) = VIcp34_134;
    sens.V(2) = VIcp34_234;
    sens.V(3) = VIcp34_334;
    sens.OM(1) = OMcp34_135;
    sens.OM(2) = OMcp34_235;
    sens.OM(3) = OMcp34_335;
    sens.A(1) = ACcp34_134;
    sens.A(2) = ACcp34_234;
    sens.A(3) = ACcp34_334;
    sens.OMP(1) = OPcp34_135;
    sens.OMP(2) = OPcp34_235;
    sens.OMP(3) = OPcp34_335;
 
% 
case 36, 


% = = Block_1_0_0_36_0_1 = = 
 
% Sensor Kinematics 


    ROcp35_45 = -S4*C5;
    ROcp35_55 = C4*C5;
    ROcp35_75 = S4*S5;
    ROcp35_85 = -C4*S5;
    ROcp35_16 = -(ROcp35_75*S6-C4*C6);
    ROcp35_26 = -(ROcp35_85*S6-S4*C6);
    ROcp35_36 = -C5*S6;
    ROcp35_76 = ROcp35_75*C6+C4*S6;
    ROcp35_86 = ROcp35_85*C6+S4*S6;
    ROcp35_96 = C5*C6;
    OMcp35_15 = qd(5)*C4;
    OMcp35_25 = qd(5)*S4;
    OMcp35_16 = OMcp35_15+ROcp35_45*qd(6);
    OMcp35_26 = OMcp35_25+ROcp35_55*qd(6);
    OMcp35_36 = qd(4)+qd(6)*S5;
    OPcp35_16 = ROcp35_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp35_25*S5-ROcp35_55*qd(4));
    OPcp35_26 = ROcp35_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp35_15*S5-ROcp35_45*qd(4));
    OPcp35_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_36_0_9 = = 
 
% Sensor Kinematics 


    ROcp35_134 = ROcp35_16*C34+ROcp35_45*S34;
    ROcp35_234 = ROcp35_26*C34+ROcp35_55*S34;
    ROcp35_334 = ROcp35_36*C34+S34*S5;
    ROcp35_434 = -(ROcp35_16*S34-ROcp35_45*C34);
    ROcp35_534 = -(ROcp35_26*S34-ROcp35_55*C34);
    ROcp35_634 = -(ROcp35_36*S34-C34*S5);
    ROcp35_135 = ROcp35_134*C35-ROcp35_76*S35;
    ROcp35_235 = ROcp35_234*C35-ROcp35_86*S35;
    ROcp35_335 = ROcp35_334*C35-ROcp35_96*S35;
    ROcp35_735 = ROcp35_134*S35+ROcp35_76*C35;
    ROcp35_835 = ROcp35_234*S35+ROcp35_86*C35;
    ROcp35_935 = ROcp35_334*S35+ROcp35_96*C35;
    ROcp35_436 = ROcp35_434*C36+ROcp35_735*S36;
    ROcp35_536 = ROcp35_534*C36+ROcp35_835*S36;
    ROcp35_636 = ROcp35_634*C36+ROcp35_935*S36;
    ROcp35_736 = -(ROcp35_434*S36-ROcp35_735*C36);
    ROcp35_836 = -(ROcp35_534*S36-ROcp35_835*C36);
    ROcp35_936 = -(ROcp35_634*S36-ROcp35_935*C36);
    RLcp35_134 = ROcp35_16*s.dpt(1,10)+ROcp35_45*s.dpt(2,10)+ROcp35_76*s.dpt(3,10);
    RLcp35_234 = ROcp35_26*s.dpt(1,10)+ROcp35_55*s.dpt(2,10)+ROcp35_86*s.dpt(3,10);
    RLcp35_334 = ROcp35_36*s.dpt(1,10)+ROcp35_96*s.dpt(3,10)+s.dpt(2,10)*S5;
    POcp35_134 = RLcp35_134+q(1);
    POcp35_234 = RLcp35_234+q(2);
    POcp35_334 = RLcp35_334+q(3);
    OMcp35_134 = OMcp35_16+ROcp35_76*qd(34);
    OMcp35_234 = OMcp35_26+ROcp35_86*qd(34);
    OMcp35_334 = OMcp35_36+ROcp35_96*qd(34);
    ORcp35_134 = OMcp35_26*RLcp35_334-OMcp35_36*RLcp35_234;
    ORcp35_234 = -(OMcp35_16*RLcp35_334-OMcp35_36*RLcp35_134);
    ORcp35_334 = OMcp35_16*RLcp35_234-OMcp35_26*RLcp35_134;
    VIcp35_134 = ORcp35_134+qd(1);
    VIcp35_234 = ORcp35_234+qd(2);
    VIcp35_334 = ORcp35_334+qd(3);
    ACcp35_134 = qdd(1)+OMcp35_26*ORcp35_334-OMcp35_36*ORcp35_234+OPcp35_26*RLcp35_334-OPcp35_36*RLcp35_234;
    ACcp35_234 = qdd(2)-OMcp35_16*ORcp35_334+OMcp35_36*ORcp35_134-OPcp35_16*RLcp35_334+OPcp35_36*RLcp35_134;
    ACcp35_334 = qdd(3)+OMcp35_16*ORcp35_234-OMcp35_26*ORcp35_134+OPcp35_16*RLcp35_234-OPcp35_26*RLcp35_134;
    OMcp35_135 = OMcp35_134+ROcp35_434*qd(35);
    OMcp35_235 = OMcp35_234+ROcp35_534*qd(35);
    OMcp35_335 = OMcp35_334+ROcp35_634*qd(35);
    OMcp35_136 = OMcp35_135+ROcp35_135*qd(36);
    OMcp35_236 = OMcp35_235+ROcp35_235*qd(36);
    OMcp35_336 = OMcp35_335+ROcp35_335*qd(36);
    OPcp35_136 = OPcp35_16+ROcp35_135*qdd(36)+ROcp35_434*qdd(35)+ROcp35_76*qdd(34)+qd(34)*(OMcp35_26*ROcp35_96-OMcp35_36*ROcp35_86)+qd(35)*(...
 OMcp35_234*ROcp35_634-OMcp35_334*ROcp35_534)+qd(36)*(OMcp35_235*ROcp35_335-OMcp35_335*ROcp35_235);
    OPcp35_236 = OPcp35_26+ROcp35_235*qdd(36)+ROcp35_534*qdd(35)+ROcp35_86*qdd(34)-qd(34)*(OMcp35_16*ROcp35_96-OMcp35_36*ROcp35_76)-qd(35)*(...
 OMcp35_134*ROcp35_634-OMcp35_334*ROcp35_434)-qd(36)*(OMcp35_135*ROcp35_335-OMcp35_335*ROcp35_135);
    OPcp35_336 = OPcp35_36+ROcp35_335*qdd(36)+ROcp35_634*qdd(35)+ROcp35_96*qdd(34)+qd(34)*(OMcp35_16*ROcp35_86-OMcp35_26*ROcp35_76)+qd(35)*(...
 OMcp35_134*ROcp35_534-OMcp35_234*ROcp35_434)+qd(36)*(OMcp35_135*ROcp35_235-OMcp35_235*ROcp35_135);

% = = Block_1_0_0_36_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp35_134;
    sens.P(2) = POcp35_234;
    sens.P(3) = POcp35_334;
    sens.R(1,1) = ROcp35_135;
    sens.R(1,2) = ROcp35_235;
    sens.R(1,3) = ROcp35_335;
    sens.R(2,1) = ROcp35_436;
    sens.R(2,2) = ROcp35_536;
    sens.R(2,3) = ROcp35_636;
    sens.R(3,1) = ROcp35_736;
    sens.R(3,2) = ROcp35_836;
    sens.R(3,3) = ROcp35_936;
    sens.V(1) = VIcp35_134;
    sens.V(2) = VIcp35_234;
    sens.V(3) = VIcp35_334;
    sens.OM(1) = OMcp35_136;
    sens.OM(2) = OMcp35_236;
    sens.OM(3) = OMcp35_336;
    sens.A(1) = ACcp35_134;
    sens.A(2) = ACcp35_234;
    sens.A(3) = ACcp35_334;
    sens.OMP(1) = OPcp35_136;
    sens.OMP(2) = OPcp35_236;
    sens.OMP(3) = OPcp35_336;
 
% 
case 37, 


% = = Block_1_0_0_37_0_1 = = 
 
% Sensor Kinematics 


    ROcp36_45 = -S4*C5;
    ROcp36_55 = C4*C5;
    ROcp36_75 = S4*S5;
    ROcp36_85 = -C4*S5;
    ROcp36_16 = -(ROcp36_75*S6-C4*C6);
    ROcp36_26 = -(ROcp36_85*S6-S4*C6);
    ROcp36_36 = -C5*S6;
    ROcp36_76 = ROcp36_75*C6+C4*S6;
    ROcp36_86 = ROcp36_85*C6+S4*S6;
    ROcp36_96 = C5*C6;
    OMcp36_15 = qd(5)*C4;
    OMcp36_25 = qd(5)*S4;
    OMcp36_16 = OMcp36_15+ROcp36_45*qd(6);
    OMcp36_26 = OMcp36_25+ROcp36_55*qd(6);
    OMcp36_36 = qd(4)+qd(6)*S5;
    OPcp36_16 = ROcp36_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp36_25*S5-ROcp36_55*qd(4));
    OPcp36_26 = ROcp36_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp36_15*S5-ROcp36_45*qd(4));
    OPcp36_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_37_0_9 = = 
 
% Sensor Kinematics 


    ROcp36_134 = ROcp36_16*C34+ROcp36_45*S34;
    ROcp36_234 = ROcp36_26*C34+ROcp36_55*S34;
    ROcp36_334 = ROcp36_36*C34+S34*S5;
    ROcp36_434 = -(ROcp36_16*S34-ROcp36_45*C34);
    ROcp36_534 = -(ROcp36_26*S34-ROcp36_55*C34);
    ROcp36_634 = -(ROcp36_36*S34-C34*S5);
    ROcp36_135 = ROcp36_134*C35-ROcp36_76*S35;
    ROcp36_235 = ROcp36_234*C35-ROcp36_86*S35;
    ROcp36_335 = ROcp36_334*C35-ROcp36_96*S35;
    ROcp36_735 = ROcp36_134*S35+ROcp36_76*C35;
    ROcp36_835 = ROcp36_234*S35+ROcp36_86*C35;
    ROcp36_935 = ROcp36_334*S35+ROcp36_96*C35;
    ROcp36_436 = ROcp36_434*C36+ROcp36_735*S36;
    ROcp36_536 = ROcp36_534*C36+ROcp36_835*S36;
    ROcp36_636 = ROcp36_634*C36+ROcp36_935*S36;
    ROcp36_736 = -(ROcp36_434*S36-ROcp36_735*C36);
    ROcp36_836 = -(ROcp36_534*S36-ROcp36_835*C36);
    ROcp36_936 = -(ROcp36_634*S36-ROcp36_935*C36);
    ROcp36_437 = ROcp36_436*C37+ROcp36_736*S37;
    ROcp36_537 = ROcp36_536*C37+ROcp36_836*S37;
    ROcp36_637 = ROcp36_636*C37+ROcp36_936*S37;
    ROcp36_737 = -(ROcp36_436*S37-ROcp36_736*C37);
    ROcp36_837 = -(ROcp36_536*S37-ROcp36_836*C37);
    ROcp36_937 = -(ROcp36_636*S37-ROcp36_936*C37);
    RLcp36_134 = ROcp36_16*s.dpt(1,10)+ROcp36_45*s.dpt(2,10)+ROcp36_76*s.dpt(3,10);
    RLcp36_234 = ROcp36_26*s.dpt(1,10)+ROcp36_55*s.dpt(2,10)+ROcp36_86*s.dpt(3,10);
    RLcp36_334 = ROcp36_36*s.dpt(1,10)+ROcp36_96*s.dpt(3,10)+s.dpt(2,10)*S5;
    OMcp36_134 = OMcp36_16+ROcp36_76*qd(34);
    OMcp36_234 = OMcp36_26+ROcp36_86*qd(34);
    OMcp36_334 = OMcp36_36+ROcp36_96*qd(34);
    ORcp36_134 = OMcp36_26*RLcp36_334-OMcp36_36*RLcp36_234;
    ORcp36_234 = -(OMcp36_16*RLcp36_334-OMcp36_36*RLcp36_134);
    ORcp36_334 = OMcp36_16*RLcp36_234-OMcp36_26*RLcp36_134;
    OMcp36_135 = OMcp36_134+ROcp36_434*qd(35);
    OMcp36_235 = OMcp36_234+ROcp36_534*qd(35);
    OMcp36_335 = OMcp36_334+ROcp36_634*qd(35);
    OMcp36_136 = OMcp36_135+ROcp36_135*qd(36);
    OMcp36_236 = OMcp36_235+ROcp36_235*qd(36);
    OMcp36_336 = OMcp36_335+ROcp36_335*qd(36);
    OPcp36_136 = OPcp36_16+ROcp36_135*qdd(36)+ROcp36_434*qdd(35)+ROcp36_76*qdd(34)+qd(34)*(OMcp36_26*ROcp36_96-OMcp36_36*ROcp36_86)+qd(35)*(...
 OMcp36_234*ROcp36_634-OMcp36_334*ROcp36_534)+qd(36)*(OMcp36_235*ROcp36_335-OMcp36_335*ROcp36_235);
    OPcp36_236 = OPcp36_26+ROcp36_235*qdd(36)+ROcp36_534*qdd(35)+ROcp36_86*qdd(34)-qd(34)*(OMcp36_16*ROcp36_96-OMcp36_36*ROcp36_76)-qd(35)*(...
 OMcp36_134*ROcp36_634-OMcp36_334*ROcp36_434)-qd(36)*(OMcp36_135*ROcp36_335-OMcp36_335*ROcp36_135);
    OPcp36_336 = OPcp36_36+ROcp36_335*qdd(36)+ROcp36_634*qdd(35)+ROcp36_96*qdd(34)+qd(34)*(OMcp36_16*ROcp36_86-OMcp36_26*ROcp36_76)+qd(35)*(...
 OMcp36_134*ROcp36_534-OMcp36_234*ROcp36_434)+qd(36)*(OMcp36_135*ROcp36_235-OMcp36_235*ROcp36_135);
    RLcp36_137 = ROcp36_436*s.dpt(2,46);
    RLcp36_237 = ROcp36_536*s.dpt(2,46);
    RLcp36_337 = ROcp36_636*s.dpt(2,46);
    POcp36_137 = RLcp36_134+RLcp36_137+q(1);
    POcp36_237 = RLcp36_234+RLcp36_237+q(2);
    POcp36_337 = RLcp36_334+RLcp36_337+q(3);
    OMcp36_137 = OMcp36_136+ROcp36_135*qd(37);
    OMcp36_237 = OMcp36_236+ROcp36_235*qd(37);
    OMcp36_337 = OMcp36_336+ROcp36_335*qd(37);
    ORcp36_137 = OMcp36_236*RLcp36_337-OMcp36_336*RLcp36_237;
    ORcp36_237 = -(OMcp36_136*RLcp36_337-OMcp36_336*RLcp36_137);
    ORcp36_337 = OMcp36_136*RLcp36_237-OMcp36_236*RLcp36_137;
    VIcp36_137 = ORcp36_134+ORcp36_137+qd(1);
    VIcp36_237 = ORcp36_234+ORcp36_237+qd(2);
    VIcp36_337 = ORcp36_334+ORcp36_337+qd(3);
    OPcp36_137 = OPcp36_136+ROcp36_135*qdd(37)+qd(37)*(OMcp36_236*ROcp36_335-OMcp36_336*ROcp36_235);
    OPcp36_237 = OPcp36_236+ROcp36_235*qdd(37)-qd(37)*(OMcp36_136*ROcp36_335-OMcp36_336*ROcp36_135);
    OPcp36_337 = OPcp36_336+ROcp36_335*qdd(37)+qd(37)*(OMcp36_136*ROcp36_235-OMcp36_236*ROcp36_135);
    ACcp36_137 = qdd(1)+OMcp36_236*ORcp36_337+OMcp36_26*ORcp36_334-OMcp36_336*ORcp36_237-OMcp36_36*ORcp36_234+OPcp36_236*RLcp36_337+OPcp36_26*...
 RLcp36_334-OPcp36_336*RLcp36_237-OPcp36_36*RLcp36_234;
    ACcp36_237 = qdd(2)-OMcp36_136*ORcp36_337-OMcp36_16*ORcp36_334+OMcp36_336*ORcp36_137+OMcp36_36*ORcp36_134-OPcp36_136*RLcp36_337-OPcp36_16*...
 RLcp36_334+OPcp36_336*RLcp36_137+OPcp36_36*RLcp36_134;
    ACcp36_337 = qdd(3)+OMcp36_136*ORcp36_237+OMcp36_16*ORcp36_234-OMcp36_236*ORcp36_137-OMcp36_26*ORcp36_134+OPcp36_136*RLcp36_237+OPcp36_16*...
 RLcp36_234-OPcp36_236*RLcp36_137-OPcp36_26*RLcp36_134;

% = = Block_1_0_0_37_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp36_137;
    sens.P(2) = POcp36_237;
    sens.P(3) = POcp36_337;
    sens.R(1,1) = ROcp36_135;
    sens.R(1,2) = ROcp36_235;
    sens.R(1,3) = ROcp36_335;
    sens.R(2,1) = ROcp36_437;
    sens.R(2,2) = ROcp36_537;
    sens.R(2,3) = ROcp36_637;
    sens.R(3,1) = ROcp36_737;
    sens.R(3,2) = ROcp36_837;
    sens.R(3,3) = ROcp36_937;
    sens.V(1) = VIcp36_137;
    sens.V(2) = VIcp36_237;
    sens.V(3) = VIcp36_337;
    sens.OM(1) = OMcp36_137;
    sens.OM(2) = OMcp36_237;
    sens.OM(3) = OMcp36_337;
    sens.A(1) = ACcp36_137;
    sens.A(2) = ACcp36_237;
    sens.A(3) = ACcp36_337;
    sens.OMP(1) = OPcp36_137;
    sens.OMP(2) = OPcp36_237;
    sens.OMP(3) = OPcp36_337;
 
% 
case 38, 


% = = Block_1_0_0_38_0_1 = = 
 
% Sensor Kinematics 


    ROcp37_45 = -S4*C5;
    ROcp37_55 = C4*C5;
    ROcp37_75 = S4*S5;
    ROcp37_85 = -C4*S5;
    ROcp37_16 = -(ROcp37_75*S6-C4*C6);
    ROcp37_26 = -(ROcp37_85*S6-S4*C6);
    ROcp37_36 = -C5*S6;
    ROcp37_76 = ROcp37_75*C6+C4*S6;
    ROcp37_86 = ROcp37_85*C6+S4*S6;
    ROcp37_96 = C5*C6;
    OMcp37_15 = qd(5)*C4;
    OMcp37_25 = qd(5)*S4;
    OMcp37_16 = OMcp37_15+ROcp37_45*qd(6);
    OMcp37_26 = OMcp37_25+ROcp37_55*qd(6);
    OMcp37_36 = qd(4)+qd(6)*S5;
    OPcp37_16 = ROcp37_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp37_25*S5-ROcp37_55*qd(4));
    OPcp37_26 = ROcp37_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp37_15*S5-ROcp37_45*qd(4));
    OPcp37_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_38_0_9 = = 
 
% Sensor Kinematics 


    ROcp37_134 = ROcp37_16*C34+ROcp37_45*S34;
    ROcp37_234 = ROcp37_26*C34+ROcp37_55*S34;
    ROcp37_334 = ROcp37_36*C34+S34*S5;
    ROcp37_434 = -(ROcp37_16*S34-ROcp37_45*C34);
    ROcp37_534 = -(ROcp37_26*S34-ROcp37_55*C34);
    ROcp37_634 = -(ROcp37_36*S34-C34*S5);
    ROcp37_135 = ROcp37_134*C35-ROcp37_76*S35;
    ROcp37_235 = ROcp37_234*C35-ROcp37_86*S35;
    ROcp37_335 = ROcp37_334*C35-ROcp37_96*S35;
    ROcp37_735 = ROcp37_134*S35+ROcp37_76*C35;
    ROcp37_835 = ROcp37_234*S35+ROcp37_86*C35;
    ROcp37_935 = ROcp37_334*S35+ROcp37_96*C35;
    ROcp37_436 = ROcp37_434*C36+ROcp37_735*S36;
    ROcp37_536 = ROcp37_534*C36+ROcp37_835*S36;
    ROcp37_636 = ROcp37_634*C36+ROcp37_935*S36;
    ROcp37_736 = -(ROcp37_434*S36-ROcp37_735*C36);
    ROcp37_836 = -(ROcp37_534*S36-ROcp37_835*C36);
    ROcp37_936 = -(ROcp37_634*S36-ROcp37_935*C36);
    ROcp37_437 = ROcp37_436*C37+ROcp37_736*S37;
    ROcp37_537 = ROcp37_536*C37+ROcp37_836*S37;
    ROcp37_637 = ROcp37_636*C37+ROcp37_936*S37;
    ROcp37_737 = -(ROcp37_436*S37-ROcp37_736*C37);
    ROcp37_837 = -(ROcp37_536*S37-ROcp37_836*C37);
    ROcp37_937 = -(ROcp37_636*S37-ROcp37_936*C37);
    ROcp37_138 = ROcp37_135*C38-ROcp37_737*S38;
    ROcp37_238 = ROcp37_235*C38-ROcp37_837*S38;
    ROcp37_338 = ROcp37_335*C38-ROcp37_937*S38;
    ROcp37_738 = ROcp37_135*S38+ROcp37_737*C38;
    ROcp37_838 = ROcp37_235*S38+ROcp37_837*C38;
    ROcp37_938 = ROcp37_335*S38+ROcp37_937*C38;
    RLcp37_134 = ROcp37_16*s.dpt(1,10)+ROcp37_45*s.dpt(2,10)+ROcp37_76*s.dpt(3,10);
    RLcp37_234 = ROcp37_26*s.dpt(1,10)+ROcp37_55*s.dpt(2,10)+ROcp37_86*s.dpt(3,10);
    RLcp37_334 = ROcp37_36*s.dpt(1,10)+ROcp37_96*s.dpt(3,10)+s.dpt(2,10)*S5;
    OMcp37_134 = OMcp37_16+ROcp37_76*qd(34);
    OMcp37_234 = OMcp37_26+ROcp37_86*qd(34);
    OMcp37_334 = OMcp37_36+ROcp37_96*qd(34);
    ORcp37_134 = OMcp37_26*RLcp37_334-OMcp37_36*RLcp37_234;
    ORcp37_234 = -(OMcp37_16*RLcp37_334-OMcp37_36*RLcp37_134);
    ORcp37_334 = OMcp37_16*RLcp37_234-OMcp37_26*RLcp37_134;
    OMcp37_135 = OMcp37_134+ROcp37_434*qd(35);
    OMcp37_235 = OMcp37_234+ROcp37_534*qd(35);
    OMcp37_335 = OMcp37_334+ROcp37_634*qd(35);
    OMcp37_136 = OMcp37_135+ROcp37_135*qd(36);
    OMcp37_236 = OMcp37_235+ROcp37_235*qd(36);
    OMcp37_336 = OMcp37_335+ROcp37_335*qd(36);
    OPcp37_136 = OPcp37_16+ROcp37_135*qdd(36)+ROcp37_434*qdd(35)+ROcp37_76*qdd(34)+qd(34)*(OMcp37_26*ROcp37_96-OMcp37_36*ROcp37_86)+qd(35)*(...
 OMcp37_234*ROcp37_634-OMcp37_334*ROcp37_534)+qd(36)*(OMcp37_235*ROcp37_335-OMcp37_335*ROcp37_235);
    OPcp37_236 = OPcp37_26+ROcp37_235*qdd(36)+ROcp37_534*qdd(35)+ROcp37_86*qdd(34)-qd(34)*(OMcp37_16*ROcp37_96-OMcp37_36*ROcp37_76)-qd(35)*(...
 OMcp37_134*ROcp37_634-OMcp37_334*ROcp37_434)-qd(36)*(OMcp37_135*ROcp37_335-OMcp37_335*ROcp37_135);
    OPcp37_336 = OPcp37_36+ROcp37_335*qdd(36)+ROcp37_634*qdd(35)+ROcp37_96*qdd(34)+qd(34)*(OMcp37_16*ROcp37_86-OMcp37_26*ROcp37_76)+qd(35)*(...
 OMcp37_134*ROcp37_534-OMcp37_234*ROcp37_434)+qd(36)*(OMcp37_135*ROcp37_235-OMcp37_235*ROcp37_135);
    RLcp37_137 = ROcp37_436*s.dpt(2,46);
    RLcp37_237 = ROcp37_536*s.dpt(2,46);
    RLcp37_337 = ROcp37_636*s.dpt(2,46);
    POcp37_137 = RLcp37_134+RLcp37_137+q(1);
    POcp37_237 = RLcp37_234+RLcp37_237+q(2);
    POcp37_337 = RLcp37_334+RLcp37_337+q(3);
    OMcp37_137 = OMcp37_136+ROcp37_135*qd(37);
    OMcp37_237 = OMcp37_236+ROcp37_235*qd(37);
    OMcp37_337 = OMcp37_336+ROcp37_335*qd(37);
    ORcp37_137 = OMcp37_236*RLcp37_337-OMcp37_336*RLcp37_237;
    ORcp37_237 = -(OMcp37_136*RLcp37_337-OMcp37_336*RLcp37_137);
    ORcp37_337 = OMcp37_136*RLcp37_237-OMcp37_236*RLcp37_137;
    VIcp37_137 = ORcp37_134+ORcp37_137+qd(1);
    VIcp37_237 = ORcp37_234+ORcp37_237+qd(2);
    VIcp37_337 = ORcp37_334+ORcp37_337+qd(3);
    ACcp37_137 = qdd(1)+OMcp37_236*ORcp37_337+OMcp37_26*ORcp37_334-OMcp37_336*ORcp37_237-OMcp37_36*ORcp37_234+OPcp37_236*RLcp37_337+OPcp37_26*...
 RLcp37_334-OPcp37_336*RLcp37_237-OPcp37_36*RLcp37_234;
    ACcp37_237 = qdd(2)-OMcp37_136*ORcp37_337-OMcp37_16*ORcp37_334+OMcp37_336*ORcp37_137+OMcp37_36*ORcp37_134-OPcp37_136*RLcp37_337-OPcp37_16*...
 RLcp37_334+OPcp37_336*RLcp37_137+OPcp37_36*RLcp37_134;
    ACcp37_337 = qdd(3)+OMcp37_136*ORcp37_237+OMcp37_16*ORcp37_234-OMcp37_236*ORcp37_137-OMcp37_26*ORcp37_134+OPcp37_136*RLcp37_237+OPcp37_16*...
 RLcp37_234-OPcp37_236*RLcp37_137-OPcp37_26*RLcp37_134;
    OMcp37_138 = OMcp37_137+ROcp37_437*qd(38);
    OMcp37_238 = OMcp37_237+ROcp37_537*qd(38);
    OMcp37_338 = OMcp37_337+ROcp37_637*qd(38);
    OPcp37_138 = OPcp37_136+ROcp37_135*qdd(37)+ROcp37_437*qdd(38)+qd(37)*(OMcp37_236*ROcp37_335-OMcp37_336*ROcp37_235)+qd(38)*(OMcp37_237*...
 ROcp37_637-OMcp37_337*ROcp37_537);
    OPcp37_238 = OPcp37_236+ROcp37_235*qdd(37)+ROcp37_537*qdd(38)-qd(37)*(OMcp37_136*ROcp37_335-OMcp37_336*ROcp37_135)-qd(38)*(OMcp37_137*...
 ROcp37_637-OMcp37_337*ROcp37_437);
    OPcp37_338 = OPcp37_336+ROcp37_335*qdd(37)+ROcp37_637*qdd(38)+qd(37)*(OMcp37_136*ROcp37_235-OMcp37_236*ROcp37_135)+qd(38)*(OMcp37_137*...
 ROcp37_537-OMcp37_237*ROcp37_437);

% = = Block_1_0_0_38_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp37_137;
    sens.P(2) = POcp37_237;
    sens.P(3) = POcp37_337;
    sens.R(1,1) = ROcp37_138;
    sens.R(1,2) = ROcp37_238;
    sens.R(1,3) = ROcp37_338;
    sens.R(2,1) = ROcp37_437;
    sens.R(2,2) = ROcp37_537;
    sens.R(2,3) = ROcp37_637;
    sens.R(3,1) = ROcp37_738;
    sens.R(3,2) = ROcp37_838;
    sens.R(3,3) = ROcp37_938;
    sens.V(1) = VIcp37_137;
    sens.V(2) = VIcp37_237;
    sens.V(3) = VIcp37_337;
    sens.OM(1) = OMcp37_138;
    sens.OM(2) = OMcp37_238;
    sens.OM(3) = OMcp37_338;
    sens.A(1) = ACcp37_137;
    sens.A(2) = ACcp37_237;
    sens.A(3) = ACcp37_337;
    sens.OMP(1) = OPcp37_138;
    sens.OMP(2) = OPcp37_238;
    sens.OMP(3) = OPcp37_338;
 
% 
case 39, 


% = = Block_1_0_0_39_0_1 = = 
 
% Sensor Kinematics 


    ROcp38_45 = -S4*C5;
    ROcp38_55 = C4*C5;
    ROcp38_75 = S4*S5;
    ROcp38_85 = -C4*S5;
    ROcp38_16 = -(ROcp38_75*S6-C4*C6);
    ROcp38_26 = -(ROcp38_85*S6-S4*C6);
    ROcp38_36 = -C5*S6;
    ROcp38_76 = ROcp38_75*C6+C4*S6;
    ROcp38_86 = ROcp38_85*C6+S4*S6;
    ROcp38_96 = C5*C6;
    OMcp38_15 = qd(5)*C4;
    OMcp38_25 = qd(5)*S4;
    OMcp38_16 = OMcp38_15+ROcp38_45*qd(6);
    OMcp38_26 = OMcp38_25+ROcp38_55*qd(6);
    OMcp38_36 = qd(4)+qd(6)*S5;
    OPcp38_16 = ROcp38_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp38_25*S5-ROcp38_55*qd(4));
    OPcp38_26 = ROcp38_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp38_15*S5-ROcp38_45*qd(4));
    OPcp38_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_39_0_9 = = 
 
% Sensor Kinematics 


    ROcp38_134 = ROcp38_16*C34+ROcp38_45*S34;
    ROcp38_234 = ROcp38_26*C34+ROcp38_55*S34;
    ROcp38_334 = ROcp38_36*C34+S34*S5;
    ROcp38_434 = -(ROcp38_16*S34-ROcp38_45*C34);
    ROcp38_534 = -(ROcp38_26*S34-ROcp38_55*C34);
    ROcp38_634 = -(ROcp38_36*S34-C34*S5);
    ROcp38_135 = ROcp38_134*C35-ROcp38_76*S35;
    ROcp38_235 = ROcp38_234*C35-ROcp38_86*S35;
    ROcp38_335 = ROcp38_334*C35-ROcp38_96*S35;
    ROcp38_735 = ROcp38_134*S35+ROcp38_76*C35;
    ROcp38_835 = ROcp38_234*S35+ROcp38_86*C35;
    ROcp38_935 = ROcp38_334*S35+ROcp38_96*C35;
    ROcp38_436 = ROcp38_434*C36+ROcp38_735*S36;
    ROcp38_536 = ROcp38_534*C36+ROcp38_835*S36;
    ROcp38_636 = ROcp38_634*C36+ROcp38_935*S36;
    ROcp38_736 = -(ROcp38_434*S36-ROcp38_735*C36);
    ROcp38_836 = -(ROcp38_534*S36-ROcp38_835*C36);
    ROcp38_936 = -(ROcp38_634*S36-ROcp38_935*C36);
    ROcp38_437 = ROcp38_436*C37+ROcp38_736*S37;
    ROcp38_537 = ROcp38_536*C37+ROcp38_836*S37;
    ROcp38_637 = ROcp38_636*C37+ROcp38_936*S37;
    ROcp38_737 = -(ROcp38_436*S37-ROcp38_736*C37);
    ROcp38_837 = -(ROcp38_536*S37-ROcp38_836*C37);
    ROcp38_937 = -(ROcp38_636*S37-ROcp38_936*C37);
    ROcp38_138 = ROcp38_135*C38-ROcp38_737*S38;
    ROcp38_238 = ROcp38_235*C38-ROcp38_837*S38;
    ROcp38_338 = ROcp38_335*C38-ROcp38_937*S38;
    ROcp38_738 = ROcp38_135*S38+ROcp38_737*C38;
    ROcp38_838 = ROcp38_235*S38+ROcp38_837*C38;
    ROcp38_938 = ROcp38_335*S38+ROcp38_937*C38;
    ROcp38_139 = ROcp38_138*C39+ROcp38_437*S39;
    ROcp38_239 = ROcp38_238*C39+ROcp38_537*S39;
    ROcp38_339 = ROcp38_338*C39+ROcp38_637*S39;
    ROcp38_439 = -(ROcp38_138*S39-ROcp38_437*C39);
    ROcp38_539 = -(ROcp38_238*S39-ROcp38_537*C39);
    ROcp38_639 = -(ROcp38_338*S39-ROcp38_637*C39);
    RLcp38_134 = ROcp38_16*s.dpt(1,10)+ROcp38_45*s.dpt(2,10)+ROcp38_76*s.dpt(3,10);
    RLcp38_234 = ROcp38_26*s.dpt(1,10)+ROcp38_55*s.dpt(2,10)+ROcp38_86*s.dpt(3,10);
    RLcp38_334 = ROcp38_36*s.dpt(1,10)+ROcp38_96*s.dpt(3,10)+s.dpt(2,10)*S5;
    OMcp38_134 = OMcp38_16+ROcp38_76*qd(34);
    OMcp38_234 = OMcp38_26+ROcp38_86*qd(34);
    OMcp38_334 = OMcp38_36+ROcp38_96*qd(34);
    ORcp38_134 = OMcp38_26*RLcp38_334-OMcp38_36*RLcp38_234;
    ORcp38_234 = -(OMcp38_16*RLcp38_334-OMcp38_36*RLcp38_134);
    ORcp38_334 = OMcp38_16*RLcp38_234-OMcp38_26*RLcp38_134;
    OMcp38_135 = OMcp38_134+ROcp38_434*qd(35);
    OMcp38_235 = OMcp38_234+ROcp38_534*qd(35);
    OMcp38_335 = OMcp38_334+ROcp38_634*qd(35);
    OMcp38_136 = OMcp38_135+ROcp38_135*qd(36);
    OMcp38_236 = OMcp38_235+ROcp38_235*qd(36);
    OMcp38_336 = OMcp38_335+ROcp38_335*qd(36);
    OPcp38_136 = OPcp38_16+ROcp38_135*qdd(36)+ROcp38_434*qdd(35)+ROcp38_76*qdd(34)+qd(34)*(OMcp38_26*ROcp38_96-OMcp38_36*ROcp38_86)+qd(35)*(...
 OMcp38_234*ROcp38_634-OMcp38_334*ROcp38_534)+qd(36)*(OMcp38_235*ROcp38_335-OMcp38_335*ROcp38_235);
    OPcp38_236 = OPcp38_26+ROcp38_235*qdd(36)+ROcp38_534*qdd(35)+ROcp38_86*qdd(34)-qd(34)*(OMcp38_16*ROcp38_96-OMcp38_36*ROcp38_76)-qd(35)*(...
 OMcp38_134*ROcp38_634-OMcp38_334*ROcp38_434)-qd(36)*(OMcp38_135*ROcp38_335-OMcp38_335*ROcp38_135);
    OPcp38_336 = OPcp38_36+ROcp38_335*qdd(36)+ROcp38_634*qdd(35)+ROcp38_96*qdd(34)+qd(34)*(OMcp38_16*ROcp38_86-OMcp38_26*ROcp38_76)+qd(35)*(...
 OMcp38_134*ROcp38_534-OMcp38_234*ROcp38_434)+qd(36)*(OMcp38_135*ROcp38_235-OMcp38_235*ROcp38_135);
    RLcp38_137 = ROcp38_436*s.dpt(2,46);
    RLcp38_237 = ROcp38_536*s.dpt(2,46);
    RLcp38_337 = ROcp38_636*s.dpt(2,46);
    POcp38_137 = RLcp38_134+RLcp38_137+q(1);
    POcp38_237 = RLcp38_234+RLcp38_237+q(2);
    POcp38_337 = RLcp38_334+RLcp38_337+q(3);
    OMcp38_137 = OMcp38_136+ROcp38_135*qd(37);
    OMcp38_237 = OMcp38_236+ROcp38_235*qd(37);
    OMcp38_337 = OMcp38_336+ROcp38_335*qd(37);
    ORcp38_137 = OMcp38_236*RLcp38_337-OMcp38_336*RLcp38_237;
    ORcp38_237 = -(OMcp38_136*RLcp38_337-OMcp38_336*RLcp38_137);
    ORcp38_337 = OMcp38_136*RLcp38_237-OMcp38_236*RLcp38_137;
    VIcp38_137 = ORcp38_134+ORcp38_137+qd(1);
    VIcp38_237 = ORcp38_234+ORcp38_237+qd(2);
    VIcp38_337 = ORcp38_334+ORcp38_337+qd(3);
    ACcp38_137 = qdd(1)+OMcp38_236*ORcp38_337+OMcp38_26*ORcp38_334-OMcp38_336*ORcp38_237-OMcp38_36*ORcp38_234+OPcp38_236*RLcp38_337+OPcp38_26*...
 RLcp38_334-OPcp38_336*RLcp38_237-OPcp38_36*RLcp38_234;
    ACcp38_237 = qdd(2)-OMcp38_136*ORcp38_337-OMcp38_16*ORcp38_334+OMcp38_336*ORcp38_137+OMcp38_36*ORcp38_134-OPcp38_136*RLcp38_337-OPcp38_16*...
 RLcp38_334+OPcp38_336*RLcp38_137+OPcp38_36*RLcp38_134;
    ACcp38_337 = qdd(3)+OMcp38_136*ORcp38_237+OMcp38_16*ORcp38_234-OMcp38_236*ORcp38_137-OMcp38_26*ORcp38_134+OPcp38_136*RLcp38_237+OPcp38_16*...
 RLcp38_234-OPcp38_236*RLcp38_137-OPcp38_26*RLcp38_134;
    OMcp38_138 = OMcp38_137+ROcp38_437*qd(38);
    OMcp38_238 = OMcp38_237+ROcp38_537*qd(38);
    OMcp38_338 = OMcp38_337+ROcp38_637*qd(38);
    OMcp38_139 = OMcp38_138+ROcp38_738*qd(39);
    OMcp38_239 = OMcp38_238+ROcp38_838*qd(39);
    OMcp38_339 = OMcp38_338+ROcp38_938*qd(39);
    OPcp38_139 = OPcp38_136+ROcp38_135*qdd(37)+ROcp38_437*qdd(38)+ROcp38_738*qdd(39)+qd(37)*(OMcp38_236*ROcp38_335-OMcp38_336*ROcp38_235)+qd(38)*(...
 OMcp38_237*ROcp38_637-OMcp38_337*ROcp38_537)+qd(39)*(OMcp38_238*ROcp38_938-OMcp38_338*ROcp38_838);
    OPcp38_239 = OPcp38_236+ROcp38_235*qdd(37)+ROcp38_537*qdd(38)+ROcp38_838*qdd(39)-qd(37)*(OMcp38_136*ROcp38_335-OMcp38_336*ROcp38_135)-qd(38)*(...
 OMcp38_137*ROcp38_637-OMcp38_337*ROcp38_437)-qd(39)*(OMcp38_138*ROcp38_938-OMcp38_338*ROcp38_738);
    OPcp38_339 = OPcp38_336+ROcp38_335*qdd(37)+ROcp38_637*qdd(38)+ROcp38_938*qdd(39)+qd(37)*(OMcp38_136*ROcp38_235-OMcp38_236*ROcp38_135)+qd(38)*(...
 OMcp38_137*ROcp38_537-OMcp38_237*ROcp38_437)+qd(39)*(OMcp38_138*ROcp38_838-OMcp38_238*ROcp38_738);

% = = Block_1_0_0_39_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp38_137;
    sens.P(2) = POcp38_237;
    sens.P(3) = POcp38_337;
    sens.R(1,1) = ROcp38_139;
    sens.R(1,2) = ROcp38_239;
    sens.R(1,3) = ROcp38_339;
    sens.R(2,1) = ROcp38_439;
    sens.R(2,2) = ROcp38_539;
    sens.R(2,3) = ROcp38_639;
    sens.R(3,1) = ROcp38_738;
    sens.R(3,2) = ROcp38_838;
    sens.R(3,3) = ROcp38_938;
    sens.V(1) = VIcp38_137;
    sens.V(2) = VIcp38_237;
    sens.V(3) = VIcp38_337;
    sens.OM(1) = OMcp38_139;
    sens.OM(2) = OMcp38_239;
    sens.OM(3) = OMcp38_339;
    sens.A(1) = ACcp38_137;
    sens.A(2) = ACcp38_237;
    sens.A(3) = ACcp38_337;
    sens.OMP(1) = OPcp38_139;
    sens.OMP(2) = OPcp38_239;
    sens.OMP(3) = OPcp38_339;
 
% 
case 40, 


% = = Block_1_0_0_40_0_1 = = 
 
% Sensor Kinematics 


    ROcp39_45 = -S4*C5;
    ROcp39_55 = C4*C5;
    ROcp39_75 = S4*S5;
    ROcp39_85 = -C4*S5;
    ROcp39_16 = -(ROcp39_75*S6-C4*C6);
    ROcp39_26 = -(ROcp39_85*S6-S4*C6);
    ROcp39_36 = -C5*S6;
    ROcp39_76 = ROcp39_75*C6+C4*S6;
    ROcp39_86 = ROcp39_85*C6+S4*S6;
    ROcp39_96 = C5*C6;
    OMcp39_15 = qd(5)*C4;
    OMcp39_25 = qd(5)*S4;
    OMcp39_16 = OMcp39_15+ROcp39_45*qd(6);
    OMcp39_26 = OMcp39_25+ROcp39_55*qd(6);
    OMcp39_36 = qd(4)+qd(6)*S5;
    OPcp39_16 = ROcp39_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp39_25*S5-ROcp39_55*qd(4));
    OPcp39_26 = ROcp39_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp39_15*S5-ROcp39_45*qd(4));
    OPcp39_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_40_0_9 = = 
 
% Sensor Kinematics 


    ROcp39_134 = ROcp39_16*C34+ROcp39_45*S34;
    ROcp39_234 = ROcp39_26*C34+ROcp39_55*S34;
    ROcp39_334 = ROcp39_36*C34+S34*S5;
    ROcp39_434 = -(ROcp39_16*S34-ROcp39_45*C34);
    ROcp39_534 = -(ROcp39_26*S34-ROcp39_55*C34);
    ROcp39_634 = -(ROcp39_36*S34-C34*S5);
    ROcp39_135 = ROcp39_134*C35-ROcp39_76*S35;
    ROcp39_235 = ROcp39_234*C35-ROcp39_86*S35;
    ROcp39_335 = ROcp39_334*C35-ROcp39_96*S35;
    ROcp39_735 = ROcp39_134*S35+ROcp39_76*C35;
    ROcp39_835 = ROcp39_234*S35+ROcp39_86*C35;
    ROcp39_935 = ROcp39_334*S35+ROcp39_96*C35;
    ROcp39_436 = ROcp39_434*C36+ROcp39_735*S36;
    ROcp39_536 = ROcp39_534*C36+ROcp39_835*S36;
    ROcp39_636 = ROcp39_634*C36+ROcp39_935*S36;
    ROcp39_736 = -(ROcp39_434*S36-ROcp39_735*C36);
    ROcp39_836 = -(ROcp39_534*S36-ROcp39_835*C36);
    ROcp39_936 = -(ROcp39_634*S36-ROcp39_935*C36);
    ROcp39_437 = ROcp39_436*C37+ROcp39_736*S37;
    ROcp39_537 = ROcp39_536*C37+ROcp39_836*S37;
    ROcp39_637 = ROcp39_636*C37+ROcp39_936*S37;
    ROcp39_737 = -(ROcp39_436*S37-ROcp39_736*C37);
    ROcp39_837 = -(ROcp39_536*S37-ROcp39_836*C37);
    ROcp39_937 = -(ROcp39_636*S37-ROcp39_936*C37);
    ROcp39_138 = ROcp39_135*C38-ROcp39_737*S38;
    ROcp39_238 = ROcp39_235*C38-ROcp39_837*S38;
    ROcp39_338 = ROcp39_335*C38-ROcp39_937*S38;
    ROcp39_738 = ROcp39_135*S38+ROcp39_737*C38;
    ROcp39_838 = ROcp39_235*S38+ROcp39_837*C38;
    ROcp39_938 = ROcp39_335*S38+ROcp39_937*C38;
    ROcp39_139 = ROcp39_138*C39+ROcp39_437*S39;
    ROcp39_239 = ROcp39_238*C39+ROcp39_537*S39;
    ROcp39_339 = ROcp39_338*C39+ROcp39_637*S39;
    ROcp39_439 = -(ROcp39_138*S39-ROcp39_437*C39);
    ROcp39_539 = -(ROcp39_238*S39-ROcp39_537*C39);
    ROcp39_639 = -(ROcp39_338*S39-ROcp39_637*C39);
    ROcp39_140 = ROcp39_139*C40+ROcp39_439*S40;
    ROcp39_240 = ROcp39_239*C40+ROcp39_539*S40;
    ROcp39_340 = ROcp39_339*C40+ROcp39_639*S40;
    ROcp39_440 = -(ROcp39_139*S40-ROcp39_439*C40);
    ROcp39_540 = -(ROcp39_239*S40-ROcp39_539*C40);
    ROcp39_640 = -(ROcp39_339*S40-ROcp39_639*C40);
    RLcp39_134 = ROcp39_16*s.dpt(1,10)+ROcp39_45*s.dpt(2,10)+ROcp39_76*s.dpt(3,10);
    RLcp39_234 = ROcp39_26*s.dpt(1,10)+ROcp39_55*s.dpt(2,10)+ROcp39_86*s.dpt(3,10);
    RLcp39_334 = ROcp39_36*s.dpt(1,10)+ROcp39_96*s.dpt(3,10)+s.dpt(2,10)*S5;
    OMcp39_134 = OMcp39_16+ROcp39_76*qd(34);
    OMcp39_234 = OMcp39_26+ROcp39_86*qd(34);
    OMcp39_334 = OMcp39_36+ROcp39_96*qd(34);
    ORcp39_134 = OMcp39_26*RLcp39_334-OMcp39_36*RLcp39_234;
    ORcp39_234 = -(OMcp39_16*RLcp39_334-OMcp39_36*RLcp39_134);
    ORcp39_334 = OMcp39_16*RLcp39_234-OMcp39_26*RLcp39_134;
    OMcp39_135 = OMcp39_134+ROcp39_434*qd(35);
    OMcp39_235 = OMcp39_234+ROcp39_534*qd(35);
    OMcp39_335 = OMcp39_334+ROcp39_634*qd(35);
    OMcp39_136 = OMcp39_135+ROcp39_135*qd(36);
    OMcp39_236 = OMcp39_235+ROcp39_235*qd(36);
    OMcp39_336 = OMcp39_335+ROcp39_335*qd(36);
    OPcp39_136 = OPcp39_16+ROcp39_135*qdd(36)+ROcp39_434*qdd(35)+ROcp39_76*qdd(34)+qd(34)*(OMcp39_26*ROcp39_96-OMcp39_36*ROcp39_86)+qd(35)*(...
 OMcp39_234*ROcp39_634-OMcp39_334*ROcp39_534)+qd(36)*(OMcp39_235*ROcp39_335-OMcp39_335*ROcp39_235);
    OPcp39_236 = OPcp39_26+ROcp39_235*qdd(36)+ROcp39_534*qdd(35)+ROcp39_86*qdd(34)-qd(34)*(OMcp39_16*ROcp39_96-OMcp39_36*ROcp39_76)-qd(35)*(...
 OMcp39_134*ROcp39_634-OMcp39_334*ROcp39_434)-qd(36)*(OMcp39_135*ROcp39_335-OMcp39_335*ROcp39_135);
    OPcp39_336 = OPcp39_36+ROcp39_335*qdd(36)+ROcp39_634*qdd(35)+ROcp39_96*qdd(34)+qd(34)*(OMcp39_16*ROcp39_86-OMcp39_26*ROcp39_76)+qd(35)*(...
 OMcp39_134*ROcp39_534-OMcp39_234*ROcp39_434)+qd(36)*(OMcp39_135*ROcp39_235-OMcp39_235*ROcp39_135);
    RLcp39_137 = ROcp39_436*s.dpt(2,46);
    RLcp39_237 = ROcp39_536*s.dpt(2,46);
    RLcp39_337 = ROcp39_636*s.dpt(2,46);
    OMcp39_137 = OMcp39_136+ROcp39_135*qd(37);
    OMcp39_237 = OMcp39_236+ROcp39_235*qd(37);
    OMcp39_337 = OMcp39_336+ROcp39_335*qd(37);
    ORcp39_137 = OMcp39_236*RLcp39_337-OMcp39_336*RLcp39_237;
    ORcp39_237 = -(OMcp39_136*RLcp39_337-OMcp39_336*RLcp39_137);
    ORcp39_337 = OMcp39_136*RLcp39_237-OMcp39_236*RLcp39_137;
    OMcp39_138 = OMcp39_137+ROcp39_437*qd(38);
    OMcp39_238 = OMcp39_237+ROcp39_537*qd(38);
    OMcp39_338 = OMcp39_337+ROcp39_637*qd(38);
    OMcp39_139 = OMcp39_138+ROcp39_738*qd(39);
    OMcp39_239 = OMcp39_238+ROcp39_838*qd(39);
    OMcp39_339 = OMcp39_338+ROcp39_938*qd(39);
    OPcp39_139 = OPcp39_136+ROcp39_135*qdd(37)+ROcp39_437*qdd(38)+ROcp39_738*qdd(39)+qd(37)*(OMcp39_236*ROcp39_335-OMcp39_336*ROcp39_235)+qd(38)*(...
 OMcp39_237*ROcp39_637-OMcp39_337*ROcp39_537)+qd(39)*(OMcp39_238*ROcp39_938-OMcp39_338*ROcp39_838);
    OPcp39_239 = OPcp39_236+ROcp39_235*qdd(37)+ROcp39_537*qdd(38)+ROcp39_838*qdd(39)-qd(37)*(OMcp39_136*ROcp39_335-OMcp39_336*ROcp39_135)-qd(38)*(...
 OMcp39_137*ROcp39_637-OMcp39_337*ROcp39_437)-qd(39)*(OMcp39_138*ROcp39_938-OMcp39_338*ROcp39_738);
    OPcp39_339 = OPcp39_336+ROcp39_335*qdd(37)+ROcp39_637*qdd(38)+ROcp39_938*qdd(39)+qd(37)*(OMcp39_136*ROcp39_235-OMcp39_236*ROcp39_135)+qd(38)*(...
 OMcp39_137*ROcp39_537-OMcp39_237*ROcp39_437)+qd(39)*(OMcp39_138*ROcp39_838-OMcp39_238*ROcp39_738);
    RLcp39_140 = ROcp39_139*s.dpt(1,47)+ROcp39_439*s.dpt(2,47)+ROcp39_738*s.dpt(3,47);
    RLcp39_240 = ROcp39_239*s.dpt(1,47)+ROcp39_539*s.dpt(2,47)+ROcp39_838*s.dpt(3,47);
    RLcp39_340 = ROcp39_339*s.dpt(1,47)+ROcp39_639*s.dpt(2,47)+ROcp39_938*s.dpt(3,47);
    POcp39_140 = RLcp39_134+RLcp39_137+RLcp39_140+q(1);
    POcp39_240 = RLcp39_234+RLcp39_237+RLcp39_240+q(2);
    POcp39_340 = RLcp39_334+RLcp39_337+RLcp39_340+q(3);
    OMcp39_140 = OMcp39_139+ROcp39_738*qd(40);
    OMcp39_240 = OMcp39_239+ROcp39_838*qd(40);
    OMcp39_340 = OMcp39_339+ROcp39_938*qd(40);
    ORcp39_140 = OMcp39_239*RLcp39_340-OMcp39_339*RLcp39_240;
    ORcp39_240 = -(OMcp39_139*RLcp39_340-OMcp39_339*RLcp39_140);
    ORcp39_340 = OMcp39_139*RLcp39_240-OMcp39_239*RLcp39_140;
    VIcp39_140 = ORcp39_134+ORcp39_137+ORcp39_140+qd(1);
    VIcp39_240 = ORcp39_234+ORcp39_237+ORcp39_240+qd(2);
    VIcp39_340 = ORcp39_334+ORcp39_337+ORcp39_340+qd(3);
    OPcp39_140 = OPcp39_139+ROcp39_738*qdd(40)+qd(40)*(OMcp39_239*ROcp39_938-OMcp39_339*ROcp39_838);
    OPcp39_240 = OPcp39_239+ROcp39_838*qdd(40)-qd(40)*(OMcp39_139*ROcp39_938-OMcp39_339*ROcp39_738);
    OPcp39_340 = OPcp39_339+ROcp39_938*qdd(40)+qd(40)*(OMcp39_139*ROcp39_838-OMcp39_239*ROcp39_738);
    ACcp39_140 = qdd(1)+OMcp39_236*ORcp39_337+OMcp39_239*ORcp39_340+OMcp39_26*ORcp39_334-OMcp39_336*ORcp39_237-OMcp39_339*ORcp39_240-OMcp39_36*...
 ORcp39_234+OPcp39_236*RLcp39_337+OPcp39_239*RLcp39_340+OPcp39_26*RLcp39_334-OPcp39_336*RLcp39_237-OPcp39_339*RLcp39_240-OPcp39_36*RLcp39_234;
    ACcp39_240 = qdd(2)-OMcp39_136*ORcp39_337-OMcp39_139*ORcp39_340-OMcp39_16*ORcp39_334+OMcp39_336*ORcp39_137+OMcp39_339*ORcp39_140+OMcp39_36*...
 ORcp39_134-OPcp39_136*RLcp39_337-OPcp39_139*RLcp39_340-OPcp39_16*RLcp39_334+OPcp39_336*RLcp39_137+OPcp39_339*RLcp39_140+OPcp39_36*RLcp39_134;
    ACcp39_340 = qdd(3)+OMcp39_136*ORcp39_237+OMcp39_139*ORcp39_240+OMcp39_16*ORcp39_234-OMcp39_236*ORcp39_137-OMcp39_239*ORcp39_140-OMcp39_26*...
 ORcp39_134+OPcp39_136*RLcp39_237+OPcp39_139*RLcp39_240+OPcp39_16*RLcp39_234-OPcp39_236*RLcp39_137-OPcp39_239*RLcp39_140-OPcp39_26*RLcp39_134;

% = = Block_1_0_0_40_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp39_140;
    sens.P(2) = POcp39_240;
    sens.P(3) = POcp39_340;
    sens.R(1,1) = ROcp39_140;
    sens.R(1,2) = ROcp39_240;
    sens.R(1,3) = ROcp39_340;
    sens.R(2,1) = ROcp39_440;
    sens.R(2,2) = ROcp39_540;
    sens.R(2,3) = ROcp39_640;
    sens.R(3,1) = ROcp39_738;
    sens.R(3,2) = ROcp39_838;
    sens.R(3,3) = ROcp39_938;
    sens.V(1) = VIcp39_140;
    sens.V(2) = VIcp39_240;
    sens.V(3) = VIcp39_340;
    sens.OM(1) = OMcp39_140;
    sens.OM(2) = OMcp39_240;
    sens.OM(3) = OMcp39_340;
    sens.A(1) = ACcp39_140;
    sens.A(2) = ACcp39_240;
    sens.A(3) = ACcp39_340;
    sens.OMP(1) = OPcp39_140;
    sens.OMP(2) = OPcp39_240;
    sens.OMP(3) = OPcp39_340;
 
% 
case 41, 


% = = Block_1_0_0_41_0_1 = = 
 
% Sensor Kinematics 


    ROcp40_45 = -S4*C5;
    ROcp40_55 = C4*C5;
    ROcp40_75 = S4*S5;
    ROcp40_85 = -C4*S5;
    ROcp40_16 = -(ROcp40_75*S6-C4*C6);
    ROcp40_26 = -(ROcp40_85*S6-S4*C6);
    ROcp40_36 = -C5*S6;
    ROcp40_76 = ROcp40_75*C6+C4*S6;
    ROcp40_86 = ROcp40_85*C6+S4*S6;
    ROcp40_96 = C5*C6;
    OMcp40_15 = qd(5)*C4;
    OMcp40_25 = qd(5)*S4;
    OMcp40_16 = OMcp40_15+ROcp40_45*qd(6);
    OMcp40_26 = OMcp40_25+ROcp40_55*qd(6);
    OMcp40_36 = qd(4)+qd(6)*S5;
    OPcp40_16 = ROcp40_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp40_25*S5-ROcp40_55*qd(4));
    OPcp40_26 = ROcp40_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp40_15*S5-ROcp40_45*qd(4));
    OPcp40_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_41_0_9 = = 
 
% Sensor Kinematics 


    ROcp40_134 = ROcp40_16*C34+ROcp40_45*S34;
    ROcp40_234 = ROcp40_26*C34+ROcp40_55*S34;
    ROcp40_334 = ROcp40_36*C34+S34*S5;
    ROcp40_434 = -(ROcp40_16*S34-ROcp40_45*C34);
    ROcp40_534 = -(ROcp40_26*S34-ROcp40_55*C34);
    ROcp40_634 = -(ROcp40_36*S34-C34*S5);
    ROcp40_135 = ROcp40_134*C35-ROcp40_76*S35;
    ROcp40_235 = ROcp40_234*C35-ROcp40_86*S35;
    ROcp40_335 = ROcp40_334*C35-ROcp40_96*S35;
    ROcp40_735 = ROcp40_134*S35+ROcp40_76*C35;
    ROcp40_835 = ROcp40_234*S35+ROcp40_86*C35;
    ROcp40_935 = ROcp40_334*S35+ROcp40_96*C35;
    ROcp40_436 = ROcp40_434*C36+ROcp40_735*S36;
    ROcp40_536 = ROcp40_534*C36+ROcp40_835*S36;
    ROcp40_636 = ROcp40_634*C36+ROcp40_935*S36;
    ROcp40_736 = -(ROcp40_434*S36-ROcp40_735*C36);
    ROcp40_836 = -(ROcp40_534*S36-ROcp40_835*C36);
    ROcp40_936 = -(ROcp40_634*S36-ROcp40_935*C36);
    ROcp40_437 = ROcp40_436*C37+ROcp40_736*S37;
    ROcp40_537 = ROcp40_536*C37+ROcp40_836*S37;
    ROcp40_637 = ROcp40_636*C37+ROcp40_936*S37;
    ROcp40_737 = -(ROcp40_436*S37-ROcp40_736*C37);
    ROcp40_837 = -(ROcp40_536*S37-ROcp40_836*C37);
    ROcp40_937 = -(ROcp40_636*S37-ROcp40_936*C37);
    ROcp40_138 = ROcp40_135*C38-ROcp40_737*S38;
    ROcp40_238 = ROcp40_235*C38-ROcp40_837*S38;
    ROcp40_338 = ROcp40_335*C38-ROcp40_937*S38;
    ROcp40_738 = ROcp40_135*S38+ROcp40_737*C38;
    ROcp40_838 = ROcp40_235*S38+ROcp40_837*C38;
    ROcp40_938 = ROcp40_335*S38+ROcp40_937*C38;
    ROcp40_139 = ROcp40_138*C39+ROcp40_437*S39;
    ROcp40_239 = ROcp40_238*C39+ROcp40_537*S39;
    ROcp40_339 = ROcp40_338*C39+ROcp40_637*S39;
    ROcp40_439 = -(ROcp40_138*S39-ROcp40_437*C39);
    ROcp40_539 = -(ROcp40_238*S39-ROcp40_537*C39);
    ROcp40_639 = -(ROcp40_338*S39-ROcp40_637*C39);
    ROcp40_140 = ROcp40_139*C40+ROcp40_439*S40;
    ROcp40_240 = ROcp40_239*C40+ROcp40_539*S40;
    ROcp40_340 = ROcp40_339*C40+ROcp40_639*S40;
    ROcp40_440 = -(ROcp40_139*S40-ROcp40_439*C40);
    ROcp40_540 = -(ROcp40_239*S40-ROcp40_539*C40);
    ROcp40_640 = -(ROcp40_339*S40-ROcp40_639*C40);
    ROcp40_441 = ROcp40_440*C41+ROcp40_738*S41;
    ROcp40_541 = ROcp40_540*C41+ROcp40_838*S41;
    ROcp40_641 = ROcp40_640*C41+ROcp40_938*S41;
    ROcp40_741 = -(ROcp40_440*S41-ROcp40_738*C41);
    ROcp40_841 = -(ROcp40_540*S41-ROcp40_838*C41);
    ROcp40_941 = -(ROcp40_640*S41-ROcp40_938*C41);
    RLcp40_134 = ROcp40_16*s.dpt(1,10)+ROcp40_45*s.dpt(2,10)+ROcp40_76*s.dpt(3,10);
    RLcp40_234 = ROcp40_26*s.dpt(1,10)+ROcp40_55*s.dpt(2,10)+ROcp40_86*s.dpt(3,10);
    RLcp40_334 = ROcp40_36*s.dpt(1,10)+ROcp40_96*s.dpt(3,10)+s.dpt(2,10)*S5;
    OMcp40_134 = OMcp40_16+ROcp40_76*qd(34);
    OMcp40_234 = OMcp40_26+ROcp40_86*qd(34);
    OMcp40_334 = OMcp40_36+ROcp40_96*qd(34);
    ORcp40_134 = OMcp40_26*RLcp40_334-OMcp40_36*RLcp40_234;
    ORcp40_234 = -(OMcp40_16*RLcp40_334-OMcp40_36*RLcp40_134);
    ORcp40_334 = OMcp40_16*RLcp40_234-OMcp40_26*RLcp40_134;
    OMcp40_135 = OMcp40_134+ROcp40_434*qd(35);
    OMcp40_235 = OMcp40_234+ROcp40_534*qd(35);
    OMcp40_335 = OMcp40_334+ROcp40_634*qd(35);
    OMcp40_136 = OMcp40_135+ROcp40_135*qd(36);
    OMcp40_236 = OMcp40_235+ROcp40_235*qd(36);
    OMcp40_336 = OMcp40_335+ROcp40_335*qd(36);
    OPcp40_136 = OPcp40_16+ROcp40_135*qdd(36)+ROcp40_434*qdd(35)+ROcp40_76*qdd(34)+qd(34)*(OMcp40_26*ROcp40_96-OMcp40_36*ROcp40_86)+qd(35)*(...
 OMcp40_234*ROcp40_634-OMcp40_334*ROcp40_534)+qd(36)*(OMcp40_235*ROcp40_335-OMcp40_335*ROcp40_235);
    OPcp40_236 = OPcp40_26+ROcp40_235*qdd(36)+ROcp40_534*qdd(35)+ROcp40_86*qdd(34)-qd(34)*(OMcp40_16*ROcp40_96-OMcp40_36*ROcp40_76)-qd(35)*(...
 OMcp40_134*ROcp40_634-OMcp40_334*ROcp40_434)-qd(36)*(OMcp40_135*ROcp40_335-OMcp40_335*ROcp40_135);
    OPcp40_336 = OPcp40_36+ROcp40_335*qdd(36)+ROcp40_634*qdd(35)+ROcp40_96*qdd(34)+qd(34)*(OMcp40_16*ROcp40_86-OMcp40_26*ROcp40_76)+qd(35)*(...
 OMcp40_134*ROcp40_534-OMcp40_234*ROcp40_434)+qd(36)*(OMcp40_135*ROcp40_235-OMcp40_235*ROcp40_135);
    RLcp40_137 = ROcp40_436*s.dpt(2,46);
    RLcp40_237 = ROcp40_536*s.dpt(2,46);
    RLcp40_337 = ROcp40_636*s.dpt(2,46);
    OMcp40_137 = OMcp40_136+ROcp40_135*qd(37);
    OMcp40_237 = OMcp40_236+ROcp40_235*qd(37);
    OMcp40_337 = OMcp40_336+ROcp40_335*qd(37);
    ORcp40_137 = OMcp40_236*RLcp40_337-OMcp40_336*RLcp40_237;
    ORcp40_237 = -(OMcp40_136*RLcp40_337-OMcp40_336*RLcp40_137);
    ORcp40_337 = OMcp40_136*RLcp40_237-OMcp40_236*RLcp40_137;
    OMcp40_138 = OMcp40_137+ROcp40_437*qd(38);
    OMcp40_238 = OMcp40_237+ROcp40_537*qd(38);
    OMcp40_338 = OMcp40_337+ROcp40_637*qd(38);
    OMcp40_139 = OMcp40_138+ROcp40_738*qd(39);
    OMcp40_239 = OMcp40_238+ROcp40_838*qd(39);
    OMcp40_339 = OMcp40_338+ROcp40_938*qd(39);
    OPcp40_139 = OPcp40_136+ROcp40_135*qdd(37)+ROcp40_437*qdd(38)+ROcp40_738*qdd(39)+qd(37)*(OMcp40_236*ROcp40_335-OMcp40_336*ROcp40_235)+qd(38)*(...
 OMcp40_237*ROcp40_637-OMcp40_337*ROcp40_537)+qd(39)*(OMcp40_238*ROcp40_938-OMcp40_338*ROcp40_838);
    OPcp40_239 = OPcp40_236+ROcp40_235*qdd(37)+ROcp40_537*qdd(38)+ROcp40_838*qdd(39)-qd(37)*(OMcp40_136*ROcp40_335-OMcp40_336*ROcp40_135)-qd(38)*(...
 OMcp40_137*ROcp40_637-OMcp40_337*ROcp40_437)-qd(39)*(OMcp40_138*ROcp40_938-OMcp40_338*ROcp40_738);
    OPcp40_339 = OPcp40_336+ROcp40_335*qdd(37)+ROcp40_637*qdd(38)+ROcp40_938*qdd(39)+qd(37)*(OMcp40_136*ROcp40_235-OMcp40_236*ROcp40_135)+qd(38)*(...
 OMcp40_137*ROcp40_537-OMcp40_237*ROcp40_437)+qd(39)*(OMcp40_138*ROcp40_838-OMcp40_238*ROcp40_738);
    RLcp40_140 = ROcp40_139*s.dpt(1,47)+ROcp40_439*s.dpt(2,47)+ROcp40_738*s.dpt(3,47);
    RLcp40_240 = ROcp40_239*s.dpt(1,47)+ROcp40_539*s.dpt(2,47)+ROcp40_838*s.dpt(3,47);
    RLcp40_340 = ROcp40_339*s.dpt(1,47)+ROcp40_639*s.dpt(2,47)+ROcp40_938*s.dpt(3,47);
    POcp40_140 = RLcp40_134+RLcp40_137+RLcp40_140+q(1);
    POcp40_240 = RLcp40_234+RLcp40_237+RLcp40_240+q(2);
    POcp40_340 = RLcp40_334+RLcp40_337+RLcp40_340+q(3);
    OMcp40_140 = OMcp40_139+ROcp40_738*qd(40);
    OMcp40_240 = OMcp40_239+ROcp40_838*qd(40);
    OMcp40_340 = OMcp40_339+ROcp40_938*qd(40);
    ORcp40_140 = OMcp40_239*RLcp40_340-OMcp40_339*RLcp40_240;
    ORcp40_240 = -(OMcp40_139*RLcp40_340-OMcp40_339*RLcp40_140);
    ORcp40_340 = OMcp40_139*RLcp40_240-OMcp40_239*RLcp40_140;
    VIcp40_140 = ORcp40_134+ORcp40_137+ORcp40_140+qd(1);
    VIcp40_240 = ORcp40_234+ORcp40_237+ORcp40_240+qd(2);
    VIcp40_340 = ORcp40_334+ORcp40_337+ORcp40_340+qd(3);
    ACcp40_140 = qdd(1)+OMcp40_236*ORcp40_337+OMcp40_239*ORcp40_340+OMcp40_26*ORcp40_334-OMcp40_336*ORcp40_237-OMcp40_339*ORcp40_240-OMcp40_36*...
 ORcp40_234+OPcp40_236*RLcp40_337+OPcp40_239*RLcp40_340+OPcp40_26*RLcp40_334-OPcp40_336*RLcp40_237-OPcp40_339*RLcp40_240-OPcp40_36*RLcp40_234;
    ACcp40_240 = qdd(2)-OMcp40_136*ORcp40_337-OMcp40_139*ORcp40_340-OMcp40_16*ORcp40_334+OMcp40_336*ORcp40_137+OMcp40_339*ORcp40_140+OMcp40_36*...
 ORcp40_134-OPcp40_136*RLcp40_337-OPcp40_139*RLcp40_340-OPcp40_16*RLcp40_334+OPcp40_336*RLcp40_137+OPcp40_339*RLcp40_140+OPcp40_36*RLcp40_134;
    ACcp40_340 = qdd(3)+OMcp40_136*ORcp40_237+OMcp40_139*ORcp40_240+OMcp40_16*ORcp40_234-OMcp40_236*ORcp40_137-OMcp40_239*ORcp40_140-OMcp40_26*...
 ORcp40_134+OPcp40_136*RLcp40_237+OPcp40_139*RLcp40_240+OPcp40_16*RLcp40_234-OPcp40_236*RLcp40_137-OPcp40_239*RLcp40_140-OPcp40_26*RLcp40_134;
    OMcp40_141 = OMcp40_140+ROcp40_140*qd(41);
    OMcp40_241 = OMcp40_240+ROcp40_240*qd(41);
    OMcp40_341 = OMcp40_340+ROcp40_340*qd(41);
    OPcp40_141 = OPcp40_139+ROcp40_140*qdd(41)+ROcp40_738*qdd(40)+qd(40)*(OMcp40_239*ROcp40_938-OMcp40_339*ROcp40_838)+qd(41)*(OMcp40_240*...
 ROcp40_340-OMcp40_340*ROcp40_240);
    OPcp40_241 = OPcp40_239+ROcp40_240*qdd(41)+ROcp40_838*qdd(40)-qd(40)*(OMcp40_139*ROcp40_938-OMcp40_339*ROcp40_738)-qd(41)*(OMcp40_140*...
 ROcp40_340-OMcp40_340*ROcp40_140);
    OPcp40_341 = OPcp40_339+ROcp40_340*qdd(41)+ROcp40_938*qdd(40)+qd(40)*(OMcp40_139*ROcp40_838-OMcp40_239*ROcp40_738)+qd(41)*(OMcp40_140*...
 ROcp40_240-OMcp40_240*ROcp40_140);

% = = Block_1_0_0_41_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp40_140;
    sens.P(2) = POcp40_240;
    sens.P(3) = POcp40_340;
    sens.R(1,1) = ROcp40_140;
    sens.R(1,2) = ROcp40_240;
    sens.R(1,3) = ROcp40_340;
    sens.R(2,1) = ROcp40_441;
    sens.R(2,2) = ROcp40_541;
    sens.R(2,3) = ROcp40_641;
    sens.R(3,1) = ROcp40_741;
    sens.R(3,2) = ROcp40_841;
    sens.R(3,3) = ROcp40_941;
    sens.V(1) = VIcp40_140;
    sens.V(2) = VIcp40_240;
    sens.V(3) = VIcp40_340;
    sens.OM(1) = OMcp40_141;
    sens.OM(2) = OMcp40_241;
    sens.OM(3) = OMcp40_341;
    sens.A(1) = ACcp40_140;
    sens.A(2) = ACcp40_240;
    sens.A(3) = ACcp40_340;
    sens.OMP(1) = OPcp40_141;
    sens.OMP(2) = OPcp40_241;
    sens.OMP(3) = OPcp40_341;
 
% 
case 42, 


% = = Block_1_0_0_42_0_1 = = 
 
% Sensor Kinematics 


    ROcp41_45 = -S4*C5;
    ROcp41_55 = C4*C5;
    ROcp41_75 = S4*S5;
    ROcp41_85 = -C4*S5;
    ROcp41_16 = -(ROcp41_75*S6-C4*C6);
    ROcp41_26 = -(ROcp41_85*S6-S4*C6);
    ROcp41_36 = -C5*S6;
    ROcp41_76 = ROcp41_75*C6+C4*S6;
    ROcp41_86 = ROcp41_85*C6+S4*S6;
    ROcp41_96 = C5*C6;
    OMcp41_15 = qd(5)*C4;
    OMcp41_25 = qd(5)*S4;
    OMcp41_16 = OMcp41_15+ROcp41_45*qd(6);
    OMcp41_26 = OMcp41_25+ROcp41_55*qd(6);
    OMcp41_36 = qd(4)+qd(6)*S5;
    OPcp41_16 = ROcp41_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp41_25*S5-ROcp41_55*qd(4));
    OPcp41_26 = ROcp41_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp41_15*S5-ROcp41_45*qd(4));
    OPcp41_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_42_0_9 = = 
 
% Sensor Kinematics 


    ROcp41_134 = ROcp41_16*C34+ROcp41_45*S34;
    ROcp41_234 = ROcp41_26*C34+ROcp41_55*S34;
    ROcp41_334 = ROcp41_36*C34+S34*S5;
    ROcp41_434 = -(ROcp41_16*S34-ROcp41_45*C34);
    ROcp41_534 = -(ROcp41_26*S34-ROcp41_55*C34);
    ROcp41_634 = -(ROcp41_36*S34-C34*S5);
    ROcp41_135 = ROcp41_134*C35-ROcp41_76*S35;
    ROcp41_235 = ROcp41_234*C35-ROcp41_86*S35;
    ROcp41_335 = ROcp41_334*C35-ROcp41_96*S35;
    ROcp41_735 = ROcp41_134*S35+ROcp41_76*C35;
    ROcp41_835 = ROcp41_234*S35+ROcp41_86*C35;
    ROcp41_935 = ROcp41_334*S35+ROcp41_96*C35;
    ROcp41_436 = ROcp41_434*C36+ROcp41_735*S36;
    ROcp41_536 = ROcp41_534*C36+ROcp41_835*S36;
    ROcp41_636 = ROcp41_634*C36+ROcp41_935*S36;
    ROcp41_736 = -(ROcp41_434*S36-ROcp41_735*C36);
    ROcp41_836 = -(ROcp41_534*S36-ROcp41_835*C36);
    ROcp41_936 = -(ROcp41_634*S36-ROcp41_935*C36);
    ROcp41_437 = ROcp41_436*C37+ROcp41_736*S37;
    ROcp41_537 = ROcp41_536*C37+ROcp41_836*S37;
    ROcp41_637 = ROcp41_636*C37+ROcp41_936*S37;
    ROcp41_737 = -(ROcp41_436*S37-ROcp41_736*C37);
    ROcp41_837 = -(ROcp41_536*S37-ROcp41_836*C37);
    ROcp41_937 = -(ROcp41_636*S37-ROcp41_936*C37);
    ROcp41_138 = ROcp41_135*C38-ROcp41_737*S38;
    ROcp41_238 = ROcp41_235*C38-ROcp41_837*S38;
    ROcp41_338 = ROcp41_335*C38-ROcp41_937*S38;
    ROcp41_738 = ROcp41_135*S38+ROcp41_737*C38;
    ROcp41_838 = ROcp41_235*S38+ROcp41_837*C38;
    ROcp41_938 = ROcp41_335*S38+ROcp41_937*C38;
    ROcp41_139 = ROcp41_138*C39+ROcp41_437*S39;
    ROcp41_239 = ROcp41_238*C39+ROcp41_537*S39;
    ROcp41_339 = ROcp41_338*C39+ROcp41_637*S39;
    ROcp41_439 = -(ROcp41_138*S39-ROcp41_437*C39);
    ROcp41_539 = -(ROcp41_238*S39-ROcp41_537*C39);
    ROcp41_639 = -(ROcp41_338*S39-ROcp41_637*C39);
    ROcp41_140 = ROcp41_139*C40+ROcp41_439*S40;
    ROcp41_240 = ROcp41_239*C40+ROcp41_539*S40;
    ROcp41_340 = ROcp41_339*C40+ROcp41_639*S40;
    ROcp41_440 = -(ROcp41_139*S40-ROcp41_439*C40);
    ROcp41_540 = -(ROcp41_239*S40-ROcp41_539*C40);
    ROcp41_640 = -(ROcp41_339*S40-ROcp41_639*C40);
    ROcp41_441 = ROcp41_440*C41+ROcp41_738*S41;
    ROcp41_541 = ROcp41_540*C41+ROcp41_838*S41;
    ROcp41_641 = ROcp41_640*C41+ROcp41_938*S41;
    ROcp41_741 = -(ROcp41_440*S41-ROcp41_738*C41);
    ROcp41_841 = -(ROcp41_540*S41-ROcp41_838*C41);
    ROcp41_941 = -(ROcp41_640*S41-ROcp41_938*C41);
    ROcp41_142 = ROcp41_140*C42-ROcp41_741*S42;
    ROcp41_242 = ROcp41_240*C42-ROcp41_841*S42;
    ROcp41_342 = ROcp41_340*C42-ROcp41_941*S42;
    ROcp41_742 = ROcp41_140*S42+ROcp41_741*C42;
    ROcp41_842 = ROcp41_240*S42+ROcp41_841*C42;
    ROcp41_942 = ROcp41_340*S42+ROcp41_941*C42;
    RLcp41_134 = ROcp41_16*s.dpt(1,10)+ROcp41_45*s.dpt(2,10)+ROcp41_76*s.dpt(3,10);
    RLcp41_234 = ROcp41_26*s.dpt(1,10)+ROcp41_55*s.dpt(2,10)+ROcp41_86*s.dpt(3,10);
    RLcp41_334 = ROcp41_36*s.dpt(1,10)+ROcp41_96*s.dpt(3,10)+s.dpt(2,10)*S5;
    OMcp41_134 = OMcp41_16+ROcp41_76*qd(34);
    OMcp41_234 = OMcp41_26+ROcp41_86*qd(34);
    OMcp41_334 = OMcp41_36+ROcp41_96*qd(34);
    ORcp41_134 = OMcp41_26*RLcp41_334-OMcp41_36*RLcp41_234;
    ORcp41_234 = -(OMcp41_16*RLcp41_334-OMcp41_36*RLcp41_134);
    ORcp41_334 = OMcp41_16*RLcp41_234-OMcp41_26*RLcp41_134;
    OMcp41_135 = OMcp41_134+ROcp41_434*qd(35);
    OMcp41_235 = OMcp41_234+ROcp41_534*qd(35);
    OMcp41_335 = OMcp41_334+ROcp41_634*qd(35);
    OMcp41_136 = OMcp41_135+ROcp41_135*qd(36);
    OMcp41_236 = OMcp41_235+ROcp41_235*qd(36);
    OMcp41_336 = OMcp41_335+ROcp41_335*qd(36);
    OPcp41_136 = OPcp41_16+ROcp41_135*qdd(36)+ROcp41_434*qdd(35)+ROcp41_76*qdd(34)+qd(34)*(OMcp41_26*ROcp41_96-OMcp41_36*ROcp41_86)+qd(35)*(...
 OMcp41_234*ROcp41_634-OMcp41_334*ROcp41_534)+qd(36)*(OMcp41_235*ROcp41_335-OMcp41_335*ROcp41_235);
    OPcp41_236 = OPcp41_26+ROcp41_235*qdd(36)+ROcp41_534*qdd(35)+ROcp41_86*qdd(34)-qd(34)*(OMcp41_16*ROcp41_96-OMcp41_36*ROcp41_76)-qd(35)*(...
 OMcp41_134*ROcp41_634-OMcp41_334*ROcp41_434)-qd(36)*(OMcp41_135*ROcp41_335-OMcp41_335*ROcp41_135);
    OPcp41_336 = OPcp41_36+ROcp41_335*qdd(36)+ROcp41_634*qdd(35)+ROcp41_96*qdd(34)+qd(34)*(OMcp41_16*ROcp41_86-OMcp41_26*ROcp41_76)+qd(35)*(...
 OMcp41_134*ROcp41_534-OMcp41_234*ROcp41_434)+qd(36)*(OMcp41_135*ROcp41_235-OMcp41_235*ROcp41_135);
    RLcp41_137 = ROcp41_436*s.dpt(2,46);
    RLcp41_237 = ROcp41_536*s.dpt(2,46);
    RLcp41_337 = ROcp41_636*s.dpt(2,46);
    OMcp41_137 = OMcp41_136+ROcp41_135*qd(37);
    OMcp41_237 = OMcp41_236+ROcp41_235*qd(37);
    OMcp41_337 = OMcp41_336+ROcp41_335*qd(37);
    ORcp41_137 = OMcp41_236*RLcp41_337-OMcp41_336*RLcp41_237;
    ORcp41_237 = -(OMcp41_136*RLcp41_337-OMcp41_336*RLcp41_137);
    ORcp41_337 = OMcp41_136*RLcp41_237-OMcp41_236*RLcp41_137;
    OMcp41_138 = OMcp41_137+ROcp41_437*qd(38);
    OMcp41_238 = OMcp41_237+ROcp41_537*qd(38);
    OMcp41_338 = OMcp41_337+ROcp41_637*qd(38);
    OMcp41_139 = OMcp41_138+ROcp41_738*qd(39);
    OMcp41_239 = OMcp41_238+ROcp41_838*qd(39);
    OMcp41_339 = OMcp41_338+ROcp41_938*qd(39);
    OPcp41_139 = OPcp41_136+ROcp41_135*qdd(37)+ROcp41_437*qdd(38)+ROcp41_738*qdd(39)+qd(37)*(OMcp41_236*ROcp41_335-OMcp41_336*ROcp41_235)+qd(38)*(...
 OMcp41_237*ROcp41_637-OMcp41_337*ROcp41_537)+qd(39)*(OMcp41_238*ROcp41_938-OMcp41_338*ROcp41_838);
    OPcp41_239 = OPcp41_236+ROcp41_235*qdd(37)+ROcp41_537*qdd(38)+ROcp41_838*qdd(39)-qd(37)*(OMcp41_136*ROcp41_335-OMcp41_336*ROcp41_135)-qd(38)*(...
 OMcp41_137*ROcp41_637-OMcp41_337*ROcp41_437)-qd(39)*(OMcp41_138*ROcp41_938-OMcp41_338*ROcp41_738);
    OPcp41_339 = OPcp41_336+ROcp41_335*qdd(37)+ROcp41_637*qdd(38)+ROcp41_938*qdd(39)+qd(37)*(OMcp41_136*ROcp41_235-OMcp41_236*ROcp41_135)+qd(38)*(...
 OMcp41_137*ROcp41_537-OMcp41_237*ROcp41_437)+qd(39)*(OMcp41_138*ROcp41_838-OMcp41_238*ROcp41_738);
    RLcp41_140 = ROcp41_139*s.dpt(1,47)+ROcp41_439*s.dpt(2,47)+ROcp41_738*s.dpt(3,47);
    RLcp41_240 = ROcp41_239*s.dpt(1,47)+ROcp41_539*s.dpt(2,47)+ROcp41_838*s.dpt(3,47);
    RLcp41_340 = ROcp41_339*s.dpt(1,47)+ROcp41_639*s.dpt(2,47)+ROcp41_938*s.dpt(3,47);
    POcp41_140 = RLcp41_134+RLcp41_137+RLcp41_140+q(1);
    POcp41_240 = RLcp41_234+RLcp41_237+RLcp41_240+q(2);
    POcp41_340 = RLcp41_334+RLcp41_337+RLcp41_340+q(3);
    OMcp41_140 = OMcp41_139+ROcp41_738*qd(40);
    OMcp41_240 = OMcp41_239+ROcp41_838*qd(40);
    OMcp41_340 = OMcp41_339+ROcp41_938*qd(40);
    ORcp41_140 = OMcp41_239*RLcp41_340-OMcp41_339*RLcp41_240;
    ORcp41_240 = -(OMcp41_139*RLcp41_340-OMcp41_339*RLcp41_140);
    ORcp41_340 = OMcp41_139*RLcp41_240-OMcp41_239*RLcp41_140;
    VIcp41_140 = ORcp41_134+ORcp41_137+ORcp41_140+qd(1);
    VIcp41_240 = ORcp41_234+ORcp41_237+ORcp41_240+qd(2);
    VIcp41_340 = ORcp41_334+ORcp41_337+ORcp41_340+qd(3);
    ACcp41_140 = qdd(1)+OMcp41_236*ORcp41_337+OMcp41_239*ORcp41_340+OMcp41_26*ORcp41_334-OMcp41_336*ORcp41_237-OMcp41_339*ORcp41_240-OMcp41_36*...
 ORcp41_234+OPcp41_236*RLcp41_337+OPcp41_239*RLcp41_340+OPcp41_26*RLcp41_334-OPcp41_336*RLcp41_237-OPcp41_339*RLcp41_240-OPcp41_36*RLcp41_234;
    ACcp41_240 = qdd(2)-OMcp41_136*ORcp41_337-OMcp41_139*ORcp41_340-OMcp41_16*ORcp41_334+OMcp41_336*ORcp41_137+OMcp41_339*ORcp41_140+OMcp41_36*...
 ORcp41_134-OPcp41_136*RLcp41_337-OPcp41_139*RLcp41_340-OPcp41_16*RLcp41_334+OPcp41_336*RLcp41_137+OPcp41_339*RLcp41_140+OPcp41_36*RLcp41_134;
    ACcp41_340 = qdd(3)+OMcp41_136*ORcp41_237+OMcp41_139*ORcp41_240+OMcp41_16*ORcp41_234-OMcp41_236*ORcp41_137-OMcp41_239*ORcp41_140-OMcp41_26*...
 ORcp41_134+OPcp41_136*RLcp41_237+OPcp41_139*RLcp41_240+OPcp41_16*RLcp41_234-OPcp41_236*RLcp41_137-OPcp41_239*RLcp41_140-OPcp41_26*RLcp41_134;
    OMcp41_141 = OMcp41_140+ROcp41_140*qd(41);
    OMcp41_241 = OMcp41_240+ROcp41_240*qd(41);
    OMcp41_341 = OMcp41_340+ROcp41_340*qd(41);
    OMcp41_142 = OMcp41_141+ROcp41_441*qd(42);
    OMcp41_242 = OMcp41_241+ROcp41_541*qd(42);
    OMcp41_342 = OMcp41_341+ROcp41_641*qd(42);
    OPcp41_142 = OPcp41_139+ROcp41_140*qdd(41)+ROcp41_441*qdd(42)+ROcp41_738*qdd(40)+qd(40)*(OMcp41_239*ROcp41_938-OMcp41_339*ROcp41_838)+qd(41)*(...
 OMcp41_240*ROcp41_340-OMcp41_340*ROcp41_240)+qd(42)*(OMcp41_241*ROcp41_641-OMcp41_341*ROcp41_541);
    OPcp41_242 = OPcp41_239+ROcp41_240*qdd(41)+ROcp41_541*qdd(42)+ROcp41_838*qdd(40)-qd(40)*(OMcp41_139*ROcp41_938-OMcp41_339*ROcp41_738)-qd(41)*(...
 OMcp41_140*ROcp41_340-OMcp41_340*ROcp41_140)-qd(42)*(OMcp41_141*ROcp41_641-OMcp41_341*ROcp41_441);
    OPcp41_342 = OPcp41_339+ROcp41_340*qdd(41)+ROcp41_641*qdd(42)+ROcp41_938*qdd(40)+qd(40)*(OMcp41_139*ROcp41_838-OMcp41_239*ROcp41_738)+qd(41)*(...
 OMcp41_140*ROcp41_240-OMcp41_240*ROcp41_140)+qd(42)*(OMcp41_141*ROcp41_541-OMcp41_241*ROcp41_441);

% = = Block_1_0_0_42_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp41_140;
    sens.P(2) = POcp41_240;
    sens.P(3) = POcp41_340;
    sens.R(1,1) = ROcp41_142;
    sens.R(1,2) = ROcp41_242;
    sens.R(1,3) = ROcp41_342;
    sens.R(2,1) = ROcp41_441;
    sens.R(2,2) = ROcp41_541;
    sens.R(2,3) = ROcp41_641;
    sens.R(3,1) = ROcp41_742;
    sens.R(3,2) = ROcp41_842;
    sens.R(3,3) = ROcp41_942;
    sens.V(1) = VIcp41_140;
    sens.V(2) = VIcp41_240;
    sens.V(3) = VIcp41_340;
    sens.OM(1) = OMcp41_142;
    sens.OM(2) = OMcp41_242;
    sens.OM(3) = OMcp41_342;
    sens.A(1) = ACcp41_140;
    sens.A(2) = ACcp41_240;
    sens.A(3) = ACcp41_340;
    sens.OMP(1) = OPcp41_142;
    sens.OMP(2) = OPcp41_242;
    sens.OMP(3) = OPcp41_342;
 
% 
case 43, 


% = = Block_1_0_0_43_0_1 = = 
 
% Sensor Kinematics 


    ROcp42_45 = -S4*C5;
    ROcp42_55 = C4*C5;
    ROcp42_75 = S4*S5;
    ROcp42_85 = -C4*S5;
    ROcp42_16 = -(ROcp42_75*S6-C4*C6);
    ROcp42_26 = -(ROcp42_85*S6-S4*C6);
    ROcp42_36 = -C5*S6;
    ROcp42_76 = ROcp42_75*C6+C4*S6;
    ROcp42_86 = ROcp42_85*C6+S4*S6;
    ROcp42_96 = C5*C6;
    OMcp42_15 = qd(5)*C4;
    OMcp42_25 = qd(5)*S4;
    OMcp42_16 = OMcp42_15+ROcp42_45*qd(6);
    OMcp42_26 = OMcp42_25+ROcp42_55*qd(6);
    OMcp42_36 = qd(4)+qd(6)*S5;
    OPcp42_16 = ROcp42_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp42_25*S5-ROcp42_55*qd(4));
    OPcp42_26 = ROcp42_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp42_15*S5-ROcp42_45*qd(4));
    OPcp42_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_43_0_10 = = 
 
% Sensor Kinematics 


    ROcp42_143 = ROcp42_16*C43+ROcp42_45*S43;
    ROcp42_243 = ROcp42_26*C43+ROcp42_55*S43;
    ROcp42_343 = ROcp42_36*C43+S43*S5;
    ROcp42_443 = -(ROcp42_16*S43-ROcp42_45*C43);
    ROcp42_543 = -(ROcp42_26*S43-ROcp42_55*C43);
    ROcp42_643 = -(ROcp42_36*S43-C43*S5);
    RLcp42_143 = ROcp42_16*s.dpt(1,11)+ROcp42_45*s.dpt(2,11)+ROcp42_76*s.dpt(3,11);
    RLcp42_243 = ROcp42_26*s.dpt(1,11)+ROcp42_55*s.dpt(2,11)+ROcp42_86*s.dpt(3,11);
    RLcp42_343 = ROcp42_36*s.dpt(1,11)+ROcp42_96*s.dpt(3,11)+s.dpt(2,11)*S5;
    POcp42_143 = RLcp42_143+q(1);
    POcp42_243 = RLcp42_243+q(2);
    POcp42_343 = RLcp42_343+q(3);
    OMcp42_143 = OMcp42_16+ROcp42_76*qd(43);
    OMcp42_243 = OMcp42_26+ROcp42_86*qd(43);
    OMcp42_343 = OMcp42_36+ROcp42_96*qd(43);
    ORcp42_143 = OMcp42_26*RLcp42_343-OMcp42_36*RLcp42_243;
    ORcp42_243 = -(OMcp42_16*RLcp42_343-OMcp42_36*RLcp42_143);
    ORcp42_343 = OMcp42_16*RLcp42_243-OMcp42_26*RLcp42_143;
    VIcp42_143 = ORcp42_143+qd(1);
    VIcp42_243 = ORcp42_243+qd(2);
    VIcp42_343 = ORcp42_343+qd(3);
    OPcp42_143 = OPcp42_16+ROcp42_76*qdd(43)+qd(43)*(OMcp42_26*ROcp42_96-OMcp42_36*ROcp42_86);
    OPcp42_243 = OPcp42_26+ROcp42_86*qdd(43)-qd(43)*(OMcp42_16*ROcp42_96-OMcp42_36*ROcp42_76);
    OPcp42_343 = OPcp42_36+ROcp42_96*qdd(43)+qd(43)*(OMcp42_16*ROcp42_86-OMcp42_26*ROcp42_76);
    ACcp42_143 = qdd(1)+OMcp42_26*ORcp42_343-OMcp42_36*ORcp42_243+OPcp42_26*RLcp42_343-OPcp42_36*RLcp42_243;
    ACcp42_243 = qdd(2)-OMcp42_16*ORcp42_343+OMcp42_36*ORcp42_143-OPcp42_16*RLcp42_343+OPcp42_36*RLcp42_143;
    ACcp42_343 = qdd(3)+OMcp42_16*ORcp42_243-OMcp42_26*ORcp42_143+OPcp42_16*RLcp42_243-OPcp42_26*RLcp42_143;

% = = Block_1_0_0_43_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp42_143;
    sens.P(2) = POcp42_243;
    sens.P(3) = POcp42_343;
    sens.R(1,1) = ROcp42_143;
    sens.R(1,2) = ROcp42_243;
    sens.R(1,3) = ROcp42_343;
    sens.R(2,1) = ROcp42_443;
    sens.R(2,2) = ROcp42_543;
    sens.R(2,3) = ROcp42_643;
    sens.R(3,1) = ROcp42_76;
    sens.R(3,2) = ROcp42_86;
    sens.R(3,3) = ROcp42_96;
    sens.V(1) = VIcp42_143;
    sens.V(2) = VIcp42_243;
    sens.V(3) = VIcp42_343;
    sens.OM(1) = OMcp42_143;
    sens.OM(2) = OMcp42_243;
    sens.OM(3) = OMcp42_343;
    sens.A(1) = ACcp42_143;
    sens.A(2) = ACcp42_243;
    sens.A(3) = ACcp42_343;
    sens.OMP(1) = OPcp42_143;
    sens.OMP(2) = OPcp42_243;
    sens.OMP(3) = OPcp42_343;
 
% 
case 44, 


% = = Block_1_0_0_44_0_1 = = 
 
% Sensor Kinematics 


    ROcp43_45 = -S4*C5;
    ROcp43_55 = C4*C5;
    ROcp43_75 = S4*S5;
    ROcp43_85 = -C4*S5;
    ROcp43_16 = -(ROcp43_75*S6-C4*C6);
    ROcp43_26 = -(ROcp43_85*S6-S4*C6);
    ROcp43_36 = -C5*S6;
    ROcp43_76 = ROcp43_75*C6+C4*S6;
    ROcp43_86 = ROcp43_85*C6+S4*S6;
    ROcp43_96 = C5*C6;
    OMcp43_15 = qd(5)*C4;
    OMcp43_25 = qd(5)*S4;
    OMcp43_16 = OMcp43_15+ROcp43_45*qd(6);
    OMcp43_26 = OMcp43_25+ROcp43_55*qd(6);
    OMcp43_36 = qd(4)+qd(6)*S5;
    OPcp43_16 = ROcp43_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp43_25*S5-ROcp43_55*qd(4));
    OPcp43_26 = ROcp43_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp43_15*S5-ROcp43_45*qd(4));
    OPcp43_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_44_0_10 = = 
 
% Sensor Kinematics 


    ROcp43_143 = ROcp43_16*C43+ROcp43_45*S43;
    ROcp43_243 = ROcp43_26*C43+ROcp43_55*S43;
    ROcp43_343 = ROcp43_36*C43+S43*S5;
    ROcp43_443 = -(ROcp43_16*S43-ROcp43_45*C43);
    ROcp43_543 = -(ROcp43_26*S43-ROcp43_55*C43);
    ROcp43_643 = -(ROcp43_36*S43-C43*S5);
    ROcp43_444 = ROcp43_443*C44+ROcp43_76*S44;
    ROcp43_544 = ROcp43_543*C44+ROcp43_86*S44;
    ROcp43_644 = ROcp43_643*C44+ROcp43_96*S44;
    ROcp43_744 = -(ROcp43_443*S44-ROcp43_76*C44);
    ROcp43_844 = -(ROcp43_543*S44-ROcp43_86*C44);
    ROcp43_944 = -(ROcp43_643*S44-ROcp43_96*C44);
    RLcp43_143 = ROcp43_16*s.dpt(1,11)+ROcp43_45*s.dpt(2,11)+ROcp43_76*s.dpt(3,11);
    RLcp43_243 = ROcp43_26*s.dpt(1,11)+ROcp43_55*s.dpt(2,11)+ROcp43_86*s.dpt(3,11);
    RLcp43_343 = ROcp43_36*s.dpt(1,11)+ROcp43_96*s.dpt(3,11)+s.dpt(2,11)*S5;
    POcp43_143 = RLcp43_143+q(1);
    POcp43_243 = RLcp43_243+q(2);
    POcp43_343 = RLcp43_343+q(3);
    OMcp43_143 = OMcp43_16+ROcp43_76*qd(43);
    OMcp43_243 = OMcp43_26+ROcp43_86*qd(43);
    OMcp43_343 = OMcp43_36+ROcp43_96*qd(43);
    ORcp43_143 = OMcp43_26*RLcp43_343-OMcp43_36*RLcp43_243;
    ORcp43_243 = -(OMcp43_16*RLcp43_343-OMcp43_36*RLcp43_143);
    ORcp43_343 = OMcp43_16*RLcp43_243-OMcp43_26*RLcp43_143;
    VIcp43_143 = ORcp43_143+qd(1);
    VIcp43_243 = ORcp43_243+qd(2);
    VIcp43_343 = ORcp43_343+qd(3);
    ACcp43_143 = qdd(1)+OMcp43_26*ORcp43_343-OMcp43_36*ORcp43_243+OPcp43_26*RLcp43_343-OPcp43_36*RLcp43_243;
    ACcp43_243 = qdd(2)-OMcp43_16*ORcp43_343+OMcp43_36*ORcp43_143-OPcp43_16*RLcp43_343+OPcp43_36*RLcp43_143;
    ACcp43_343 = qdd(3)+OMcp43_16*ORcp43_243-OMcp43_26*ORcp43_143+OPcp43_16*RLcp43_243-OPcp43_26*RLcp43_143;
    OMcp43_144 = OMcp43_143+ROcp43_143*qd(44);
    OMcp43_244 = OMcp43_243+ROcp43_243*qd(44);
    OMcp43_344 = OMcp43_343+ROcp43_343*qd(44);
    OPcp43_144 = OPcp43_16+ROcp43_143*qdd(44)+ROcp43_76*qdd(43)+qd(43)*(OMcp43_26*ROcp43_96-OMcp43_36*ROcp43_86)+qd(44)*(OMcp43_243*ROcp43_343-...
 OMcp43_343*ROcp43_243);
    OPcp43_244 = OPcp43_26+ROcp43_243*qdd(44)+ROcp43_86*qdd(43)-qd(43)*(OMcp43_16*ROcp43_96-OMcp43_36*ROcp43_76)-qd(44)*(OMcp43_143*ROcp43_343-...
 OMcp43_343*ROcp43_143);
    OPcp43_344 = OPcp43_36+ROcp43_343*qdd(44)+ROcp43_96*qdd(43)+qd(43)*(OMcp43_16*ROcp43_86-OMcp43_26*ROcp43_76)+qd(44)*(OMcp43_143*ROcp43_243-...
 OMcp43_243*ROcp43_143);

% = = Block_1_0_0_44_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp43_143;
    sens.P(2) = POcp43_243;
    sens.P(3) = POcp43_343;
    sens.R(1,1) = ROcp43_143;
    sens.R(1,2) = ROcp43_243;
    sens.R(1,3) = ROcp43_343;
    sens.R(2,1) = ROcp43_444;
    sens.R(2,2) = ROcp43_544;
    sens.R(2,3) = ROcp43_644;
    sens.R(3,1) = ROcp43_744;
    sens.R(3,2) = ROcp43_844;
    sens.R(3,3) = ROcp43_944;
    sens.V(1) = VIcp43_143;
    sens.V(2) = VIcp43_243;
    sens.V(3) = VIcp43_343;
    sens.OM(1) = OMcp43_144;
    sens.OM(2) = OMcp43_244;
    sens.OM(3) = OMcp43_344;
    sens.A(1) = ACcp43_143;
    sens.A(2) = ACcp43_243;
    sens.A(3) = ACcp43_343;
    sens.OMP(1) = OPcp43_144;
    sens.OMP(2) = OPcp43_244;
    sens.OMP(3) = OPcp43_344;
 
% 
case 45, 


% = = Block_1_0_0_45_0_1 = = 
 
% Sensor Kinematics 


    ROcp44_45 = -S4*C5;
    ROcp44_55 = C4*C5;
    ROcp44_75 = S4*S5;
    ROcp44_85 = -C4*S5;
    ROcp44_16 = -(ROcp44_75*S6-C4*C6);
    ROcp44_26 = -(ROcp44_85*S6-S4*C6);
    ROcp44_36 = -C5*S6;
    ROcp44_76 = ROcp44_75*C6+C4*S6;
    ROcp44_86 = ROcp44_85*C6+S4*S6;
    ROcp44_96 = C5*C6;
    OMcp44_15 = qd(5)*C4;
    OMcp44_25 = qd(5)*S4;
    OMcp44_16 = OMcp44_15+ROcp44_45*qd(6);
    OMcp44_26 = OMcp44_25+ROcp44_55*qd(6);
    OMcp44_36 = qd(4)+qd(6)*S5;
    OPcp44_16 = ROcp44_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp44_25*S5-ROcp44_55*qd(4));
    OPcp44_26 = ROcp44_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp44_15*S5-ROcp44_45*qd(4));
    OPcp44_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_45_0_11 = = 
 
% Sensor Kinematics 


    ROcp44_145 = ROcp44_16*C45+ROcp44_45*S45;
    ROcp44_245 = ROcp44_26*C45+ROcp44_55*S45;
    ROcp44_345 = ROcp44_36*C45+S45*S5;
    ROcp44_445 = -(ROcp44_16*S45-ROcp44_45*C45);
    ROcp44_545 = -(ROcp44_26*S45-ROcp44_55*C45);
    ROcp44_645 = -(ROcp44_36*S45-C45*S5);
    RLcp44_145 = ROcp44_16*s.dpt(1,12)+ROcp44_45*s.dpt(2,12)+ROcp44_76*s.dpt(3,12);
    RLcp44_245 = ROcp44_26*s.dpt(1,12)+ROcp44_55*s.dpt(2,12)+ROcp44_86*s.dpt(3,12);
    RLcp44_345 = ROcp44_36*s.dpt(1,12)+ROcp44_96*s.dpt(3,12)+s.dpt(2,12)*S5;
    POcp44_145 = RLcp44_145+q(1);
    POcp44_245 = RLcp44_245+q(2);
    POcp44_345 = RLcp44_345+q(3);
    OMcp44_145 = OMcp44_16+ROcp44_76*qd(45);
    OMcp44_245 = OMcp44_26+ROcp44_86*qd(45);
    OMcp44_345 = OMcp44_36+ROcp44_96*qd(45);
    ORcp44_145 = OMcp44_26*RLcp44_345-OMcp44_36*RLcp44_245;
    ORcp44_245 = -(OMcp44_16*RLcp44_345-OMcp44_36*RLcp44_145);
    ORcp44_345 = OMcp44_16*RLcp44_245-OMcp44_26*RLcp44_145;
    VIcp44_145 = ORcp44_145+qd(1);
    VIcp44_245 = ORcp44_245+qd(2);
    VIcp44_345 = ORcp44_345+qd(3);
    OPcp44_145 = OPcp44_16+ROcp44_76*qdd(45)+qd(45)*(OMcp44_26*ROcp44_96-OMcp44_36*ROcp44_86);
    OPcp44_245 = OPcp44_26+ROcp44_86*qdd(45)-qd(45)*(OMcp44_16*ROcp44_96-OMcp44_36*ROcp44_76);
    OPcp44_345 = OPcp44_36+ROcp44_96*qdd(45)+qd(45)*(OMcp44_16*ROcp44_86-OMcp44_26*ROcp44_76);
    ACcp44_145 = qdd(1)+OMcp44_26*ORcp44_345-OMcp44_36*ORcp44_245+OPcp44_26*RLcp44_345-OPcp44_36*RLcp44_245;
    ACcp44_245 = qdd(2)-OMcp44_16*ORcp44_345+OMcp44_36*ORcp44_145-OPcp44_16*RLcp44_345+OPcp44_36*RLcp44_145;
    ACcp44_345 = qdd(3)+OMcp44_16*ORcp44_245-OMcp44_26*ORcp44_145+OPcp44_16*RLcp44_245-OPcp44_26*RLcp44_145;

% = = Block_1_0_0_45_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp44_145;
    sens.P(2) = POcp44_245;
    sens.P(3) = POcp44_345;
    sens.R(1,1) = ROcp44_145;
    sens.R(1,2) = ROcp44_245;
    sens.R(1,3) = ROcp44_345;
    sens.R(2,1) = ROcp44_445;
    sens.R(2,2) = ROcp44_545;
    sens.R(2,3) = ROcp44_645;
    sens.R(3,1) = ROcp44_76;
    sens.R(3,2) = ROcp44_86;
    sens.R(3,3) = ROcp44_96;
    sens.V(1) = VIcp44_145;
    sens.V(2) = VIcp44_245;
    sens.V(3) = VIcp44_345;
    sens.OM(1) = OMcp44_145;
    sens.OM(2) = OMcp44_245;
    sens.OM(3) = OMcp44_345;
    sens.A(1) = ACcp44_145;
    sens.A(2) = ACcp44_245;
    sens.A(3) = ACcp44_345;
    sens.OMP(1) = OPcp44_145;
    sens.OMP(2) = OPcp44_245;
    sens.OMP(3) = OPcp44_345;
 
% 
case 46, 


% = = Block_1_0_0_46_0_1 = = 
 
% Sensor Kinematics 


    ROcp45_45 = -S4*C5;
    ROcp45_55 = C4*C5;
    ROcp45_75 = S4*S5;
    ROcp45_85 = -C4*S5;
    ROcp45_16 = -(ROcp45_75*S6-C4*C6);
    ROcp45_26 = -(ROcp45_85*S6-S4*C6);
    ROcp45_36 = -C5*S6;
    ROcp45_76 = ROcp45_75*C6+C4*S6;
    ROcp45_86 = ROcp45_85*C6+S4*S6;
    ROcp45_96 = C5*C6;
    OMcp45_15 = qd(5)*C4;
    OMcp45_25 = qd(5)*S4;
    OMcp45_16 = OMcp45_15+ROcp45_45*qd(6);
    OMcp45_26 = OMcp45_25+ROcp45_55*qd(6);
    OMcp45_36 = qd(4)+qd(6)*S5;
    OPcp45_16 = ROcp45_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp45_25*S5-ROcp45_55*qd(4));
    OPcp45_26 = ROcp45_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp45_15*S5-ROcp45_45*qd(4));
    OPcp45_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_46_0_11 = = 
 
% Sensor Kinematics 


    ROcp45_145 = ROcp45_16*C45+ROcp45_45*S45;
    ROcp45_245 = ROcp45_26*C45+ROcp45_55*S45;
    ROcp45_345 = ROcp45_36*C45+S45*S5;
    ROcp45_445 = -(ROcp45_16*S45-ROcp45_45*C45);
    ROcp45_545 = -(ROcp45_26*S45-ROcp45_55*C45);
    ROcp45_645 = -(ROcp45_36*S45-C45*S5);
    ROcp45_446 = ROcp45_445*C46+ROcp45_76*S46;
    ROcp45_546 = ROcp45_545*C46+ROcp45_86*S46;
    ROcp45_646 = ROcp45_645*C46+ROcp45_96*S46;
    ROcp45_746 = -(ROcp45_445*S46-ROcp45_76*C46);
    ROcp45_846 = -(ROcp45_545*S46-ROcp45_86*C46);
    ROcp45_946 = -(ROcp45_645*S46-ROcp45_96*C46);
    RLcp45_145 = ROcp45_16*s.dpt(1,12)+ROcp45_45*s.dpt(2,12)+ROcp45_76*s.dpt(3,12);
    RLcp45_245 = ROcp45_26*s.dpt(1,12)+ROcp45_55*s.dpt(2,12)+ROcp45_86*s.dpt(3,12);
    RLcp45_345 = ROcp45_36*s.dpt(1,12)+ROcp45_96*s.dpt(3,12)+s.dpt(2,12)*S5;
    POcp45_145 = RLcp45_145+q(1);
    POcp45_245 = RLcp45_245+q(2);
    POcp45_345 = RLcp45_345+q(3);
    OMcp45_145 = OMcp45_16+ROcp45_76*qd(45);
    OMcp45_245 = OMcp45_26+ROcp45_86*qd(45);
    OMcp45_345 = OMcp45_36+ROcp45_96*qd(45);
    ORcp45_145 = OMcp45_26*RLcp45_345-OMcp45_36*RLcp45_245;
    ORcp45_245 = -(OMcp45_16*RLcp45_345-OMcp45_36*RLcp45_145);
    ORcp45_345 = OMcp45_16*RLcp45_245-OMcp45_26*RLcp45_145;
    VIcp45_145 = ORcp45_145+qd(1);
    VIcp45_245 = ORcp45_245+qd(2);
    VIcp45_345 = ORcp45_345+qd(3);
    ACcp45_145 = qdd(1)+OMcp45_26*ORcp45_345-OMcp45_36*ORcp45_245+OPcp45_26*RLcp45_345-OPcp45_36*RLcp45_245;
    ACcp45_245 = qdd(2)-OMcp45_16*ORcp45_345+OMcp45_36*ORcp45_145-OPcp45_16*RLcp45_345+OPcp45_36*RLcp45_145;
    ACcp45_345 = qdd(3)+OMcp45_16*ORcp45_245-OMcp45_26*ORcp45_145+OPcp45_16*RLcp45_245-OPcp45_26*RLcp45_145;
    OMcp45_146 = OMcp45_145+ROcp45_145*qd(46);
    OMcp45_246 = OMcp45_245+ROcp45_245*qd(46);
    OMcp45_346 = OMcp45_345+ROcp45_345*qd(46);
    OPcp45_146 = OPcp45_16+ROcp45_145*qdd(46)+ROcp45_76*qdd(45)+qd(45)*(OMcp45_26*ROcp45_96-OMcp45_36*ROcp45_86)+qd(46)*(OMcp45_245*ROcp45_345-...
 OMcp45_345*ROcp45_245);
    OPcp45_246 = OPcp45_26+ROcp45_245*qdd(46)+ROcp45_86*qdd(45)-qd(45)*(OMcp45_16*ROcp45_96-OMcp45_36*ROcp45_76)-qd(46)*(OMcp45_145*ROcp45_345-...
 OMcp45_345*ROcp45_145);
    OPcp45_346 = OPcp45_36+ROcp45_345*qdd(46)+ROcp45_96*qdd(45)+qd(45)*(OMcp45_16*ROcp45_86-OMcp45_26*ROcp45_76)+qd(46)*(OMcp45_145*ROcp45_245-...
 OMcp45_245*ROcp45_145);

% = = Block_1_0_0_46_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp45_145;
    sens.P(2) = POcp45_245;
    sens.P(3) = POcp45_345;
    sens.R(1,1) = ROcp45_145;
    sens.R(1,2) = ROcp45_245;
    sens.R(1,3) = ROcp45_345;
    sens.R(2,1) = ROcp45_446;
    sens.R(2,2) = ROcp45_546;
    sens.R(2,3) = ROcp45_646;
    sens.R(3,1) = ROcp45_746;
    sens.R(3,2) = ROcp45_846;
    sens.R(3,3) = ROcp45_946;
    sens.V(1) = VIcp45_145;
    sens.V(2) = VIcp45_245;
    sens.V(3) = VIcp45_345;
    sens.OM(1) = OMcp45_146;
    sens.OM(2) = OMcp45_246;
    sens.OM(3) = OMcp45_346;
    sens.A(1) = ACcp45_145;
    sens.A(2) = ACcp45_245;
    sens.A(3) = ACcp45_345;
    sens.OMP(1) = OPcp45_146;
    sens.OMP(2) = OPcp45_246;
    sens.OMP(3) = OPcp45_346;
 
% 
case 47, 


% = = Block_1_0_0_47_0_1 = = 
 
% Sensor Kinematics 


    ROcp46_45 = -S4*C5;
    ROcp46_55 = C4*C5;
    ROcp46_75 = S4*S5;
    ROcp46_85 = -C4*S5;
    ROcp46_16 = -(ROcp46_75*S6-C4*C6);
    ROcp46_26 = -(ROcp46_85*S6-S4*C6);
    ROcp46_36 = -C5*S6;
    ROcp46_76 = ROcp46_75*C6+C4*S6;
    ROcp46_86 = ROcp46_85*C6+S4*S6;
    ROcp46_96 = C5*C6;
    OMcp46_15 = qd(5)*C4;
    OMcp46_25 = qd(5)*S4;
    OMcp46_16 = OMcp46_15+ROcp46_45*qd(6);
    OMcp46_26 = OMcp46_25+ROcp46_55*qd(6);
    OMcp46_36 = qd(4)+qd(6)*S5;
    OPcp46_16 = ROcp46_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp46_25*S5-ROcp46_55*qd(4));
    OPcp46_26 = ROcp46_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp46_15*S5-ROcp46_45*qd(4));
    OPcp46_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_47_0_12 = = 
 
% Sensor Kinematics 


    ROcp46_147 = ROcp46_16*C47+ROcp46_45*S47;
    ROcp46_247 = ROcp46_26*C47+ROcp46_55*S47;
    ROcp46_347 = ROcp46_36*C47+S47*S5;
    ROcp46_447 = -(ROcp46_16*S47-ROcp46_45*C47);
    ROcp46_547 = -(ROcp46_26*S47-ROcp46_55*C47);
    ROcp46_647 = -(ROcp46_36*S47-C47*S5);
    RLcp46_147 = ROcp46_16*s.dpt(1,15)+ROcp46_45*s.dpt(2,15)+ROcp46_76*s.dpt(3,15);
    RLcp46_247 = ROcp46_26*s.dpt(1,15)+ROcp46_55*s.dpt(2,15)+ROcp46_86*s.dpt(3,15);
    RLcp46_347 = ROcp46_36*s.dpt(1,15)+ROcp46_96*s.dpt(3,15)+s.dpt(2,15)*S5;
    POcp46_147 = RLcp46_147+q(1);
    POcp46_247 = RLcp46_247+q(2);
    POcp46_347 = RLcp46_347+q(3);
    OMcp46_147 = OMcp46_16+ROcp46_76*qd(47);
    OMcp46_247 = OMcp46_26+ROcp46_86*qd(47);
    OMcp46_347 = OMcp46_36+ROcp46_96*qd(47);
    ORcp46_147 = OMcp46_26*RLcp46_347-OMcp46_36*RLcp46_247;
    ORcp46_247 = -(OMcp46_16*RLcp46_347-OMcp46_36*RLcp46_147);
    ORcp46_347 = OMcp46_16*RLcp46_247-OMcp46_26*RLcp46_147;
    VIcp46_147 = ORcp46_147+qd(1);
    VIcp46_247 = ORcp46_247+qd(2);
    VIcp46_347 = ORcp46_347+qd(3);
    OPcp46_147 = OPcp46_16+ROcp46_76*qdd(47)+qd(47)*(OMcp46_26*ROcp46_96-OMcp46_36*ROcp46_86);
    OPcp46_247 = OPcp46_26+ROcp46_86*qdd(47)-qd(47)*(OMcp46_16*ROcp46_96-OMcp46_36*ROcp46_76);
    OPcp46_347 = OPcp46_36+ROcp46_96*qdd(47)+qd(47)*(OMcp46_16*ROcp46_86-OMcp46_26*ROcp46_76);
    ACcp46_147 = qdd(1)+OMcp46_26*ORcp46_347-OMcp46_36*ORcp46_247+OPcp46_26*RLcp46_347-OPcp46_36*RLcp46_247;
    ACcp46_247 = qdd(2)-OMcp46_16*ORcp46_347+OMcp46_36*ORcp46_147-OPcp46_16*RLcp46_347+OPcp46_36*RLcp46_147;
    ACcp46_347 = qdd(3)+OMcp46_16*ORcp46_247-OMcp46_26*ORcp46_147+OPcp46_16*RLcp46_247-OPcp46_26*RLcp46_147;

% = = Block_1_0_0_47_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp46_147;
    sens.P(2) = POcp46_247;
    sens.P(3) = POcp46_347;
    sens.R(1,1) = ROcp46_147;
    sens.R(1,2) = ROcp46_247;
    sens.R(1,3) = ROcp46_347;
    sens.R(2,1) = ROcp46_447;
    sens.R(2,2) = ROcp46_547;
    sens.R(2,3) = ROcp46_647;
    sens.R(3,1) = ROcp46_76;
    sens.R(3,2) = ROcp46_86;
    sens.R(3,3) = ROcp46_96;
    sens.V(1) = VIcp46_147;
    sens.V(2) = VIcp46_247;
    sens.V(3) = VIcp46_347;
    sens.OM(1) = OMcp46_147;
    sens.OM(2) = OMcp46_247;
    sens.OM(3) = OMcp46_347;
    sens.A(1) = ACcp46_147;
    sens.A(2) = ACcp46_247;
    sens.A(3) = ACcp46_347;
    sens.OMP(1) = OPcp46_147;
    sens.OMP(2) = OPcp46_247;
    sens.OMP(3) = OPcp46_347;
 
% 
case 48, 


% = = Block_1_0_0_48_0_1 = = 
 
% Sensor Kinematics 


    ROcp47_45 = -S4*C5;
    ROcp47_55 = C4*C5;
    ROcp47_75 = S4*S5;
    ROcp47_85 = -C4*S5;
    ROcp47_16 = -(ROcp47_75*S6-C4*C6);
    ROcp47_26 = -(ROcp47_85*S6-S4*C6);
    ROcp47_36 = -C5*S6;
    ROcp47_76 = ROcp47_75*C6+C4*S6;
    ROcp47_86 = ROcp47_85*C6+S4*S6;
    ROcp47_96 = C5*C6;
    OMcp47_15 = qd(5)*C4;
    OMcp47_25 = qd(5)*S4;
    OMcp47_16 = OMcp47_15+ROcp47_45*qd(6);
    OMcp47_26 = OMcp47_25+ROcp47_55*qd(6);
    OMcp47_36 = qd(4)+qd(6)*S5;
    OPcp47_16 = ROcp47_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp47_25*S5-ROcp47_55*qd(4));
    OPcp47_26 = ROcp47_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp47_15*S5-ROcp47_45*qd(4));
    OPcp47_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_48_0_12 = = 
 
% Sensor Kinematics 


    ROcp47_147 = ROcp47_16*C47+ROcp47_45*S47;
    ROcp47_247 = ROcp47_26*C47+ROcp47_55*S47;
    ROcp47_347 = ROcp47_36*C47+S47*S5;
    ROcp47_447 = -(ROcp47_16*S47-ROcp47_45*C47);
    ROcp47_547 = -(ROcp47_26*S47-ROcp47_55*C47);
    ROcp47_647 = -(ROcp47_36*S47-C47*S5);
    ROcp47_148 = ROcp47_147*C48-ROcp47_76*S48;
    ROcp47_248 = ROcp47_247*C48-ROcp47_86*S48;
    ROcp47_348 = ROcp47_347*C48-ROcp47_96*S48;
    ROcp47_748 = ROcp47_147*S48+ROcp47_76*C48;
    ROcp47_848 = ROcp47_247*S48+ROcp47_86*C48;
    ROcp47_948 = ROcp47_347*S48+ROcp47_96*C48;
    RLcp47_147 = ROcp47_16*s.dpt(1,15)+ROcp47_45*s.dpt(2,15)+ROcp47_76*s.dpt(3,15);
    RLcp47_247 = ROcp47_26*s.dpt(1,15)+ROcp47_55*s.dpt(2,15)+ROcp47_86*s.dpt(3,15);
    RLcp47_347 = ROcp47_36*s.dpt(1,15)+ROcp47_96*s.dpt(3,15)+s.dpt(2,15)*S5;
    POcp47_147 = RLcp47_147+q(1);
    POcp47_247 = RLcp47_247+q(2);
    POcp47_347 = RLcp47_347+q(3);
    OMcp47_147 = OMcp47_16+ROcp47_76*qd(47);
    OMcp47_247 = OMcp47_26+ROcp47_86*qd(47);
    OMcp47_347 = OMcp47_36+ROcp47_96*qd(47);
    ORcp47_147 = OMcp47_26*RLcp47_347-OMcp47_36*RLcp47_247;
    ORcp47_247 = -(OMcp47_16*RLcp47_347-OMcp47_36*RLcp47_147);
    ORcp47_347 = OMcp47_16*RLcp47_247-OMcp47_26*RLcp47_147;
    VIcp47_147 = ORcp47_147+qd(1);
    VIcp47_247 = ORcp47_247+qd(2);
    VIcp47_347 = ORcp47_347+qd(3);
    ACcp47_147 = qdd(1)+OMcp47_26*ORcp47_347-OMcp47_36*ORcp47_247+OPcp47_26*RLcp47_347-OPcp47_36*RLcp47_247;
    ACcp47_247 = qdd(2)-OMcp47_16*ORcp47_347+OMcp47_36*ORcp47_147-OPcp47_16*RLcp47_347+OPcp47_36*RLcp47_147;
    ACcp47_347 = qdd(3)+OMcp47_16*ORcp47_247-OMcp47_26*ORcp47_147+OPcp47_16*RLcp47_247-OPcp47_26*RLcp47_147;
    OMcp47_148 = OMcp47_147+ROcp47_447*qd(48);
    OMcp47_248 = OMcp47_247+ROcp47_547*qd(48);
    OMcp47_348 = OMcp47_347+ROcp47_647*qd(48);
    OPcp47_148 = OPcp47_16+ROcp47_447*qdd(48)+ROcp47_76*qdd(47)+qd(47)*(OMcp47_26*ROcp47_96-OMcp47_36*ROcp47_86)+qd(48)*(OMcp47_247*ROcp47_647-...
 OMcp47_347*ROcp47_547);
    OPcp47_248 = OPcp47_26+ROcp47_547*qdd(48)+ROcp47_86*qdd(47)-qd(47)*(OMcp47_16*ROcp47_96-OMcp47_36*ROcp47_76)-qd(48)*(OMcp47_147*ROcp47_647-...
 OMcp47_347*ROcp47_447);
    OPcp47_348 = OPcp47_36+ROcp47_647*qdd(48)+ROcp47_96*qdd(47)+qd(47)*(OMcp47_16*ROcp47_86-OMcp47_26*ROcp47_76)+qd(48)*(OMcp47_147*ROcp47_547-...
 OMcp47_247*ROcp47_447);

% = = Block_1_0_0_48_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp47_147;
    sens.P(2) = POcp47_247;
    sens.P(3) = POcp47_347;
    sens.R(1,1) = ROcp47_148;
    sens.R(1,2) = ROcp47_248;
    sens.R(1,3) = ROcp47_348;
    sens.R(2,1) = ROcp47_447;
    sens.R(2,2) = ROcp47_547;
    sens.R(2,3) = ROcp47_647;
    sens.R(3,1) = ROcp47_748;
    sens.R(3,2) = ROcp47_848;
    sens.R(3,3) = ROcp47_948;
    sens.V(1) = VIcp47_147;
    sens.V(2) = VIcp47_247;
    sens.V(3) = VIcp47_347;
    sens.OM(1) = OMcp47_148;
    sens.OM(2) = OMcp47_248;
    sens.OM(3) = OMcp47_348;
    sens.A(1) = ACcp47_147;
    sens.A(2) = ACcp47_247;
    sens.A(3) = ACcp47_347;
    sens.OMP(1) = OPcp47_148;
    sens.OMP(2) = OPcp47_248;
    sens.OMP(3) = OPcp47_348;
 
% 
case 49, 


% = = Block_1_0_0_49_0_1 = = 
 
% Sensor Kinematics 


    ROcp48_45 = -S4*C5;
    ROcp48_55 = C4*C5;
    ROcp48_75 = S4*S5;
    ROcp48_85 = -C4*S5;
    ROcp48_16 = -(ROcp48_75*S6-C4*C6);
    ROcp48_26 = -(ROcp48_85*S6-S4*C6);
    ROcp48_36 = -C5*S6;
    ROcp48_76 = ROcp48_75*C6+C4*S6;
    ROcp48_86 = ROcp48_85*C6+S4*S6;
    ROcp48_96 = C5*C6;
    OMcp48_15 = qd(5)*C4;
    OMcp48_25 = qd(5)*S4;
    OMcp48_16 = OMcp48_15+ROcp48_45*qd(6);
    OMcp48_26 = OMcp48_25+ROcp48_55*qd(6);
    OMcp48_36 = qd(4)+qd(6)*S5;
    OPcp48_16 = ROcp48_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp48_25*S5-ROcp48_55*qd(4));
    OPcp48_26 = ROcp48_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp48_15*S5-ROcp48_45*qd(4));
    OPcp48_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_49_0_12 = = 
 
% Sensor Kinematics 


    ROcp48_147 = ROcp48_16*C47+ROcp48_45*S47;
    ROcp48_247 = ROcp48_26*C47+ROcp48_55*S47;
    ROcp48_347 = ROcp48_36*C47+S47*S5;
    ROcp48_447 = -(ROcp48_16*S47-ROcp48_45*C47);
    ROcp48_547 = -(ROcp48_26*S47-ROcp48_55*C47);
    ROcp48_647 = -(ROcp48_36*S47-C47*S5);
    ROcp48_148 = ROcp48_147*C48-ROcp48_76*S48;
    ROcp48_248 = ROcp48_247*C48-ROcp48_86*S48;
    ROcp48_348 = ROcp48_347*C48-ROcp48_96*S48;
    ROcp48_748 = ROcp48_147*S48+ROcp48_76*C48;
    ROcp48_848 = ROcp48_247*S48+ROcp48_86*C48;
    ROcp48_948 = ROcp48_347*S48+ROcp48_96*C48;
    ROcp48_449 = ROcp48_447*C49+ROcp48_748*S49;
    ROcp48_549 = ROcp48_547*C49+ROcp48_848*S49;
    ROcp48_649 = ROcp48_647*C49+ROcp48_948*S49;
    ROcp48_749 = -(ROcp48_447*S49-ROcp48_748*C49);
    ROcp48_849 = -(ROcp48_547*S49-ROcp48_848*C49);
    ROcp48_949 = -(ROcp48_647*S49-ROcp48_948*C49);
    RLcp48_147 = ROcp48_16*s.dpt(1,15)+ROcp48_45*s.dpt(2,15)+ROcp48_76*s.dpt(3,15);
    RLcp48_247 = ROcp48_26*s.dpt(1,15)+ROcp48_55*s.dpt(2,15)+ROcp48_86*s.dpt(3,15);
    RLcp48_347 = ROcp48_36*s.dpt(1,15)+ROcp48_96*s.dpt(3,15)+s.dpt(2,15)*S5;
    POcp48_147 = RLcp48_147+q(1);
    POcp48_247 = RLcp48_247+q(2);
    POcp48_347 = RLcp48_347+q(3);
    OMcp48_147 = OMcp48_16+ROcp48_76*qd(47);
    OMcp48_247 = OMcp48_26+ROcp48_86*qd(47);
    OMcp48_347 = OMcp48_36+ROcp48_96*qd(47);
    ORcp48_147 = OMcp48_26*RLcp48_347-OMcp48_36*RLcp48_247;
    ORcp48_247 = -(OMcp48_16*RLcp48_347-OMcp48_36*RLcp48_147);
    ORcp48_347 = OMcp48_16*RLcp48_247-OMcp48_26*RLcp48_147;
    VIcp48_147 = ORcp48_147+qd(1);
    VIcp48_247 = ORcp48_247+qd(2);
    VIcp48_347 = ORcp48_347+qd(3);
    ACcp48_147 = qdd(1)+OMcp48_26*ORcp48_347-OMcp48_36*ORcp48_247+OPcp48_26*RLcp48_347-OPcp48_36*RLcp48_247;
    ACcp48_247 = qdd(2)-OMcp48_16*ORcp48_347+OMcp48_36*ORcp48_147-OPcp48_16*RLcp48_347+OPcp48_36*RLcp48_147;
    ACcp48_347 = qdd(3)+OMcp48_16*ORcp48_247-OMcp48_26*ORcp48_147+OPcp48_16*RLcp48_247-OPcp48_26*RLcp48_147;
    OMcp48_148 = OMcp48_147+ROcp48_447*qd(48);
    OMcp48_248 = OMcp48_247+ROcp48_547*qd(48);
    OMcp48_348 = OMcp48_347+ROcp48_647*qd(48);
    OMcp48_149 = OMcp48_148+ROcp48_148*qd(49);
    OMcp48_249 = OMcp48_248+ROcp48_248*qd(49);
    OMcp48_349 = OMcp48_348+ROcp48_348*qd(49);
    OPcp48_149 = OPcp48_16+ROcp48_148*qdd(49)+ROcp48_447*qdd(48)+ROcp48_76*qdd(47)+qd(47)*(OMcp48_26*ROcp48_96-OMcp48_36*ROcp48_86)+qd(48)*(...
 OMcp48_247*ROcp48_647-OMcp48_347*ROcp48_547)+qd(49)*(OMcp48_248*ROcp48_348-OMcp48_348*ROcp48_248);
    OPcp48_249 = OPcp48_26+ROcp48_248*qdd(49)+ROcp48_547*qdd(48)+ROcp48_86*qdd(47)-qd(47)*(OMcp48_16*ROcp48_96-OMcp48_36*ROcp48_76)-qd(48)*(...
 OMcp48_147*ROcp48_647-OMcp48_347*ROcp48_447)-qd(49)*(OMcp48_148*ROcp48_348-OMcp48_348*ROcp48_148);
    OPcp48_349 = OPcp48_36+ROcp48_348*qdd(49)+ROcp48_647*qdd(48)+ROcp48_96*qdd(47)+qd(47)*(OMcp48_16*ROcp48_86-OMcp48_26*ROcp48_76)+qd(48)*(...
 OMcp48_147*ROcp48_547-OMcp48_247*ROcp48_447)+qd(49)*(OMcp48_148*ROcp48_248-OMcp48_248*ROcp48_148);

% = = Block_1_0_0_49_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp48_147;
    sens.P(2) = POcp48_247;
    sens.P(3) = POcp48_347;
    sens.R(1,1) = ROcp48_148;
    sens.R(1,2) = ROcp48_248;
    sens.R(1,3) = ROcp48_348;
    sens.R(2,1) = ROcp48_449;
    sens.R(2,2) = ROcp48_549;
    sens.R(2,3) = ROcp48_649;
    sens.R(3,1) = ROcp48_749;
    sens.R(3,2) = ROcp48_849;
    sens.R(3,3) = ROcp48_949;
    sens.V(1) = VIcp48_147;
    sens.V(2) = VIcp48_247;
    sens.V(3) = VIcp48_347;
    sens.OM(1) = OMcp48_149;
    sens.OM(2) = OMcp48_249;
    sens.OM(3) = OMcp48_349;
    sens.A(1) = ACcp48_147;
    sens.A(2) = ACcp48_247;
    sens.A(3) = ACcp48_347;
    sens.OMP(1) = OPcp48_149;
    sens.OMP(2) = OPcp48_249;
    sens.OMP(3) = OPcp48_349;
 
% 
case 50, 


% = = Block_1_0_0_50_0_1 = = 
 
% Sensor Kinematics 


    ROcp49_45 = -S4*C5;
    ROcp49_55 = C4*C5;
    ROcp49_75 = S4*S5;
    ROcp49_85 = -C4*S5;
    ROcp49_16 = -(ROcp49_75*S6-C4*C6);
    ROcp49_26 = -(ROcp49_85*S6-S4*C6);
    ROcp49_36 = -C5*S6;
    ROcp49_76 = ROcp49_75*C6+C4*S6;
    ROcp49_86 = ROcp49_85*C6+S4*S6;
    ROcp49_96 = C5*C6;
    OMcp49_15 = qd(5)*C4;
    OMcp49_25 = qd(5)*S4;
    OMcp49_16 = OMcp49_15+ROcp49_45*qd(6);
    OMcp49_26 = OMcp49_25+ROcp49_55*qd(6);
    OMcp49_36 = qd(4)+qd(6)*S5;
    OPcp49_16 = ROcp49_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp49_25*S5-ROcp49_55*qd(4));
    OPcp49_26 = ROcp49_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp49_15*S5-ROcp49_45*qd(4));
    OPcp49_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_50_0_12 = = 
 
% Sensor Kinematics 


    ROcp49_147 = ROcp49_16*C47+ROcp49_45*S47;
    ROcp49_247 = ROcp49_26*C47+ROcp49_55*S47;
    ROcp49_347 = ROcp49_36*C47+S47*S5;
    ROcp49_447 = -(ROcp49_16*S47-ROcp49_45*C47);
    ROcp49_547 = -(ROcp49_26*S47-ROcp49_55*C47);
    ROcp49_647 = -(ROcp49_36*S47-C47*S5);
    ROcp49_148 = ROcp49_147*C48-ROcp49_76*S48;
    ROcp49_248 = ROcp49_247*C48-ROcp49_86*S48;
    ROcp49_348 = ROcp49_347*C48-ROcp49_96*S48;
    ROcp49_748 = ROcp49_147*S48+ROcp49_76*C48;
    ROcp49_848 = ROcp49_247*S48+ROcp49_86*C48;
    ROcp49_948 = ROcp49_347*S48+ROcp49_96*C48;
    ROcp49_449 = ROcp49_447*C49+ROcp49_748*S49;
    ROcp49_549 = ROcp49_547*C49+ROcp49_848*S49;
    ROcp49_649 = ROcp49_647*C49+ROcp49_948*S49;
    ROcp49_749 = -(ROcp49_447*S49-ROcp49_748*C49);
    ROcp49_849 = -(ROcp49_547*S49-ROcp49_848*C49);
    ROcp49_949 = -(ROcp49_647*S49-ROcp49_948*C49);
    ROcp49_450 = ROcp49_449*C50+ROcp49_749*S50;
    ROcp49_550 = ROcp49_549*C50+ROcp49_849*S50;
    ROcp49_650 = ROcp49_649*C50+ROcp49_949*S50;
    ROcp49_750 = -(ROcp49_449*S50-ROcp49_749*C50);
    ROcp49_850 = -(ROcp49_549*S50-ROcp49_849*C50);
    ROcp49_950 = -(ROcp49_649*S50-ROcp49_949*C50);
    RLcp49_147 = ROcp49_16*s.dpt(1,15)+ROcp49_45*s.dpt(2,15)+ROcp49_76*s.dpt(3,15);
    RLcp49_247 = ROcp49_26*s.dpt(1,15)+ROcp49_55*s.dpt(2,15)+ROcp49_86*s.dpt(3,15);
    RLcp49_347 = ROcp49_36*s.dpt(1,15)+ROcp49_96*s.dpt(3,15)+s.dpt(2,15)*S5;
    OMcp49_147 = OMcp49_16+ROcp49_76*qd(47);
    OMcp49_247 = OMcp49_26+ROcp49_86*qd(47);
    OMcp49_347 = OMcp49_36+ROcp49_96*qd(47);
    ORcp49_147 = OMcp49_26*RLcp49_347-OMcp49_36*RLcp49_247;
    ORcp49_247 = -(OMcp49_16*RLcp49_347-OMcp49_36*RLcp49_147);
    ORcp49_347 = OMcp49_16*RLcp49_247-OMcp49_26*RLcp49_147;
    OMcp49_148 = OMcp49_147+ROcp49_447*qd(48);
    OMcp49_248 = OMcp49_247+ROcp49_547*qd(48);
    OMcp49_348 = OMcp49_347+ROcp49_647*qd(48);
    OMcp49_149 = OMcp49_148+ROcp49_148*qd(49);
    OMcp49_249 = OMcp49_248+ROcp49_248*qd(49);
    OMcp49_349 = OMcp49_348+ROcp49_348*qd(49);
    OPcp49_149 = OPcp49_16+ROcp49_148*qdd(49)+ROcp49_447*qdd(48)+ROcp49_76*qdd(47)+qd(47)*(OMcp49_26*ROcp49_96-OMcp49_36*ROcp49_86)+qd(48)*(...
 OMcp49_247*ROcp49_647-OMcp49_347*ROcp49_547)+qd(49)*(OMcp49_248*ROcp49_348-OMcp49_348*ROcp49_248);
    OPcp49_249 = OPcp49_26+ROcp49_248*qdd(49)+ROcp49_547*qdd(48)+ROcp49_86*qdd(47)-qd(47)*(OMcp49_16*ROcp49_96-OMcp49_36*ROcp49_76)-qd(48)*(...
 OMcp49_147*ROcp49_647-OMcp49_347*ROcp49_447)-qd(49)*(OMcp49_148*ROcp49_348-OMcp49_348*ROcp49_148);
    OPcp49_349 = OPcp49_36+ROcp49_348*qdd(49)+ROcp49_647*qdd(48)+ROcp49_96*qdd(47)+qd(47)*(OMcp49_16*ROcp49_86-OMcp49_26*ROcp49_76)+qd(48)*(...
 OMcp49_147*ROcp49_547-OMcp49_247*ROcp49_447)+qd(49)*(OMcp49_148*ROcp49_248-OMcp49_248*ROcp49_148);
    RLcp49_150 = ROcp49_449*s.dpt(2,56);
    RLcp49_250 = ROcp49_549*s.dpt(2,56);
    RLcp49_350 = ROcp49_649*s.dpt(2,56);
    POcp49_150 = RLcp49_147+RLcp49_150+q(1);
    POcp49_250 = RLcp49_247+RLcp49_250+q(2);
    POcp49_350 = RLcp49_347+RLcp49_350+q(3);
    OMcp49_150 = OMcp49_149+ROcp49_148*qd(50);
    OMcp49_250 = OMcp49_249+ROcp49_248*qd(50);
    OMcp49_350 = OMcp49_349+ROcp49_348*qd(50);
    ORcp49_150 = OMcp49_249*RLcp49_350-OMcp49_349*RLcp49_250;
    ORcp49_250 = -(OMcp49_149*RLcp49_350-OMcp49_349*RLcp49_150);
    ORcp49_350 = OMcp49_149*RLcp49_250-OMcp49_249*RLcp49_150;
    VIcp49_150 = ORcp49_147+ORcp49_150+qd(1);
    VIcp49_250 = ORcp49_247+ORcp49_250+qd(2);
    VIcp49_350 = ORcp49_347+ORcp49_350+qd(3);
    OPcp49_150 = OPcp49_149+ROcp49_148*qdd(50)+qd(50)*(OMcp49_249*ROcp49_348-OMcp49_349*ROcp49_248);
    OPcp49_250 = OPcp49_249+ROcp49_248*qdd(50)-qd(50)*(OMcp49_149*ROcp49_348-OMcp49_349*ROcp49_148);
    OPcp49_350 = OPcp49_349+ROcp49_348*qdd(50)+qd(50)*(OMcp49_149*ROcp49_248-OMcp49_249*ROcp49_148);
    ACcp49_150 = qdd(1)+OMcp49_249*ORcp49_350+OMcp49_26*ORcp49_347-OMcp49_349*ORcp49_250-OMcp49_36*ORcp49_247+OPcp49_249*RLcp49_350+OPcp49_26*...
 RLcp49_347-OPcp49_349*RLcp49_250-OPcp49_36*RLcp49_247;
    ACcp49_250 = qdd(2)-OMcp49_149*ORcp49_350-OMcp49_16*ORcp49_347+OMcp49_349*ORcp49_150+OMcp49_36*ORcp49_147-OPcp49_149*RLcp49_350-OPcp49_16*...
 RLcp49_347+OPcp49_349*RLcp49_150+OPcp49_36*RLcp49_147;
    ACcp49_350 = qdd(3)+OMcp49_149*ORcp49_250+OMcp49_16*ORcp49_247-OMcp49_249*ORcp49_150-OMcp49_26*ORcp49_147+OPcp49_149*RLcp49_250+OPcp49_16*...
 RLcp49_247-OPcp49_249*RLcp49_150-OPcp49_26*RLcp49_147;

% = = Block_1_0_0_50_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp49_150;
    sens.P(2) = POcp49_250;
    sens.P(3) = POcp49_350;
    sens.R(1,1) = ROcp49_148;
    sens.R(1,2) = ROcp49_248;
    sens.R(1,3) = ROcp49_348;
    sens.R(2,1) = ROcp49_450;
    sens.R(2,2) = ROcp49_550;
    sens.R(2,3) = ROcp49_650;
    sens.R(3,1) = ROcp49_750;
    sens.R(3,2) = ROcp49_850;
    sens.R(3,3) = ROcp49_950;
    sens.V(1) = VIcp49_150;
    sens.V(2) = VIcp49_250;
    sens.V(3) = VIcp49_350;
    sens.OM(1) = OMcp49_150;
    sens.OM(2) = OMcp49_250;
    sens.OM(3) = OMcp49_350;
    sens.A(1) = ACcp49_150;
    sens.A(2) = ACcp49_250;
    sens.A(3) = ACcp49_350;
    sens.OMP(1) = OPcp49_150;
    sens.OMP(2) = OPcp49_250;
    sens.OMP(3) = OPcp49_350;
 
% 
case 51, 


% = = Block_1_0_0_51_0_1 = = 
 
% Sensor Kinematics 


    ROcp50_45 = -S4*C5;
    ROcp50_55 = C4*C5;
    ROcp50_75 = S4*S5;
    ROcp50_85 = -C4*S5;
    ROcp50_16 = -(ROcp50_75*S6-C4*C6);
    ROcp50_26 = -(ROcp50_85*S6-S4*C6);
    ROcp50_36 = -C5*S6;
    ROcp50_76 = ROcp50_75*C6+C4*S6;
    ROcp50_86 = ROcp50_85*C6+S4*S6;
    ROcp50_96 = C5*C6;
    OMcp50_15 = qd(5)*C4;
    OMcp50_25 = qd(5)*S4;
    OMcp50_16 = OMcp50_15+ROcp50_45*qd(6);
    OMcp50_26 = OMcp50_25+ROcp50_55*qd(6);
    OMcp50_36 = qd(4)+qd(6)*S5;
    OPcp50_16 = ROcp50_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp50_25*S5-ROcp50_55*qd(4));
    OPcp50_26 = ROcp50_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp50_15*S5-ROcp50_45*qd(4));
    OPcp50_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_51_0_12 = = 
 
% Sensor Kinematics 


    ROcp50_147 = ROcp50_16*C47+ROcp50_45*S47;
    ROcp50_247 = ROcp50_26*C47+ROcp50_55*S47;
    ROcp50_347 = ROcp50_36*C47+S47*S5;
    ROcp50_447 = -(ROcp50_16*S47-ROcp50_45*C47);
    ROcp50_547 = -(ROcp50_26*S47-ROcp50_55*C47);
    ROcp50_647 = -(ROcp50_36*S47-C47*S5);
    ROcp50_148 = ROcp50_147*C48-ROcp50_76*S48;
    ROcp50_248 = ROcp50_247*C48-ROcp50_86*S48;
    ROcp50_348 = ROcp50_347*C48-ROcp50_96*S48;
    ROcp50_748 = ROcp50_147*S48+ROcp50_76*C48;
    ROcp50_848 = ROcp50_247*S48+ROcp50_86*C48;
    ROcp50_948 = ROcp50_347*S48+ROcp50_96*C48;
    ROcp50_449 = ROcp50_447*C49+ROcp50_748*S49;
    ROcp50_549 = ROcp50_547*C49+ROcp50_848*S49;
    ROcp50_649 = ROcp50_647*C49+ROcp50_948*S49;
    ROcp50_749 = -(ROcp50_447*S49-ROcp50_748*C49);
    ROcp50_849 = -(ROcp50_547*S49-ROcp50_848*C49);
    ROcp50_949 = -(ROcp50_647*S49-ROcp50_948*C49);
    ROcp50_450 = ROcp50_449*C50+ROcp50_749*S50;
    ROcp50_550 = ROcp50_549*C50+ROcp50_849*S50;
    ROcp50_650 = ROcp50_649*C50+ROcp50_949*S50;
    ROcp50_750 = -(ROcp50_449*S50-ROcp50_749*C50);
    ROcp50_850 = -(ROcp50_549*S50-ROcp50_849*C50);
    ROcp50_950 = -(ROcp50_649*S50-ROcp50_949*C50);
    ROcp50_151 = ROcp50_148*C51-ROcp50_750*S51;
    ROcp50_251 = ROcp50_248*C51-ROcp50_850*S51;
    ROcp50_351 = ROcp50_348*C51-ROcp50_950*S51;
    ROcp50_751 = ROcp50_148*S51+ROcp50_750*C51;
    ROcp50_851 = ROcp50_248*S51+ROcp50_850*C51;
    ROcp50_951 = ROcp50_348*S51+ROcp50_950*C51;
    RLcp50_147 = ROcp50_16*s.dpt(1,15)+ROcp50_45*s.dpt(2,15)+ROcp50_76*s.dpt(3,15);
    RLcp50_247 = ROcp50_26*s.dpt(1,15)+ROcp50_55*s.dpt(2,15)+ROcp50_86*s.dpt(3,15);
    RLcp50_347 = ROcp50_36*s.dpt(1,15)+ROcp50_96*s.dpt(3,15)+s.dpt(2,15)*S5;
    OMcp50_147 = OMcp50_16+ROcp50_76*qd(47);
    OMcp50_247 = OMcp50_26+ROcp50_86*qd(47);
    OMcp50_347 = OMcp50_36+ROcp50_96*qd(47);
    ORcp50_147 = OMcp50_26*RLcp50_347-OMcp50_36*RLcp50_247;
    ORcp50_247 = -(OMcp50_16*RLcp50_347-OMcp50_36*RLcp50_147);
    ORcp50_347 = OMcp50_16*RLcp50_247-OMcp50_26*RLcp50_147;
    OMcp50_148 = OMcp50_147+ROcp50_447*qd(48);
    OMcp50_248 = OMcp50_247+ROcp50_547*qd(48);
    OMcp50_348 = OMcp50_347+ROcp50_647*qd(48);
    OMcp50_149 = OMcp50_148+ROcp50_148*qd(49);
    OMcp50_249 = OMcp50_248+ROcp50_248*qd(49);
    OMcp50_349 = OMcp50_348+ROcp50_348*qd(49);
    OPcp50_149 = OPcp50_16+ROcp50_148*qdd(49)+ROcp50_447*qdd(48)+ROcp50_76*qdd(47)+qd(47)*(OMcp50_26*ROcp50_96-OMcp50_36*ROcp50_86)+qd(48)*(...
 OMcp50_247*ROcp50_647-OMcp50_347*ROcp50_547)+qd(49)*(OMcp50_248*ROcp50_348-OMcp50_348*ROcp50_248);
    OPcp50_249 = OPcp50_26+ROcp50_248*qdd(49)+ROcp50_547*qdd(48)+ROcp50_86*qdd(47)-qd(47)*(OMcp50_16*ROcp50_96-OMcp50_36*ROcp50_76)-qd(48)*(...
 OMcp50_147*ROcp50_647-OMcp50_347*ROcp50_447)-qd(49)*(OMcp50_148*ROcp50_348-OMcp50_348*ROcp50_148);
    OPcp50_349 = OPcp50_36+ROcp50_348*qdd(49)+ROcp50_647*qdd(48)+ROcp50_96*qdd(47)+qd(47)*(OMcp50_16*ROcp50_86-OMcp50_26*ROcp50_76)+qd(48)*(...
 OMcp50_147*ROcp50_547-OMcp50_247*ROcp50_447)+qd(49)*(OMcp50_148*ROcp50_248-OMcp50_248*ROcp50_148);
    RLcp50_150 = ROcp50_449*s.dpt(2,56);
    RLcp50_250 = ROcp50_549*s.dpt(2,56);
    RLcp50_350 = ROcp50_649*s.dpt(2,56);
    POcp50_150 = RLcp50_147+RLcp50_150+q(1);
    POcp50_250 = RLcp50_247+RLcp50_250+q(2);
    POcp50_350 = RLcp50_347+RLcp50_350+q(3);
    OMcp50_150 = OMcp50_149+ROcp50_148*qd(50);
    OMcp50_250 = OMcp50_249+ROcp50_248*qd(50);
    OMcp50_350 = OMcp50_349+ROcp50_348*qd(50);
    ORcp50_150 = OMcp50_249*RLcp50_350-OMcp50_349*RLcp50_250;
    ORcp50_250 = -(OMcp50_149*RLcp50_350-OMcp50_349*RLcp50_150);
    ORcp50_350 = OMcp50_149*RLcp50_250-OMcp50_249*RLcp50_150;
    VIcp50_150 = ORcp50_147+ORcp50_150+qd(1);
    VIcp50_250 = ORcp50_247+ORcp50_250+qd(2);
    VIcp50_350 = ORcp50_347+ORcp50_350+qd(3);
    ACcp50_150 = qdd(1)+OMcp50_249*ORcp50_350+OMcp50_26*ORcp50_347-OMcp50_349*ORcp50_250-OMcp50_36*ORcp50_247+OPcp50_249*RLcp50_350+OPcp50_26*...
 RLcp50_347-OPcp50_349*RLcp50_250-OPcp50_36*RLcp50_247;
    ACcp50_250 = qdd(2)-OMcp50_149*ORcp50_350-OMcp50_16*ORcp50_347+OMcp50_349*ORcp50_150+OMcp50_36*ORcp50_147-OPcp50_149*RLcp50_350-OPcp50_16*...
 RLcp50_347+OPcp50_349*RLcp50_150+OPcp50_36*RLcp50_147;
    ACcp50_350 = qdd(3)+OMcp50_149*ORcp50_250+OMcp50_16*ORcp50_247-OMcp50_249*ORcp50_150-OMcp50_26*ORcp50_147+OPcp50_149*RLcp50_250+OPcp50_16*...
 RLcp50_247-OPcp50_249*RLcp50_150-OPcp50_26*RLcp50_147;
    OMcp50_151 = OMcp50_150+ROcp50_450*qd(51);
    OMcp50_251 = OMcp50_250+ROcp50_550*qd(51);
    OMcp50_351 = OMcp50_350+ROcp50_650*qd(51);
    OPcp50_151 = OPcp50_149+ROcp50_148*qdd(50)+ROcp50_450*qdd(51)+qd(50)*(OMcp50_249*ROcp50_348-OMcp50_349*ROcp50_248)+qd(51)*(OMcp50_250*...
 ROcp50_650-OMcp50_350*ROcp50_550);
    OPcp50_251 = OPcp50_249+ROcp50_248*qdd(50)+ROcp50_550*qdd(51)-qd(50)*(OMcp50_149*ROcp50_348-OMcp50_349*ROcp50_148)-qd(51)*(OMcp50_150*...
 ROcp50_650-OMcp50_350*ROcp50_450);
    OPcp50_351 = OPcp50_349+ROcp50_348*qdd(50)+ROcp50_650*qdd(51)+qd(50)*(OMcp50_149*ROcp50_248-OMcp50_249*ROcp50_148)+qd(51)*(OMcp50_150*...
 ROcp50_550-OMcp50_250*ROcp50_450);

% = = Block_1_0_0_51_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp50_150;
    sens.P(2) = POcp50_250;
    sens.P(3) = POcp50_350;
    sens.R(1,1) = ROcp50_151;
    sens.R(1,2) = ROcp50_251;
    sens.R(1,3) = ROcp50_351;
    sens.R(2,1) = ROcp50_450;
    sens.R(2,2) = ROcp50_550;
    sens.R(2,3) = ROcp50_650;
    sens.R(3,1) = ROcp50_751;
    sens.R(3,2) = ROcp50_851;
    sens.R(3,3) = ROcp50_951;
    sens.V(1) = VIcp50_150;
    sens.V(2) = VIcp50_250;
    sens.V(3) = VIcp50_350;
    sens.OM(1) = OMcp50_151;
    sens.OM(2) = OMcp50_251;
    sens.OM(3) = OMcp50_351;
    sens.A(1) = ACcp50_150;
    sens.A(2) = ACcp50_250;
    sens.A(3) = ACcp50_350;
    sens.OMP(1) = OPcp50_151;
    sens.OMP(2) = OPcp50_251;
    sens.OMP(3) = OPcp50_351;
 
% 
case 52, 


% = = Block_1_0_0_52_0_1 = = 
 
% Sensor Kinematics 


    ROcp51_45 = -S4*C5;
    ROcp51_55 = C4*C5;
    ROcp51_75 = S4*S5;
    ROcp51_85 = -C4*S5;
    ROcp51_16 = -(ROcp51_75*S6-C4*C6);
    ROcp51_26 = -(ROcp51_85*S6-S4*C6);
    ROcp51_36 = -C5*S6;
    ROcp51_76 = ROcp51_75*C6+C4*S6;
    ROcp51_86 = ROcp51_85*C6+S4*S6;
    ROcp51_96 = C5*C6;
    OMcp51_15 = qd(5)*C4;
    OMcp51_25 = qd(5)*S4;
    OMcp51_16 = OMcp51_15+ROcp51_45*qd(6);
    OMcp51_26 = OMcp51_25+ROcp51_55*qd(6);
    OMcp51_36 = qd(4)+qd(6)*S5;
    OPcp51_16 = ROcp51_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp51_25*S5-ROcp51_55*qd(4));
    OPcp51_26 = ROcp51_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp51_15*S5-ROcp51_45*qd(4));
    OPcp51_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_52_0_12 = = 
 
% Sensor Kinematics 


    ROcp51_147 = ROcp51_16*C47+ROcp51_45*S47;
    ROcp51_247 = ROcp51_26*C47+ROcp51_55*S47;
    ROcp51_347 = ROcp51_36*C47+S47*S5;
    ROcp51_447 = -(ROcp51_16*S47-ROcp51_45*C47);
    ROcp51_547 = -(ROcp51_26*S47-ROcp51_55*C47);
    ROcp51_647 = -(ROcp51_36*S47-C47*S5);
    ROcp51_148 = ROcp51_147*C48-ROcp51_76*S48;
    ROcp51_248 = ROcp51_247*C48-ROcp51_86*S48;
    ROcp51_348 = ROcp51_347*C48-ROcp51_96*S48;
    ROcp51_748 = ROcp51_147*S48+ROcp51_76*C48;
    ROcp51_848 = ROcp51_247*S48+ROcp51_86*C48;
    ROcp51_948 = ROcp51_347*S48+ROcp51_96*C48;
    ROcp51_449 = ROcp51_447*C49+ROcp51_748*S49;
    ROcp51_549 = ROcp51_547*C49+ROcp51_848*S49;
    ROcp51_649 = ROcp51_647*C49+ROcp51_948*S49;
    ROcp51_749 = -(ROcp51_447*S49-ROcp51_748*C49);
    ROcp51_849 = -(ROcp51_547*S49-ROcp51_848*C49);
    ROcp51_949 = -(ROcp51_647*S49-ROcp51_948*C49);
    ROcp51_450 = ROcp51_449*C50+ROcp51_749*S50;
    ROcp51_550 = ROcp51_549*C50+ROcp51_849*S50;
    ROcp51_650 = ROcp51_649*C50+ROcp51_949*S50;
    ROcp51_750 = -(ROcp51_449*S50-ROcp51_749*C50);
    ROcp51_850 = -(ROcp51_549*S50-ROcp51_849*C50);
    ROcp51_950 = -(ROcp51_649*S50-ROcp51_949*C50);
    ROcp51_151 = ROcp51_148*C51-ROcp51_750*S51;
    ROcp51_251 = ROcp51_248*C51-ROcp51_850*S51;
    ROcp51_351 = ROcp51_348*C51-ROcp51_950*S51;
    ROcp51_751 = ROcp51_148*S51+ROcp51_750*C51;
    ROcp51_851 = ROcp51_248*S51+ROcp51_850*C51;
    ROcp51_951 = ROcp51_348*S51+ROcp51_950*C51;
    ROcp51_152 = ROcp51_151*C52+ROcp51_450*S52;
    ROcp51_252 = ROcp51_251*C52+ROcp51_550*S52;
    ROcp51_352 = ROcp51_351*C52+ROcp51_650*S52;
    ROcp51_452 = -(ROcp51_151*S52-ROcp51_450*C52);
    ROcp51_552 = -(ROcp51_251*S52-ROcp51_550*C52);
    ROcp51_652 = -(ROcp51_351*S52-ROcp51_650*C52);
    RLcp51_147 = ROcp51_16*s.dpt(1,15)+ROcp51_45*s.dpt(2,15)+ROcp51_76*s.dpt(3,15);
    RLcp51_247 = ROcp51_26*s.dpt(1,15)+ROcp51_55*s.dpt(2,15)+ROcp51_86*s.dpt(3,15);
    RLcp51_347 = ROcp51_36*s.dpt(1,15)+ROcp51_96*s.dpt(3,15)+s.dpt(2,15)*S5;
    OMcp51_147 = OMcp51_16+ROcp51_76*qd(47);
    OMcp51_247 = OMcp51_26+ROcp51_86*qd(47);
    OMcp51_347 = OMcp51_36+ROcp51_96*qd(47);
    ORcp51_147 = OMcp51_26*RLcp51_347-OMcp51_36*RLcp51_247;
    ORcp51_247 = -(OMcp51_16*RLcp51_347-OMcp51_36*RLcp51_147);
    ORcp51_347 = OMcp51_16*RLcp51_247-OMcp51_26*RLcp51_147;
    OMcp51_148 = OMcp51_147+ROcp51_447*qd(48);
    OMcp51_248 = OMcp51_247+ROcp51_547*qd(48);
    OMcp51_348 = OMcp51_347+ROcp51_647*qd(48);
    OMcp51_149 = OMcp51_148+ROcp51_148*qd(49);
    OMcp51_249 = OMcp51_248+ROcp51_248*qd(49);
    OMcp51_349 = OMcp51_348+ROcp51_348*qd(49);
    OPcp51_149 = OPcp51_16+ROcp51_148*qdd(49)+ROcp51_447*qdd(48)+ROcp51_76*qdd(47)+qd(47)*(OMcp51_26*ROcp51_96-OMcp51_36*ROcp51_86)+qd(48)*(...
 OMcp51_247*ROcp51_647-OMcp51_347*ROcp51_547)+qd(49)*(OMcp51_248*ROcp51_348-OMcp51_348*ROcp51_248);
    OPcp51_249 = OPcp51_26+ROcp51_248*qdd(49)+ROcp51_547*qdd(48)+ROcp51_86*qdd(47)-qd(47)*(OMcp51_16*ROcp51_96-OMcp51_36*ROcp51_76)-qd(48)*(...
 OMcp51_147*ROcp51_647-OMcp51_347*ROcp51_447)-qd(49)*(OMcp51_148*ROcp51_348-OMcp51_348*ROcp51_148);
    OPcp51_349 = OPcp51_36+ROcp51_348*qdd(49)+ROcp51_647*qdd(48)+ROcp51_96*qdd(47)+qd(47)*(OMcp51_16*ROcp51_86-OMcp51_26*ROcp51_76)+qd(48)*(...
 OMcp51_147*ROcp51_547-OMcp51_247*ROcp51_447)+qd(49)*(OMcp51_148*ROcp51_248-OMcp51_248*ROcp51_148);
    RLcp51_150 = ROcp51_449*s.dpt(2,56);
    RLcp51_250 = ROcp51_549*s.dpt(2,56);
    RLcp51_350 = ROcp51_649*s.dpt(2,56);
    POcp51_150 = RLcp51_147+RLcp51_150+q(1);
    POcp51_250 = RLcp51_247+RLcp51_250+q(2);
    POcp51_350 = RLcp51_347+RLcp51_350+q(3);
    OMcp51_150 = OMcp51_149+ROcp51_148*qd(50);
    OMcp51_250 = OMcp51_249+ROcp51_248*qd(50);
    OMcp51_350 = OMcp51_349+ROcp51_348*qd(50);
    ORcp51_150 = OMcp51_249*RLcp51_350-OMcp51_349*RLcp51_250;
    ORcp51_250 = -(OMcp51_149*RLcp51_350-OMcp51_349*RLcp51_150);
    ORcp51_350 = OMcp51_149*RLcp51_250-OMcp51_249*RLcp51_150;
    VIcp51_150 = ORcp51_147+ORcp51_150+qd(1);
    VIcp51_250 = ORcp51_247+ORcp51_250+qd(2);
    VIcp51_350 = ORcp51_347+ORcp51_350+qd(3);
    ACcp51_150 = qdd(1)+OMcp51_249*ORcp51_350+OMcp51_26*ORcp51_347-OMcp51_349*ORcp51_250-OMcp51_36*ORcp51_247+OPcp51_249*RLcp51_350+OPcp51_26*...
 RLcp51_347-OPcp51_349*RLcp51_250-OPcp51_36*RLcp51_247;
    ACcp51_250 = qdd(2)-OMcp51_149*ORcp51_350-OMcp51_16*ORcp51_347+OMcp51_349*ORcp51_150+OMcp51_36*ORcp51_147-OPcp51_149*RLcp51_350-OPcp51_16*...
 RLcp51_347+OPcp51_349*RLcp51_150+OPcp51_36*RLcp51_147;
    ACcp51_350 = qdd(3)+OMcp51_149*ORcp51_250+OMcp51_16*ORcp51_247-OMcp51_249*ORcp51_150-OMcp51_26*ORcp51_147+OPcp51_149*RLcp51_250+OPcp51_16*...
 RLcp51_247-OPcp51_249*RLcp51_150-OPcp51_26*RLcp51_147;
    OMcp51_151 = OMcp51_150+ROcp51_450*qd(51);
    OMcp51_251 = OMcp51_250+ROcp51_550*qd(51);
    OMcp51_351 = OMcp51_350+ROcp51_650*qd(51);
    OMcp51_152 = OMcp51_151+ROcp51_751*qd(52);
    OMcp51_252 = OMcp51_251+ROcp51_851*qd(52);
    OMcp51_352 = OMcp51_351+ROcp51_951*qd(52);
    OPcp51_152 = OPcp51_149+ROcp51_148*qdd(50)+ROcp51_450*qdd(51)+ROcp51_751*qdd(52)+qd(50)*(OMcp51_249*ROcp51_348-OMcp51_349*ROcp51_248)+qd(51)*(...
 OMcp51_250*ROcp51_650-OMcp51_350*ROcp51_550)+qd(52)*(OMcp51_251*ROcp51_951-OMcp51_351*ROcp51_851);
    OPcp51_252 = OPcp51_249+ROcp51_248*qdd(50)+ROcp51_550*qdd(51)+ROcp51_851*qdd(52)-qd(50)*(OMcp51_149*ROcp51_348-OMcp51_349*ROcp51_148)-qd(51)*(...
 OMcp51_150*ROcp51_650-OMcp51_350*ROcp51_450)-qd(52)*(OMcp51_151*ROcp51_951-OMcp51_351*ROcp51_751);
    OPcp51_352 = OPcp51_349+ROcp51_348*qdd(50)+ROcp51_650*qdd(51)+ROcp51_951*qdd(52)+qd(50)*(OMcp51_149*ROcp51_248-OMcp51_249*ROcp51_148)+qd(51)*(...
 OMcp51_150*ROcp51_550-OMcp51_250*ROcp51_450)+qd(52)*(OMcp51_151*ROcp51_851-OMcp51_251*ROcp51_751);

% = = Block_1_0_0_52_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp51_150;
    sens.P(2) = POcp51_250;
    sens.P(3) = POcp51_350;
    sens.R(1,1) = ROcp51_152;
    sens.R(1,2) = ROcp51_252;
    sens.R(1,3) = ROcp51_352;
    sens.R(2,1) = ROcp51_452;
    sens.R(2,2) = ROcp51_552;
    sens.R(2,3) = ROcp51_652;
    sens.R(3,1) = ROcp51_751;
    sens.R(3,2) = ROcp51_851;
    sens.R(3,3) = ROcp51_951;
    sens.V(1) = VIcp51_150;
    sens.V(2) = VIcp51_250;
    sens.V(3) = VIcp51_350;
    sens.OM(1) = OMcp51_152;
    sens.OM(2) = OMcp51_252;
    sens.OM(3) = OMcp51_352;
    sens.A(1) = ACcp51_150;
    sens.A(2) = ACcp51_250;
    sens.A(3) = ACcp51_350;
    sens.OMP(1) = OPcp51_152;
    sens.OMP(2) = OPcp51_252;
    sens.OMP(3) = OPcp51_352;
 
% 
case 53, 


% = = Block_1_0_0_53_0_1 = = 
 
% Sensor Kinematics 


    ROcp52_45 = -S4*C5;
    ROcp52_55 = C4*C5;
    ROcp52_75 = S4*S5;
    ROcp52_85 = -C4*S5;
    ROcp52_16 = -(ROcp52_75*S6-C4*C6);
    ROcp52_26 = -(ROcp52_85*S6-S4*C6);
    ROcp52_36 = -C5*S6;
    ROcp52_76 = ROcp52_75*C6+C4*S6;
    ROcp52_86 = ROcp52_85*C6+S4*S6;
    ROcp52_96 = C5*C6;
    OMcp52_15 = qd(5)*C4;
    OMcp52_25 = qd(5)*S4;
    OMcp52_16 = OMcp52_15+ROcp52_45*qd(6);
    OMcp52_26 = OMcp52_25+ROcp52_55*qd(6);
    OMcp52_36 = qd(4)+qd(6)*S5;
    OPcp52_16 = ROcp52_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp52_25*S5-ROcp52_55*qd(4));
    OPcp52_26 = ROcp52_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp52_15*S5-ROcp52_45*qd(4));
    OPcp52_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_53_0_12 = = 
 
% Sensor Kinematics 


    ROcp52_147 = ROcp52_16*C47+ROcp52_45*S47;
    ROcp52_247 = ROcp52_26*C47+ROcp52_55*S47;
    ROcp52_347 = ROcp52_36*C47+S47*S5;
    ROcp52_447 = -(ROcp52_16*S47-ROcp52_45*C47);
    ROcp52_547 = -(ROcp52_26*S47-ROcp52_55*C47);
    ROcp52_647 = -(ROcp52_36*S47-C47*S5);
    ROcp52_148 = ROcp52_147*C48-ROcp52_76*S48;
    ROcp52_248 = ROcp52_247*C48-ROcp52_86*S48;
    ROcp52_348 = ROcp52_347*C48-ROcp52_96*S48;
    ROcp52_748 = ROcp52_147*S48+ROcp52_76*C48;
    ROcp52_848 = ROcp52_247*S48+ROcp52_86*C48;
    ROcp52_948 = ROcp52_347*S48+ROcp52_96*C48;
    ROcp52_449 = ROcp52_447*C49+ROcp52_748*S49;
    ROcp52_549 = ROcp52_547*C49+ROcp52_848*S49;
    ROcp52_649 = ROcp52_647*C49+ROcp52_948*S49;
    ROcp52_749 = -(ROcp52_447*S49-ROcp52_748*C49);
    ROcp52_849 = -(ROcp52_547*S49-ROcp52_848*C49);
    ROcp52_949 = -(ROcp52_647*S49-ROcp52_948*C49);
    ROcp52_450 = ROcp52_449*C50+ROcp52_749*S50;
    ROcp52_550 = ROcp52_549*C50+ROcp52_849*S50;
    ROcp52_650 = ROcp52_649*C50+ROcp52_949*S50;
    ROcp52_750 = -(ROcp52_449*S50-ROcp52_749*C50);
    ROcp52_850 = -(ROcp52_549*S50-ROcp52_849*C50);
    ROcp52_950 = -(ROcp52_649*S50-ROcp52_949*C50);
    ROcp52_151 = ROcp52_148*C51-ROcp52_750*S51;
    ROcp52_251 = ROcp52_248*C51-ROcp52_850*S51;
    ROcp52_351 = ROcp52_348*C51-ROcp52_950*S51;
    ROcp52_751 = ROcp52_148*S51+ROcp52_750*C51;
    ROcp52_851 = ROcp52_248*S51+ROcp52_850*C51;
    ROcp52_951 = ROcp52_348*S51+ROcp52_950*C51;
    ROcp52_152 = ROcp52_151*C52+ROcp52_450*S52;
    ROcp52_252 = ROcp52_251*C52+ROcp52_550*S52;
    ROcp52_352 = ROcp52_351*C52+ROcp52_650*S52;
    ROcp52_452 = -(ROcp52_151*S52-ROcp52_450*C52);
    ROcp52_552 = -(ROcp52_251*S52-ROcp52_550*C52);
    ROcp52_652 = -(ROcp52_351*S52-ROcp52_650*C52);
    ROcp52_153 = ROcp52_152*C53+ROcp52_452*S53;
    ROcp52_253 = ROcp52_252*C53+ROcp52_552*S53;
    ROcp52_353 = ROcp52_352*C53+ROcp52_652*S53;
    ROcp52_453 = -(ROcp52_152*S53-ROcp52_452*C53);
    ROcp52_553 = -(ROcp52_252*S53-ROcp52_552*C53);
    ROcp52_653 = -(ROcp52_352*S53-ROcp52_652*C53);
    RLcp52_147 = ROcp52_16*s.dpt(1,15)+ROcp52_45*s.dpt(2,15)+ROcp52_76*s.dpt(3,15);
    RLcp52_247 = ROcp52_26*s.dpt(1,15)+ROcp52_55*s.dpt(2,15)+ROcp52_86*s.dpt(3,15);
    RLcp52_347 = ROcp52_36*s.dpt(1,15)+ROcp52_96*s.dpt(3,15)+s.dpt(2,15)*S5;
    OMcp52_147 = OMcp52_16+ROcp52_76*qd(47);
    OMcp52_247 = OMcp52_26+ROcp52_86*qd(47);
    OMcp52_347 = OMcp52_36+ROcp52_96*qd(47);
    ORcp52_147 = OMcp52_26*RLcp52_347-OMcp52_36*RLcp52_247;
    ORcp52_247 = -(OMcp52_16*RLcp52_347-OMcp52_36*RLcp52_147);
    ORcp52_347 = OMcp52_16*RLcp52_247-OMcp52_26*RLcp52_147;
    OMcp52_148 = OMcp52_147+ROcp52_447*qd(48);
    OMcp52_248 = OMcp52_247+ROcp52_547*qd(48);
    OMcp52_348 = OMcp52_347+ROcp52_647*qd(48);
    OMcp52_149 = OMcp52_148+ROcp52_148*qd(49);
    OMcp52_249 = OMcp52_248+ROcp52_248*qd(49);
    OMcp52_349 = OMcp52_348+ROcp52_348*qd(49);
    OPcp52_149 = OPcp52_16+ROcp52_148*qdd(49)+ROcp52_447*qdd(48)+ROcp52_76*qdd(47)+qd(47)*(OMcp52_26*ROcp52_96-OMcp52_36*ROcp52_86)+qd(48)*(...
 OMcp52_247*ROcp52_647-OMcp52_347*ROcp52_547)+qd(49)*(OMcp52_248*ROcp52_348-OMcp52_348*ROcp52_248);
    OPcp52_249 = OPcp52_26+ROcp52_248*qdd(49)+ROcp52_547*qdd(48)+ROcp52_86*qdd(47)-qd(47)*(OMcp52_16*ROcp52_96-OMcp52_36*ROcp52_76)-qd(48)*(...
 OMcp52_147*ROcp52_647-OMcp52_347*ROcp52_447)-qd(49)*(OMcp52_148*ROcp52_348-OMcp52_348*ROcp52_148);
    OPcp52_349 = OPcp52_36+ROcp52_348*qdd(49)+ROcp52_647*qdd(48)+ROcp52_96*qdd(47)+qd(47)*(OMcp52_16*ROcp52_86-OMcp52_26*ROcp52_76)+qd(48)*(...
 OMcp52_147*ROcp52_547-OMcp52_247*ROcp52_447)+qd(49)*(OMcp52_148*ROcp52_248-OMcp52_248*ROcp52_148);
    RLcp52_150 = ROcp52_449*s.dpt(2,56);
    RLcp52_250 = ROcp52_549*s.dpt(2,56);
    RLcp52_350 = ROcp52_649*s.dpt(2,56);
    OMcp52_150 = OMcp52_149+ROcp52_148*qd(50);
    OMcp52_250 = OMcp52_249+ROcp52_248*qd(50);
    OMcp52_350 = OMcp52_349+ROcp52_348*qd(50);
    ORcp52_150 = OMcp52_249*RLcp52_350-OMcp52_349*RLcp52_250;
    ORcp52_250 = -(OMcp52_149*RLcp52_350-OMcp52_349*RLcp52_150);
    ORcp52_350 = OMcp52_149*RLcp52_250-OMcp52_249*RLcp52_150;
    OMcp52_151 = OMcp52_150+ROcp52_450*qd(51);
    OMcp52_251 = OMcp52_250+ROcp52_550*qd(51);
    OMcp52_351 = OMcp52_350+ROcp52_650*qd(51);
    OMcp52_152 = OMcp52_151+ROcp52_751*qd(52);
    OMcp52_252 = OMcp52_251+ROcp52_851*qd(52);
    OMcp52_352 = OMcp52_351+ROcp52_951*qd(52);
    OPcp52_152 = OPcp52_149+ROcp52_148*qdd(50)+ROcp52_450*qdd(51)+ROcp52_751*qdd(52)+qd(50)*(OMcp52_249*ROcp52_348-OMcp52_349*ROcp52_248)+qd(51)*(...
 OMcp52_250*ROcp52_650-OMcp52_350*ROcp52_550)+qd(52)*(OMcp52_251*ROcp52_951-OMcp52_351*ROcp52_851);
    OPcp52_252 = OPcp52_249+ROcp52_248*qdd(50)+ROcp52_550*qdd(51)+ROcp52_851*qdd(52)-qd(50)*(OMcp52_149*ROcp52_348-OMcp52_349*ROcp52_148)-qd(51)*(...
 OMcp52_150*ROcp52_650-OMcp52_350*ROcp52_450)-qd(52)*(OMcp52_151*ROcp52_951-OMcp52_351*ROcp52_751);
    OPcp52_352 = OPcp52_349+ROcp52_348*qdd(50)+ROcp52_650*qdd(51)+ROcp52_951*qdd(52)+qd(50)*(OMcp52_149*ROcp52_248-OMcp52_249*ROcp52_148)+qd(51)*(...
 OMcp52_150*ROcp52_550-OMcp52_250*ROcp52_450)+qd(52)*(OMcp52_151*ROcp52_851-OMcp52_251*ROcp52_751);
    RLcp52_153 = ROcp52_152*s.dpt(1,57)+ROcp52_452*s.dpt(2,57)+ROcp52_751*s.dpt(3,57);
    RLcp52_253 = ROcp52_252*s.dpt(1,57)+ROcp52_552*s.dpt(2,57)+ROcp52_851*s.dpt(3,57);
    RLcp52_353 = ROcp52_352*s.dpt(1,57)+ROcp52_652*s.dpt(2,57)+ROcp52_951*s.dpt(3,57);
    POcp52_153 = RLcp52_147+RLcp52_150+RLcp52_153+q(1);
    POcp52_253 = RLcp52_247+RLcp52_250+RLcp52_253+q(2);
    POcp52_353 = RLcp52_347+RLcp52_350+RLcp52_353+q(3);
    OMcp52_153 = OMcp52_152+ROcp52_751*qd(53);
    OMcp52_253 = OMcp52_252+ROcp52_851*qd(53);
    OMcp52_353 = OMcp52_352+ROcp52_951*qd(53);
    ORcp52_153 = OMcp52_252*RLcp52_353-OMcp52_352*RLcp52_253;
    ORcp52_253 = -(OMcp52_152*RLcp52_353-OMcp52_352*RLcp52_153);
    ORcp52_353 = OMcp52_152*RLcp52_253-OMcp52_252*RLcp52_153;
    VIcp52_153 = ORcp52_147+ORcp52_150+ORcp52_153+qd(1);
    VIcp52_253 = ORcp52_247+ORcp52_250+ORcp52_253+qd(2);
    VIcp52_353 = ORcp52_347+ORcp52_350+ORcp52_353+qd(3);
    OPcp52_153 = OPcp52_152+ROcp52_751*qdd(53)+qd(53)*(OMcp52_252*ROcp52_951-OMcp52_352*ROcp52_851);
    OPcp52_253 = OPcp52_252+ROcp52_851*qdd(53)-qd(53)*(OMcp52_152*ROcp52_951-OMcp52_352*ROcp52_751);
    OPcp52_353 = OPcp52_352+ROcp52_951*qdd(53)+qd(53)*(OMcp52_152*ROcp52_851-OMcp52_252*ROcp52_751);
    ACcp52_153 = qdd(1)+OMcp52_249*ORcp52_350+OMcp52_252*ORcp52_353+OMcp52_26*ORcp52_347-OMcp52_349*ORcp52_250-OMcp52_352*ORcp52_253-OMcp52_36*...
 ORcp52_247+OPcp52_249*RLcp52_350+OPcp52_252*RLcp52_353+OPcp52_26*RLcp52_347-OPcp52_349*RLcp52_250-OPcp52_352*RLcp52_253-OPcp52_36*RLcp52_247;
    ACcp52_253 = qdd(2)-OMcp52_149*ORcp52_350-OMcp52_152*ORcp52_353-OMcp52_16*ORcp52_347+OMcp52_349*ORcp52_150+OMcp52_352*ORcp52_153+OMcp52_36*...
 ORcp52_147-OPcp52_149*RLcp52_350-OPcp52_152*RLcp52_353-OPcp52_16*RLcp52_347+OPcp52_349*RLcp52_150+OPcp52_352*RLcp52_153+OPcp52_36*RLcp52_147;
    ACcp52_353 = qdd(3)+OMcp52_149*ORcp52_250+OMcp52_152*ORcp52_253+OMcp52_16*ORcp52_247-OMcp52_249*ORcp52_150-OMcp52_252*ORcp52_153-OMcp52_26*...
 ORcp52_147+OPcp52_149*RLcp52_250+OPcp52_152*RLcp52_253+OPcp52_16*RLcp52_247-OPcp52_249*RLcp52_150-OPcp52_252*RLcp52_153-OPcp52_26*RLcp52_147;

% = = Block_1_0_0_53_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp52_153;
    sens.P(2) = POcp52_253;
    sens.P(3) = POcp52_353;
    sens.R(1,1) = ROcp52_153;
    sens.R(1,2) = ROcp52_253;
    sens.R(1,3) = ROcp52_353;
    sens.R(2,1) = ROcp52_453;
    sens.R(2,2) = ROcp52_553;
    sens.R(2,3) = ROcp52_653;
    sens.R(3,1) = ROcp52_751;
    sens.R(3,2) = ROcp52_851;
    sens.R(3,3) = ROcp52_951;
    sens.V(1) = VIcp52_153;
    sens.V(2) = VIcp52_253;
    sens.V(3) = VIcp52_353;
    sens.OM(1) = OMcp52_153;
    sens.OM(2) = OMcp52_253;
    sens.OM(3) = OMcp52_353;
    sens.A(1) = ACcp52_153;
    sens.A(2) = ACcp52_253;
    sens.A(3) = ACcp52_353;
    sens.OMP(1) = OPcp52_153;
    sens.OMP(2) = OPcp52_253;
    sens.OMP(3) = OPcp52_353;
 
% 
case 54, 


% = = Block_1_0_0_54_0_1 = = 
 
% Sensor Kinematics 


    ROcp53_45 = -S4*C5;
    ROcp53_55 = C4*C5;
    ROcp53_75 = S4*S5;
    ROcp53_85 = -C4*S5;
    ROcp53_16 = -(ROcp53_75*S6-C4*C6);
    ROcp53_26 = -(ROcp53_85*S6-S4*C6);
    ROcp53_36 = -C5*S6;
    ROcp53_76 = ROcp53_75*C6+C4*S6;
    ROcp53_86 = ROcp53_85*C6+S4*S6;
    ROcp53_96 = C5*C6;
    OMcp53_15 = qd(5)*C4;
    OMcp53_25 = qd(5)*S4;
    OMcp53_16 = OMcp53_15+ROcp53_45*qd(6);
    OMcp53_26 = OMcp53_25+ROcp53_55*qd(6);
    OMcp53_36 = qd(4)+qd(6)*S5;
    OPcp53_16 = ROcp53_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp53_25*S5-ROcp53_55*qd(4));
    OPcp53_26 = ROcp53_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp53_15*S5-ROcp53_45*qd(4));
    OPcp53_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_54_0_12 = = 
 
% Sensor Kinematics 


    ROcp53_147 = ROcp53_16*C47+ROcp53_45*S47;
    ROcp53_247 = ROcp53_26*C47+ROcp53_55*S47;
    ROcp53_347 = ROcp53_36*C47+S47*S5;
    ROcp53_447 = -(ROcp53_16*S47-ROcp53_45*C47);
    ROcp53_547 = -(ROcp53_26*S47-ROcp53_55*C47);
    ROcp53_647 = -(ROcp53_36*S47-C47*S5);
    ROcp53_148 = ROcp53_147*C48-ROcp53_76*S48;
    ROcp53_248 = ROcp53_247*C48-ROcp53_86*S48;
    ROcp53_348 = ROcp53_347*C48-ROcp53_96*S48;
    ROcp53_748 = ROcp53_147*S48+ROcp53_76*C48;
    ROcp53_848 = ROcp53_247*S48+ROcp53_86*C48;
    ROcp53_948 = ROcp53_347*S48+ROcp53_96*C48;
    ROcp53_449 = ROcp53_447*C49+ROcp53_748*S49;
    ROcp53_549 = ROcp53_547*C49+ROcp53_848*S49;
    ROcp53_649 = ROcp53_647*C49+ROcp53_948*S49;
    ROcp53_749 = -(ROcp53_447*S49-ROcp53_748*C49);
    ROcp53_849 = -(ROcp53_547*S49-ROcp53_848*C49);
    ROcp53_949 = -(ROcp53_647*S49-ROcp53_948*C49);
    ROcp53_450 = ROcp53_449*C50+ROcp53_749*S50;
    ROcp53_550 = ROcp53_549*C50+ROcp53_849*S50;
    ROcp53_650 = ROcp53_649*C50+ROcp53_949*S50;
    ROcp53_750 = -(ROcp53_449*S50-ROcp53_749*C50);
    ROcp53_850 = -(ROcp53_549*S50-ROcp53_849*C50);
    ROcp53_950 = -(ROcp53_649*S50-ROcp53_949*C50);
    ROcp53_151 = ROcp53_148*C51-ROcp53_750*S51;
    ROcp53_251 = ROcp53_248*C51-ROcp53_850*S51;
    ROcp53_351 = ROcp53_348*C51-ROcp53_950*S51;
    ROcp53_751 = ROcp53_148*S51+ROcp53_750*C51;
    ROcp53_851 = ROcp53_248*S51+ROcp53_850*C51;
    ROcp53_951 = ROcp53_348*S51+ROcp53_950*C51;
    ROcp53_152 = ROcp53_151*C52+ROcp53_450*S52;
    ROcp53_252 = ROcp53_251*C52+ROcp53_550*S52;
    ROcp53_352 = ROcp53_351*C52+ROcp53_650*S52;
    ROcp53_452 = -(ROcp53_151*S52-ROcp53_450*C52);
    ROcp53_552 = -(ROcp53_251*S52-ROcp53_550*C52);
    ROcp53_652 = -(ROcp53_351*S52-ROcp53_650*C52);
    ROcp53_153 = ROcp53_152*C53+ROcp53_452*S53;
    ROcp53_253 = ROcp53_252*C53+ROcp53_552*S53;
    ROcp53_353 = ROcp53_352*C53+ROcp53_652*S53;
    ROcp53_453 = -(ROcp53_152*S53-ROcp53_452*C53);
    ROcp53_553 = -(ROcp53_252*S53-ROcp53_552*C53);
    ROcp53_653 = -(ROcp53_352*S53-ROcp53_652*C53);
    ROcp53_454 = ROcp53_453*C54+ROcp53_751*S54;
    ROcp53_554 = ROcp53_553*C54+ROcp53_851*S54;
    ROcp53_654 = ROcp53_653*C54+ROcp53_951*S54;
    ROcp53_754 = -(ROcp53_453*S54-ROcp53_751*C54);
    ROcp53_854 = -(ROcp53_553*S54-ROcp53_851*C54);
    ROcp53_954 = -(ROcp53_653*S54-ROcp53_951*C54);
    RLcp53_147 = ROcp53_16*s.dpt(1,15)+ROcp53_45*s.dpt(2,15)+ROcp53_76*s.dpt(3,15);
    RLcp53_247 = ROcp53_26*s.dpt(1,15)+ROcp53_55*s.dpt(2,15)+ROcp53_86*s.dpt(3,15);
    RLcp53_347 = ROcp53_36*s.dpt(1,15)+ROcp53_96*s.dpt(3,15)+s.dpt(2,15)*S5;
    OMcp53_147 = OMcp53_16+ROcp53_76*qd(47);
    OMcp53_247 = OMcp53_26+ROcp53_86*qd(47);
    OMcp53_347 = OMcp53_36+ROcp53_96*qd(47);
    ORcp53_147 = OMcp53_26*RLcp53_347-OMcp53_36*RLcp53_247;
    ORcp53_247 = -(OMcp53_16*RLcp53_347-OMcp53_36*RLcp53_147);
    ORcp53_347 = OMcp53_16*RLcp53_247-OMcp53_26*RLcp53_147;
    OMcp53_148 = OMcp53_147+ROcp53_447*qd(48);
    OMcp53_248 = OMcp53_247+ROcp53_547*qd(48);
    OMcp53_348 = OMcp53_347+ROcp53_647*qd(48);
    OMcp53_149 = OMcp53_148+ROcp53_148*qd(49);
    OMcp53_249 = OMcp53_248+ROcp53_248*qd(49);
    OMcp53_349 = OMcp53_348+ROcp53_348*qd(49);
    OPcp53_149 = OPcp53_16+ROcp53_148*qdd(49)+ROcp53_447*qdd(48)+ROcp53_76*qdd(47)+qd(47)*(OMcp53_26*ROcp53_96-OMcp53_36*ROcp53_86)+qd(48)*(...
 OMcp53_247*ROcp53_647-OMcp53_347*ROcp53_547)+qd(49)*(OMcp53_248*ROcp53_348-OMcp53_348*ROcp53_248);
    OPcp53_249 = OPcp53_26+ROcp53_248*qdd(49)+ROcp53_547*qdd(48)+ROcp53_86*qdd(47)-qd(47)*(OMcp53_16*ROcp53_96-OMcp53_36*ROcp53_76)-qd(48)*(...
 OMcp53_147*ROcp53_647-OMcp53_347*ROcp53_447)-qd(49)*(OMcp53_148*ROcp53_348-OMcp53_348*ROcp53_148);
    OPcp53_349 = OPcp53_36+ROcp53_348*qdd(49)+ROcp53_647*qdd(48)+ROcp53_96*qdd(47)+qd(47)*(OMcp53_16*ROcp53_86-OMcp53_26*ROcp53_76)+qd(48)*(...
 OMcp53_147*ROcp53_547-OMcp53_247*ROcp53_447)+qd(49)*(OMcp53_148*ROcp53_248-OMcp53_248*ROcp53_148);
    RLcp53_150 = ROcp53_449*s.dpt(2,56);
    RLcp53_250 = ROcp53_549*s.dpt(2,56);
    RLcp53_350 = ROcp53_649*s.dpt(2,56);
    OMcp53_150 = OMcp53_149+ROcp53_148*qd(50);
    OMcp53_250 = OMcp53_249+ROcp53_248*qd(50);
    OMcp53_350 = OMcp53_349+ROcp53_348*qd(50);
    ORcp53_150 = OMcp53_249*RLcp53_350-OMcp53_349*RLcp53_250;
    ORcp53_250 = -(OMcp53_149*RLcp53_350-OMcp53_349*RLcp53_150);
    ORcp53_350 = OMcp53_149*RLcp53_250-OMcp53_249*RLcp53_150;
    OMcp53_151 = OMcp53_150+ROcp53_450*qd(51);
    OMcp53_251 = OMcp53_250+ROcp53_550*qd(51);
    OMcp53_351 = OMcp53_350+ROcp53_650*qd(51);
    OMcp53_152 = OMcp53_151+ROcp53_751*qd(52);
    OMcp53_252 = OMcp53_251+ROcp53_851*qd(52);
    OMcp53_352 = OMcp53_351+ROcp53_951*qd(52);
    OPcp53_152 = OPcp53_149+ROcp53_148*qdd(50)+ROcp53_450*qdd(51)+ROcp53_751*qdd(52)+qd(50)*(OMcp53_249*ROcp53_348-OMcp53_349*ROcp53_248)+qd(51)*(...
 OMcp53_250*ROcp53_650-OMcp53_350*ROcp53_550)+qd(52)*(OMcp53_251*ROcp53_951-OMcp53_351*ROcp53_851);
    OPcp53_252 = OPcp53_249+ROcp53_248*qdd(50)+ROcp53_550*qdd(51)+ROcp53_851*qdd(52)-qd(50)*(OMcp53_149*ROcp53_348-OMcp53_349*ROcp53_148)-qd(51)*(...
 OMcp53_150*ROcp53_650-OMcp53_350*ROcp53_450)-qd(52)*(OMcp53_151*ROcp53_951-OMcp53_351*ROcp53_751);
    OPcp53_352 = OPcp53_349+ROcp53_348*qdd(50)+ROcp53_650*qdd(51)+ROcp53_951*qdd(52)+qd(50)*(OMcp53_149*ROcp53_248-OMcp53_249*ROcp53_148)+qd(51)*(...
 OMcp53_150*ROcp53_550-OMcp53_250*ROcp53_450)+qd(52)*(OMcp53_151*ROcp53_851-OMcp53_251*ROcp53_751);
    RLcp53_153 = ROcp53_152*s.dpt(1,57)+ROcp53_452*s.dpt(2,57)+ROcp53_751*s.dpt(3,57);
    RLcp53_253 = ROcp53_252*s.dpt(1,57)+ROcp53_552*s.dpt(2,57)+ROcp53_851*s.dpt(3,57);
    RLcp53_353 = ROcp53_352*s.dpt(1,57)+ROcp53_652*s.dpt(2,57)+ROcp53_951*s.dpt(3,57);
    POcp53_153 = RLcp53_147+RLcp53_150+RLcp53_153+q(1);
    POcp53_253 = RLcp53_247+RLcp53_250+RLcp53_253+q(2);
    POcp53_353 = RLcp53_347+RLcp53_350+RLcp53_353+q(3);
    OMcp53_153 = OMcp53_152+ROcp53_751*qd(53);
    OMcp53_253 = OMcp53_252+ROcp53_851*qd(53);
    OMcp53_353 = OMcp53_352+ROcp53_951*qd(53);
    ORcp53_153 = OMcp53_252*RLcp53_353-OMcp53_352*RLcp53_253;
    ORcp53_253 = -(OMcp53_152*RLcp53_353-OMcp53_352*RLcp53_153);
    ORcp53_353 = OMcp53_152*RLcp53_253-OMcp53_252*RLcp53_153;
    VIcp53_153 = ORcp53_147+ORcp53_150+ORcp53_153+qd(1);
    VIcp53_253 = ORcp53_247+ORcp53_250+ORcp53_253+qd(2);
    VIcp53_353 = ORcp53_347+ORcp53_350+ORcp53_353+qd(3);
    ACcp53_153 = qdd(1)+OMcp53_249*ORcp53_350+OMcp53_252*ORcp53_353+OMcp53_26*ORcp53_347-OMcp53_349*ORcp53_250-OMcp53_352*ORcp53_253-OMcp53_36*...
 ORcp53_247+OPcp53_249*RLcp53_350+OPcp53_252*RLcp53_353+OPcp53_26*RLcp53_347-OPcp53_349*RLcp53_250-OPcp53_352*RLcp53_253-OPcp53_36*RLcp53_247;
    ACcp53_253 = qdd(2)-OMcp53_149*ORcp53_350-OMcp53_152*ORcp53_353-OMcp53_16*ORcp53_347+OMcp53_349*ORcp53_150+OMcp53_352*ORcp53_153+OMcp53_36*...
 ORcp53_147-OPcp53_149*RLcp53_350-OPcp53_152*RLcp53_353-OPcp53_16*RLcp53_347+OPcp53_349*RLcp53_150+OPcp53_352*RLcp53_153+OPcp53_36*RLcp53_147;
    ACcp53_353 = qdd(3)+OMcp53_149*ORcp53_250+OMcp53_152*ORcp53_253+OMcp53_16*ORcp53_247-OMcp53_249*ORcp53_150-OMcp53_252*ORcp53_153-OMcp53_26*...
 ORcp53_147+OPcp53_149*RLcp53_250+OPcp53_152*RLcp53_253+OPcp53_16*RLcp53_247-OPcp53_249*RLcp53_150-OPcp53_252*RLcp53_153-OPcp53_26*RLcp53_147;
    OMcp53_154 = OMcp53_153+ROcp53_153*qd(54);
    OMcp53_254 = OMcp53_253+ROcp53_253*qd(54);
    OMcp53_354 = OMcp53_353+ROcp53_353*qd(54);
    OPcp53_154 = OPcp53_152+ROcp53_153*qdd(54)+ROcp53_751*qdd(53)+qd(53)*(OMcp53_252*ROcp53_951-OMcp53_352*ROcp53_851)+qd(54)*(OMcp53_253*...
 ROcp53_353-OMcp53_353*ROcp53_253);
    OPcp53_254 = OPcp53_252+ROcp53_253*qdd(54)+ROcp53_851*qdd(53)-qd(53)*(OMcp53_152*ROcp53_951-OMcp53_352*ROcp53_751)-qd(54)*(OMcp53_153*...
 ROcp53_353-OMcp53_353*ROcp53_153);
    OPcp53_354 = OPcp53_352+ROcp53_353*qdd(54)+ROcp53_951*qdd(53)+qd(53)*(OMcp53_152*ROcp53_851-OMcp53_252*ROcp53_751)+qd(54)*(OMcp53_153*...
 ROcp53_253-OMcp53_253*ROcp53_153);

% = = Block_1_0_0_54_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp53_153;
    sens.P(2) = POcp53_253;
    sens.P(3) = POcp53_353;
    sens.R(1,1) = ROcp53_153;
    sens.R(1,2) = ROcp53_253;
    sens.R(1,3) = ROcp53_353;
    sens.R(2,1) = ROcp53_454;
    sens.R(2,2) = ROcp53_554;
    sens.R(2,3) = ROcp53_654;
    sens.R(3,1) = ROcp53_754;
    sens.R(3,2) = ROcp53_854;
    sens.R(3,3) = ROcp53_954;
    sens.V(1) = VIcp53_153;
    sens.V(2) = VIcp53_253;
    sens.V(3) = VIcp53_353;
    sens.OM(1) = OMcp53_154;
    sens.OM(2) = OMcp53_254;
    sens.OM(3) = OMcp53_354;
    sens.A(1) = ACcp53_153;
    sens.A(2) = ACcp53_253;
    sens.A(3) = ACcp53_353;
    sens.OMP(1) = OPcp53_154;
    sens.OMP(2) = OPcp53_254;
    sens.OMP(3) = OPcp53_354;
 
% 
case 55, 


% = = Block_1_0_0_55_0_1 = = 
 
% Sensor Kinematics 


    ROcp54_45 = -S4*C5;
    ROcp54_55 = C4*C5;
    ROcp54_75 = S4*S5;
    ROcp54_85 = -C4*S5;
    ROcp54_16 = -(ROcp54_75*S6-C4*C6);
    ROcp54_26 = -(ROcp54_85*S6-S4*C6);
    ROcp54_36 = -C5*S6;
    ROcp54_76 = ROcp54_75*C6+C4*S6;
    ROcp54_86 = ROcp54_85*C6+S4*S6;
    ROcp54_96 = C5*C6;
    OMcp54_15 = qd(5)*C4;
    OMcp54_25 = qd(5)*S4;
    OMcp54_16 = OMcp54_15+ROcp54_45*qd(6);
    OMcp54_26 = OMcp54_25+ROcp54_55*qd(6);
    OMcp54_36 = qd(4)+qd(6)*S5;
    OPcp54_16 = ROcp54_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp54_25*S5-ROcp54_55*qd(4));
    OPcp54_26 = ROcp54_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp54_15*S5-ROcp54_45*qd(4));
    OPcp54_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_55_0_12 = = 
 
% Sensor Kinematics 


    ROcp54_147 = ROcp54_16*C47+ROcp54_45*S47;
    ROcp54_247 = ROcp54_26*C47+ROcp54_55*S47;
    ROcp54_347 = ROcp54_36*C47+S47*S5;
    ROcp54_447 = -(ROcp54_16*S47-ROcp54_45*C47);
    ROcp54_547 = -(ROcp54_26*S47-ROcp54_55*C47);
    ROcp54_647 = -(ROcp54_36*S47-C47*S5);
    ROcp54_148 = ROcp54_147*C48-ROcp54_76*S48;
    ROcp54_248 = ROcp54_247*C48-ROcp54_86*S48;
    ROcp54_348 = ROcp54_347*C48-ROcp54_96*S48;
    ROcp54_748 = ROcp54_147*S48+ROcp54_76*C48;
    ROcp54_848 = ROcp54_247*S48+ROcp54_86*C48;
    ROcp54_948 = ROcp54_347*S48+ROcp54_96*C48;
    ROcp54_449 = ROcp54_447*C49+ROcp54_748*S49;
    ROcp54_549 = ROcp54_547*C49+ROcp54_848*S49;
    ROcp54_649 = ROcp54_647*C49+ROcp54_948*S49;
    ROcp54_749 = -(ROcp54_447*S49-ROcp54_748*C49);
    ROcp54_849 = -(ROcp54_547*S49-ROcp54_848*C49);
    ROcp54_949 = -(ROcp54_647*S49-ROcp54_948*C49);
    ROcp54_450 = ROcp54_449*C50+ROcp54_749*S50;
    ROcp54_550 = ROcp54_549*C50+ROcp54_849*S50;
    ROcp54_650 = ROcp54_649*C50+ROcp54_949*S50;
    ROcp54_750 = -(ROcp54_449*S50-ROcp54_749*C50);
    ROcp54_850 = -(ROcp54_549*S50-ROcp54_849*C50);
    ROcp54_950 = -(ROcp54_649*S50-ROcp54_949*C50);
    ROcp54_151 = ROcp54_148*C51-ROcp54_750*S51;
    ROcp54_251 = ROcp54_248*C51-ROcp54_850*S51;
    ROcp54_351 = ROcp54_348*C51-ROcp54_950*S51;
    ROcp54_751 = ROcp54_148*S51+ROcp54_750*C51;
    ROcp54_851 = ROcp54_248*S51+ROcp54_850*C51;
    ROcp54_951 = ROcp54_348*S51+ROcp54_950*C51;
    ROcp54_152 = ROcp54_151*C52+ROcp54_450*S52;
    ROcp54_252 = ROcp54_251*C52+ROcp54_550*S52;
    ROcp54_352 = ROcp54_351*C52+ROcp54_650*S52;
    ROcp54_452 = -(ROcp54_151*S52-ROcp54_450*C52);
    ROcp54_552 = -(ROcp54_251*S52-ROcp54_550*C52);
    ROcp54_652 = -(ROcp54_351*S52-ROcp54_650*C52);
    ROcp54_153 = ROcp54_152*C53+ROcp54_452*S53;
    ROcp54_253 = ROcp54_252*C53+ROcp54_552*S53;
    ROcp54_353 = ROcp54_352*C53+ROcp54_652*S53;
    ROcp54_453 = -(ROcp54_152*S53-ROcp54_452*C53);
    ROcp54_553 = -(ROcp54_252*S53-ROcp54_552*C53);
    ROcp54_653 = -(ROcp54_352*S53-ROcp54_652*C53);
    ROcp54_454 = ROcp54_453*C54+ROcp54_751*S54;
    ROcp54_554 = ROcp54_553*C54+ROcp54_851*S54;
    ROcp54_654 = ROcp54_653*C54+ROcp54_951*S54;
    ROcp54_754 = -(ROcp54_453*S54-ROcp54_751*C54);
    ROcp54_854 = -(ROcp54_553*S54-ROcp54_851*C54);
    ROcp54_954 = -(ROcp54_653*S54-ROcp54_951*C54);
    ROcp54_155 = ROcp54_153*C55-ROcp54_754*S55;
    ROcp54_255 = ROcp54_253*C55-ROcp54_854*S55;
    ROcp54_355 = ROcp54_353*C55-ROcp54_954*S55;
    ROcp54_755 = ROcp54_153*S55+ROcp54_754*C55;
    ROcp54_855 = ROcp54_253*S55+ROcp54_854*C55;
    ROcp54_955 = ROcp54_353*S55+ROcp54_954*C55;
    RLcp54_147 = ROcp54_16*s.dpt(1,15)+ROcp54_45*s.dpt(2,15)+ROcp54_76*s.dpt(3,15);
    RLcp54_247 = ROcp54_26*s.dpt(1,15)+ROcp54_55*s.dpt(2,15)+ROcp54_86*s.dpt(3,15);
    RLcp54_347 = ROcp54_36*s.dpt(1,15)+ROcp54_96*s.dpt(3,15)+s.dpt(2,15)*S5;
    OMcp54_147 = OMcp54_16+ROcp54_76*qd(47);
    OMcp54_247 = OMcp54_26+ROcp54_86*qd(47);
    OMcp54_347 = OMcp54_36+ROcp54_96*qd(47);
    ORcp54_147 = OMcp54_26*RLcp54_347-OMcp54_36*RLcp54_247;
    ORcp54_247 = -(OMcp54_16*RLcp54_347-OMcp54_36*RLcp54_147);
    ORcp54_347 = OMcp54_16*RLcp54_247-OMcp54_26*RLcp54_147;
    OMcp54_148 = OMcp54_147+ROcp54_447*qd(48);
    OMcp54_248 = OMcp54_247+ROcp54_547*qd(48);
    OMcp54_348 = OMcp54_347+ROcp54_647*qd(48);
    OMcp54_149 = OMcp54_148+ROcp54_148*qd(49);
    OMcp54_249 = OMcp54_248+ROcp54_248*qd(49);
    OMcp54_349 = OMcp54_348+ROcp54_348*qd(49);
    OPcp54_149 = OPcp54_16+ROcp54_148*qdd(49)+ROcp54_447*qdd(48)+ROcp54_76*qdd(47)+qd(47)*(OMcp54_26*ROcp54_96-OMcp54_36*ROcp54_86)+qd(48)*(...
 OMcp54_247*ROcp54_647-OMcp54_347*ROcp54_547)+qd(49)*(OMcp54_248*ROcp54_348-OMcp54_348*ROcp54_248);
    OPcp54_249 = OPcp54_26+ROcp54_248*qdd(49)+ROcp54_547*qdd(48)+ROcp54_86*qdd(47)-qd(47)*(OMcp54_16*ROcp54_96-OMcp54_36*ROcp54_76)-qd(48)*(...
 OMcp54_147*ROcp54_647-OMcp54_347*ROcp54_447)-qd(49)*(OMcp54_148*ROcp54_348-OMcp54_348*ROcp54_148);
    OPcp54_349 = OPcp54_36+ROcp54_348*qdd(49)+ROcp54_647*qdd(48)+ROcp54_96*qdd(47)+qd(47)*(OMcp54_16*ROcp54_86-OMcp54_26*ROcp54_76)+qd(48)*(...
 OMcp54_147*ROcp54_547-OMcp54_247*ROcp54_447)+qd(49)*(OMcp54_148*ROcp54_248-OMcp54_248*ROcp54_148);
    RLcp54_150 = ROcp54_449*s.dpt(2,56);
    RLcp54_250 = ROcp54_549*s.dpt(2,56);
    RLcp54_350 = ROcp54_649*s.dpt(2,56);
    OMcp54_150 = OMcp54_149+ROcp54_148*qd(50);
    OMcp54_250 = OMcp54_249+ROcp54_248*qd(50);
    OMcp54_350 = OMcp54_349+ROcp54_348*qd(50);
    ORcp54_150 = OMcp54_249*RLcp54_350-OMcp54_349*RLcp54_250;
    ORcp54_250 = -(OMcp54_149*RLcp54_350-OMcp54_349*RLcp54_150);
    ORcp54_350 = OMcp54_149*RLcp54_250-OMcp54_249*RLcp54_150;
    OMcp54_151 = OMcp54_150+ROcp54_450*qd(51);
    OMcp54_251 = OMcp54_250+ROcp54_550*qd(51);
    OMcp54_351 = OMcp54_350+ROcp54_650*qd(51);
    OMcp54_152 = OMcp54_151+ROcp54_751*qd(52);
    OMcp54_252 = OMcp54_251+ROcp54_851*qd(52);
    OMcp54_352 = OMcp54_351+ROcp54_951*qd(52);
    OPcp54_152 = OPcp54_149+ROcp54_148*qdd(50)+ROcp54_450*qdd(51)+ROcp54_751*qdd(52)+qd(50)*(OMcp54_249*ROcp54_348-OMcp54_349*ROcp54_248)+qd(51)*(...
 OMcp54_250*ROcp54_650-OMcp54_350*ROcp54_550)+qd(52)*(OMcp54_251*ROcp54_951-OMcp54_351*ROcp54_851);
    OPcp54_252 = OPcp54_249+ROcp54_248*qdd(50)+ROcp54_550*qdd(51)+ROcp54_851*qdd(52)-qd(50)*(OMcp54_149*ROcp54_348-OMcp54_349*ROcp54_148)-qd(51)*(...
 OMcp54_150*ROcp54_650-OMcp54_350*ROcp54_450)-qd(52)*(OMcp54_151*ROcp54_951-OMcp54_351*ROcp54_751);
    OPcp54_352 = OPcp54_349+ROcp54_348*qdd(50)+ROcp54_650*qdd(51)+ROcp54_951*qdd(52)+qd(50)*(OMcp54_149*ROcp54_248-OMcp54_249*ROcp54_148)+qd(51)*(...
 OMcp54_150*ROcp54_550-OMcp54_250*ROcp54_450)+qd(52)*(OMcp54_151*ROcp54_851-OMcp54_251*ROcp54_751);
    RLcp54_153 = ROcp54_152*s.dpt(1,57)+ROcp54_452*s.dpt(2,57)+ROcp54_751*s.dpt(3,57);
    RLcp54_253 = ROcp54_252*s.dpt(1,57)+ROcp54_552*s.dpt(2,57)+ROcp54_851*s.dpt(3,57);
    RLcp54_353 = ROcp54_352*s.dpt(1,57)+ROcp54_652*s.dpt(2,57)+ROcp54_951*s.dpt(3,57);
    POcp54_153 = RLcp54_147+RLcp54_150+RLcp54_153+q(1);
    POcp54_253 = RLcp54_247+RLcp54_250+RLcp54_253+q(2);
    POcp54_353 = RLcp54_347+RLcp54_350+RLcp54_353+q(3);
    OMcp54_153 = OMcp54_152+ROcp54_751*qd(53);
    OMcp54_253 = OMcp54_252+ROcp54_851*qd(53);
    OMcp54_353 = OMcp54_352+ROcp54_951*qd(53);
    ORcp54_153 = OMcp54_252*RLcp54_353-OMcp54_352*RLcp54_253;
    ORcp54_253 = -(OMcp54_152*RLcp54_353-OMcp54_352*RLcp54_153);
    ORcp54_353 = OMcp54_152*RLcp54_253-OMcp54_252*RLcp54_153;
    VIcp54_153 = ORcp54_147+ORcp54_150+ORcp54_153+qd(1);
    VIcp54_253 = ORcp54_247+ORcp54_250+ORcp54_253+qd(2);
    VIcp54_353 = ORcp54_347+ORcp54_350+ORcp54_353+qd(3);
    ACcp54_153 = qdd(1)+OMcp54_249*ORcp54_350+OMcp54_252*ORcp54_353+OMcp54_26*ORcp54_347-OMcp54_349*ORcp54_250-OMcp54_352*ORcp54_253-OMcp54_36*...
 ORcp54_247+OPcp54_249*RLcp54_350+OPcp54_252*RLcp54_353+OPcp54_26*RLcp54_347-OPcp54_349*RLcp54_250-OPcp54_352*RLcp54_253-OPcp54_36*RLcp54_247;
    ACcp54_253 = qdd(2)-OMcp54_149*ORcp54_350-OMcp54_152*ORcp54_353-OMcp54_16*ORcp54_347+OMcp54_349*ORcp54_150+OMcp54_352*ORcp54_153+OMcp54_36*...
 ORcp54_147-OPcp54_149*RLcp54_350-OPcp54_152*RLcp54_353-OPcp54_16*RLcp54_347+OPcp54_349*RLcp54_150+OPcp54_352*RLcp54_153+OPcp54_36*RLcp54_147;
    ACcp54_353 = qdd(3)+OMcp54_149*ORcp54_250+OMcp54_152*ORcp54_253+OMcp54_16*ORcp54_247-OMcp54_249*ORcp54_150-OMcp54_252*ORcp54_153-OMcp54_26*...
 ORcp54_147+OPcp54_149*RLcp54_250+OPcp54_152*RLcp54_253+OPcp54_16*RLcp54_247-OPcp54_249*RLcp54_150-OPcp54_252*RLcp54_153-OPcp54_26*RLcp54_147;
    OMcp54_154 = OMcp54_153+ROcp54_153*qd(54);
    OMcp54_254 = OMcp54_253+ROcp54_253*qd(54);
    OMcp54_354 = OMcp54_353+ROcp54_353*qd(54);
    OMcp54_155 = OMcp54_154+ROcp54_454*qd(55);
    OMcp54_255 = OMcp54_254+ROcp54_554*qd(55);
    OMcp54_355 = OMcp54_354+ROcp54_654*qd(55);
    OPcp54_155 = OPcp54_152+ROcp54_153*qdd(54)+ROcp54_454*qdd(55)+ROcp54_751*qdd(53)+qd(53)*(OMcp54_252*ROcp54_951-OMcp54_352*ROcp54_851)+qd(54)*(...
 OMcp54_253*ROcp54_353-OMcp54_353*ROcp54_253)+qd(55)*(OMcp54_254*ROcp54_654-OMcp54_354*ROcp54_554);
    OPcp54_255 = OPcp54_252+ROcp54_253*qdd(54)+ROcp54_554*qdd(55)+ROcp54_851*qdd(53)-qd(53)*(OMcp54_152*ROcp54_951-OMcp54_352*ROcp54_751)-qd(54)*(...
 OMcp54_153*ROcp54_353-OMcp54_353*ROcp54_153)-qd(55)*(OMcp54_154*ROcp54_654-OMcp54_354*ROcp54_454);
    OPcp54_355 = OPcp54_352+ROcp54_353*qdd(54)+ROcp54_654*qdd(55)+ROcp54_951*qdd(53)+qd(53)*(OMcp54_152*ROcp54_851-OMcp54_252*ROcp54_751)+qd(54)*(...
 OMcp54_153*ROcp54_253-OMcp54_253*ROcp54_153)+qd(55)*(OMcp54_154*ROcp54_554-OMcp54_254*ROcp54_454);

% = = Block_1_0_0_55_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp54_153;
    sens.P(2) = POcp54_253;
    sens.P(3) = POcp54_353;
    sens.R(1,1) = ROcp54_155;
    sens.R(1,2) = ROcp54_255;
    sens.R(1,3) = ROcp54_355;
    sens.R(2,1) = ROcp54_454;
    sens.R(2,2) = ROcp54_554;
    sens.R(2,3) = ROcp54_654;
    sens.R(3,1) = ROcp54_755;
    sens.R(3,2) = ROcp54_855;
    sens.R(3,3) = ROcp54_955;
    sens.V(1) = VIcp54_153;
    sens.V(2) = VIcp54_253;
    sens.V(3) = VIcp54_353;
    sens.OM(1) = OMcp54_155;
    sens.OM(2) = OMcp54_255;
    sens.OM(3) = OMcp54_355;
    sens.A(1) = ACcp54_153;
    sens.A(2) = ACcp54_253;
    sens.A(3) = ACcp54_353;
    sens.OMP(1) = OPcp54_155;
    sens.OMP(2) = OPcp54_255;
    sens.OMP(3) = OPcp54_355;
 
% 
case 56, 


% = = Block_1_0_0_56_0_1 = = 
 
% Sensor Kinematics 


    ROcp55_45 = -S4*C5;
    ROcp55_55 = C4*C5;
    ROcp55_75 = S4*S5;
    ROcp55_85 = -C4*S5;
    ROcp55_16 = -(ROcp55_75*S6-C4*C6);
    ROcp55_26 = -(ROcp55_85*S6-S4*C6);
    ROcp55_36 = -C5*S6;
    ROcp55_76 = ROcp55_75*C6+C4*S6;
    ROcp55_86 = ROcp55_85*C6+S4*S6;
    ROcp55_96 = C5*C6;
    OMcp55_15 = qd(5)*C4;
    OMcp55_25 = qd(5)*S4;
    OMcp55_16 = OMcp55_15+ROcp55_45*qd(6);
    OMcp55_26 = OMcp55_25+ROcp55_55*qd(6);
    OMcp55_36 = qd(4)+qd(6)*S5;
    OPcp55_16 = ROcp55_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp55_25*S5-ROcp55_55*qd(4));
    OPcp55_26 = ROcp55_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp55_15*S5-ROcp55_45*qd(4));
    OPcp55_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_56_0_13 = = 
 
% Sensor Kinematics 


    ROcp55_156 = ROcp55_16*C56+ROcp55_45*S56;
    ROcp55_256 = ROcp55_26*C56+ROcp55_55*S56;
    ROcp55_356 = ROcp55_36*C56+S5*S56;
    ROcp55_456 = -(ROcp55_16*S56-ROcp55_45*C56);
    ROcp55_556 = -(ROcp55_26*S56-ROcp55_55*C56);
    ROcp55_656 = -(ROcp55_36*S56-S5*C56);
    RLcp55_156 = ROcp55_16*s.dpt(1,16)+ROcp55_45*s.dpt(2,16)+ROcp55_76*s.dpt(3,16);
    RLcp55_256 = ROcp55_26*s.dpt(1,16)+ROcp55_55*s.dpt(2,16)+ROcp55_86*s.dpt(3,16);
    RLcp55_356 = ROcp55_36*s.dpt(1,16)+ROcp55_96*s.dpt(3,16)+s.dpt(2,16)*S5;
    POcp55_156 = RLcp55_156+q(1);
    POcp55_256 = RLcp55_256+q(2);
    POcp55_356 = RLcp55_356+q(3);
    OMcp55_156 = OMcp55_16+ROcp55_76*qd(56);
    OMcp55_256 = OMcp55_26+ROcp55_86*qd(56);
    OMcp55_356 = OMcp55_36+ROcp55_96*qd(56);
    ORcp55_156 = OMcp55_26*RLcp55_356-OMcp55_36*RLcp55_256;
    ORcp55_256 = -(OMcp55_16*RLcp55_356-OMcp55_36*RLcp55_156);
    ORcp55_356 = OMcp55_16*RLcp55_256-OMcp55_26*RLcp55_156;
    VIcp55_156 = ORcp55_156+qd(1);
    VIcp55_256 = ORcp55_256+qd(2);
    VIcp55_356 = ORcp55_356+qd(3);
    OPcp55_156 = OPcp55_16+ROcp55_76*qdd(56)+qd(56)*(OMcp55_26*ROcp55_96-OMcp55_36*ROcp55_86);
    OPcp55_256 = OPcp55_26+ROcp55_86*qdd(56)-qd(56)*(OMcp55_16*ROcp55_96-OMcp55_36*ROcp55_76);
    OPcp55_356 = OPcp55_36+ROcp55_96*qdd(56)+qd(56)*(OMcp55_16*ROcp55_86-OMcp55_26*ROcp55_76);
    ACcp55_156 = qdd(1)+OMcp55_26*ORcp55_356-OMcp55_36*ORcp55_256+OPcp55_26*RLcp55_356-OPcp55_36*RLcp55_256;
    ACcp55_256 = qdd(2)-OMcp55_16*ORcp55_356+OMcp55_36*ORcp55_156-OPcp55_16*RLcp55_356+OPcp55_36*RLcp55_156;
    ACcp55_356 = qdd(3)+OMcp55_16*ORcp55_256-OMcp55_26*ORcp55_156+OPcp55_16*RLcp55_256-OPcp55_26*RLcp55_156;

% = = Block_1_0_0_56_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp55_156;
    sens.P(2) = POcp55_256;
    sens.P(3) = POcp55_356;
    sens.R(1,1) = ROcp55_156;
    sens.R(1,2) = ROcp55_256;
    sens.R(1,3) = ROcp55_356;
    sens.R(2,1) = ROcp55_456;
    sens.R(2,2) = ROcp55_556;
    sens.R(2,3) = ROcp55_656;
    sens.R(3,1) = ROcp55_76;
    sens.R(3,2) = ROcp55_86;
    sens.R(3,3) = ROcp55_96;
    sens.V(1) = VIcp55_156;
    sens.V(2) = VIcp55_256;
    sens.V(3) = VIcp55_356;
    sens.OM(1) = OMcp55_156;
    sens.OM(2) = OMcp55_256;
    sens.OM(3) = OMcp55_356;
    sens.A(1) = ACcp55_156;
    sens.A(2) = ACcp55_256;
    sens.A(3) = ACcp55_356;
    sens.OMP(1) = OPcp55_156;
    sens.OMP(2) = OPcp55_256;
    sens.OMP(3) = OPcp55_356;
 
% 
case 57, 


% = = Block_1_0_0_57_0_1 = = 
 
% Sensor Kinematics 


    ROcp56_45 = -S4*C5;
    ROcp56_55 = C4*C5;
    ROcp56_75 = S4*S5;
    ROcp56_85 = -C4*S5;
    ROcp56_16 = -(ROcp56_75*S6-C4*C6);
    ROcp56_26 = -(ROcp56_85*S6-S4*C6);
    ROcp56_36 = -C5*S6;
    ROcp56_76 = ROcp56_75*C6+C4*S6;
    ROcp56_86 = ROcp56_85*C6+S4*S6;
    ROcp56_96 = C5*C6;
    OMcp56_15 = qd(5)*C4;
    OMcp56_25 = qd(5)*S4;
    OMcp56_16 = OMcp56_15+ROcp56_45*qd(6);
    OMcp56_26 = OMcp56_25+ROcp56_55*qd(6);
    OMcp56_36 = qd(4)+qd(6)*S5;
    OPcp56_16 = ROcp56_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp56_25*S5-ROcp56_55*qd(4));
    OPcp56_26 = ROcp56_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp56_15*S5-ROcp56_45*qd(4));
    OPcp56_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_57_0_13 = = 
 
% Sensor Kinematics 


    ROcp56_156 = ROcp56_16*C56+ROcp56_45*S56;
    ROcp56_256 = ROcp56_26*C56+ROcp56_55*S56;
    ROcp56_356 = ROcp56_36*C56+S5*S56;
    ROcp56_456 = -(ROcp56_16*S56-ROcp56_45*C56);
    ROcp56_556 = -(ROcp56_26*S56-ROcp56_55*C56);
    ROcp56_656 = -(ROcp56_36*S56-S5*C56);
    ROcp56_457 = ROcp56_456*C57+ROcp56_76*S57;
    ROcp56_557 = ROcp56_556*C57+ROcp56_86*S57;
    ROcp56_657 = ROcp56_656*C57+ROcp56_96*S57;
    ROcp56_757 = -(ROcp56_456*S57-ROcp56_76*C57);
    ROcp56_857 = -(ROcp56_556*S57-ROcp56_86*C57);
    ROcp56_957 = -(ROcp56_656*S57-ROcp56_96*C57);
    RLcp56_156 = ROcp56_16*s.dpt(1,16)+ROcp56_45*s.dpt(2,16)+ROcp56_76*s.dpt(3,16);
    RLcp56_256 = ROcp56_26*s.dpt(1,16)+ROcp56_55*s.dpt(2,16)+ROcp56_86*s.dpt(3,16);
    RLcp56_356 = ROcp56_36*s.dpt(1,16)+ROcp56_96*s.dpt(3,16)+s.dpt(2,16)*S5;
    POcp56_156 = RLcp56_156+q(1);
    POcp56_256 = RLcp56_256+q(2);
    POcp56_356 = RLcp56_356+q(3);
    OMcp56_156 = OMcp56_16+ROcp56_76*qd(56);
    OMcp56_256 = OMcp56_26+ROcp56_86*qd(56);
    OMcp56_356 = OMcp56_36+ROcp56_96*qd(56);
    ORcp56_156 = OMcp56_26*RLcp56_356-OMcp56_36*RLcp56_256;
    ORcp56_256 = -(OMcp56_16*RLcp56_356-OMcp56_36*RLcp56_156);
    ORcp56_356 = OMcp56_16*RLcp56_256-OMcp56_26*RLcp56_156;
    VIcp56_156 = ORcp56_156+qd(1);
    VIcp56_256 = ORcp56_256+qd(2);
    VIcp56_356 = ORcp56_356+qd(3);
    ACcp56_156 = qdd(1)+OMcp56_26*ORcp56_356-OMcp56_36*ORcp56_256+OPcp56_26*RLcp56_356-OPcp56_36*RLcp56_256;
    ACcp56_256 = qdd(2)-OMcp56_16*ORcp56_356+OMcp56_36*ORcp56_156-OPcp56_16*RLcp56_356+OPcp56_36*RLcp56_156;
    ACcp56_356 = qdd(3)+OMcp56_16*ORcp56_256-OMcp56_26*ORcp56_156+OPcp56_16*RLcp56_256-OPcp56_26*RLcp56_156;
    OMcp56_157 = OMcp56_156+ROcp56_156*qd(57);
    OMcp56_257 = OMcp56_256+ROcp56_256*qd(57);
    OMcp56_357 = OMcp56_356+ROcp56_356*qd(57);
    OPcp56_157 = OPcp56_16+ROcp56_156*qdd(57)+ROcp56_76*qdd(56)+qd(56)*(OMcp56_26*ROcp56_96-OMcp56_36*ROcp56_86)+qd(57)*(OMcp56_256*ROcp56_356-...
 OMcp56_356*ROcp56_256);
    OPcp56_257 = OPcp56_26+ROcp56_256*qdd(57)+ROcp56_86*qdd(56)-qd(56)*(OMcp56_16*ROcp56_96-OMcp56_36*ROcp56_76)-qd(57)*(OMcp56_156*ROcp56_356-...
 OMcp56_356*ROcp56_156);
    OPcp56_357 = OPcp56_36+ROcp56_356*qdd(57)+ROcp56_96*qdd(56)+qd(56)*(OMcp56_16*ROcp56_86-OMcp56_26*ROcp56_76)+qd(57)*(OMcp56_156*ROcp56_256-...
 OMcp56_256*ROcp56_156);

% = = Block_1_0_0_57_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp56_156;
    sens.P(2) = POcp56_256;
    sens.P(3) = POcp56_356;
    sens.R(1,1) = ROcp56_156;
    sens.R(1,2) = ROcp56_256;
    sens.R(1,3) = ROcp56_356;
    sens.R(2,1) = ROcp56_457;
    sens.R(2,2) = ROcp56_557;
    sens.R(2,3) = ROcp56_657;
    sens.R(3,1) = ROcp56_757;
    sens.R(3,2) = ROcp56_857;
    sens.R(3,3) = ROcp56_957;
    sens.V(1) = VIcp56_156;
    sens.V(2) = VIcp56_256;
    sens.V(3) = VIcp56_356;
    sens.OM(1) = OMcp56_157;
    sens.OM(2) = OMcp56_257;
    sens.OM(3) = OMcp56_357;
    sens.A(1) = ACcp56_156;
    sens.A(2) = ACcp56_256;
    sens.A(3) = ACcp56_356;
    sens.OMP(1) = OPcp56_157;
    sens.OMP(2) = OPcp56_257;
    sens.OMP(3) = OPcp56_357;
 
% 
case 58, 


% = = Block_1_0_0_58_0_1 = = 
 
% Sensor Kinematics 


    ROcp57_45 = -S4*C5;
    ROcp57_55 = C4*C5;
    ROcp57_75 = S4*S5;
    ROcp57_85 = -C4*S5;
    ROcp57_16 = -(ROcp57_75*S6-C4*C6);
    ROcp57_26 = -(ROcp57_85*S6-S4*C6);
    ROcp57_36 = -C5*S6;
    ROcp57_76 = ROcp57_75*C6+C4*S6;
    ROcp57_86 = ROcp57_85*C6+S4*S6;
    ROcp57_96 = C5*C6;
    OMcp57_15 = qd(5)*C4;
    OMcp57_25 = qd(5)*S4;
    OMcp57_16 = OMcp57_15+ROcp57_45*qd(6);
    OMcp57_26 = OMcp57_25+ROcp57_55*qd(6);
    OMcp57_36 = qd(4)+qd(6)*S5;
    OPcp57_16 = ROcp57_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp57_25*S5-ROcp57_55*qd(4));
    OPcp57_26 = ROcp57_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp57_15*S5-ROcp57_45*qd(4));
    OPcp57_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_58_0_14 = = 
 
% Sensor Kinematics 


    ROcp57_158 = ROcp57_16*C58+ROcp57_45*S58;
    ROcp57_258 = ROcp57_26*C58+ROcp57_55*S58;
    ROcp57_358 = ROcp57_36*C58+S5*S58;
    ROcp57_458 = -(ROcp57_16*S58-ROcp57_45*C58);
    ROcp57_558 = -(ROcp57_26*S58-ROcp57_55*C58);
    ROcp57_658 = -(ROcp57_36*S58-S5*C58);
    RLcp57_158 = ROcp57_16*s.dpt(1,17)+ROcp57_45*s.dpt(2,17)+ROcp57_76*s.dpt(3,17);
    RLcp57_258 = ROcp57_26*s.dpt(1,17)+ROcp57_55*s.dpt(2,17)+ROcp57_86*s.dpt(3,17);
    RLcp57_358 = ROcp57_36*s.dpt(1,17)+ROcp57_96*s.dpt(3,17)+s.dpt(2,17)*S5;
    POcp57_158 = RLcp57_158+q(1);
    POcp57_258 = RLcp57_258+q(2);
    POcp57_358 = RLcp57_358+q(3);
    OMcp57_158 = OMcp57_16+ROcp57_76*qd(58);
    OMcp57_258 = OMcp57_26+ROcp57_86*qd(58);
    OMcp57_358 = OMcp57_36+ROcp57_96*qd(58);
    ORcp57_158 = OMcp57_26*RLcp57_358-OMcp57_36*RLcp57_258;
    ORcp57_258 = -(OMcp57_16*RLcp57_358-OMcp57_36*RLcp57_158);
    ORcp57_358 = OMcp57_16*RLcp57_258-OMcp57_26*RLcp57_158;
    VIcp57_158 = ORcp57_158+qd(1);
    VIcp57_258 = ORcp57_258+qd(2);
    VIcp57_358 = ORcp57_358+qd(3);
    OPcp57_158 = OPcp57_16+ROcp57_76*qdd(58)+qd(58)*(OMcp57_26*ROcp57_96-OMcp57_36*ROcp57_86);
    OPcp57_258 = OPcp57_26+ROcp57_86*qdd(58)-qd(58)*(OMcp57_16*ROcp57_96-OMcp57_36*ROcp57_76);
    OPcp57_358 = OPcp57_36+ROcp57_96*qdd(58)+qd(58)*(OMcp57_16*ROcp57_86-OMcp57_26*ROcp57_76);
    ACcp57_158 = qdd(1)+OMcp57_26*ORcp57_358-OMcp57_36*ORcp57_258+OPcp57_26*RLcp57_358-OPcp57_36*RLcp57_258;
    ACcp57_258 = qdd(2)-OMcp57_16*ORcp57_358+OMcp57_36*ORcp57_158-OPcp57_16*RLcp57_358+OPcp57_36*RLcp57_158;
    ACcp57_358 = qdd(3)+OMcp57_16*ORcp57_258-OMcp57_26*ORcp57_158+OPcp57_16*RLcp57_258-OPcp57_26*RLcp57_158;

% = = Block_1_0_0_58_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp57_158;
    sens.P(2) = POcp57_258;
    sens.P(3) = POcp57_358;
    sens.R(1,1) = ROcp57_158;
    sens.R(1,2) = ROcp57_258;
    sens.R(1,3) = ROcp57_358;
    sens.R(2,1) = ROcp57_458;
    sens.R(2,2) = ROcp57_558;
    sens.R(2,3) = ROcp57_658;
    sens.R(3,1) = ROcp57_76;
    sens.R(3,2) = ROcp57_86;
    sens.R(3,3) = ROcp57_96;
    sens.V(1) = VIcp57_158;
    sens.V(2) = VIcp57_258;
    sens.V(3) = VIcp57_358;
    sens.OM(1) = OMcp57_158;
    sens.OM(2) = OMcp57_258;
    sens.OM(3) = OMcp57_358;
    sens.A(1) = ACcp57_158;
    sens.A(2) = ACcp57_258;
    sens.A(3) = ACcp57_358;
    sens.OMP(1) = OPcp57_158;
    sens.OMP(2) = OPcp57_258;
    sens.OMP(3) = OPcp57_358;
 
% 
case 59, 


% = = Block_1_0_0_59_0_1 = = 
 
% Sensor Kinematics 


    ROcp58_45 = -S4*C5;
    ROcp58_55 = C4*C5;
    ROcp58_75 = S4*S5;
    ROcp58_85 = -C4*S5;
    ROcp58_16 = -(ROcp58_75*S6-C4*C6);
    ROcp58_26 = -(ROcp58_85*S6-S4*C6);
    ROcp58_36 = -C5*S6;
    ROcp58_76 = ROcp58_75*C6+C4*S6;
    ROcp58_86 = ROcp58_85*C6+S4*S6;
    ROcp58_96 = C5*C6;
    OMcp58_15 = qd(5)*C4;
    OMcp58_25 = qd(5)*S4;
    OMcp58_16 = OMcp58_15+ROcp58_45*qd(6);
    OMcp58_26 = OMcp58_25+ROcp58_55*qd(6);
    OMcp58_36 = qd(4)+qd(6)*S5;
    OPcp58_16 = ROcp58_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp58_25*S5-ROcp58_55*qd(4));
    OPcp58_26 = ROcp58_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp58_15*S5-ROcp58_45*qd(4));
    OPcp58_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_59_0_14 = = 
 
% Sensor Kinematics 


    ROcp58_158 = ROcp58_16*C58+ROcp58_45*S58;
    ROcp58_258 = ROcp58_26*C58+ROcp58_55*S58;
    ROcp58_358 = ROcp58_36*C58+S5*S58;
    ROcp58_458 = -(ROcp58_16*S58-ROcp58_45*C58);
    ROcp58_558 = -(ROcp58_26*S58-ROcp58_55*C58);
    ROcp58_658 = -(ROcp58_36*S58-S5*C58);
    ROcp58_459 = ROcp58_458*C59+ROcp58_76*S59;
    ROcp58_559 = ROcp58_558*C59+ROcp58_86*S59;
    ROcp58_659 = ROcp58_658*C59+ROcp58_96*S59;
    ROcp58_759 = -(ROcp58_458*S59-ROcp58_76*C59);
    ROcp58_859 = -(ROcp58_558*S59-ROcp58_86*C59);
    ROcp58_959 = -(ROcp58_658*S59-ROcp58_96*C59);
    RLcp58_158 = ROcp58_16*s.dpt(1,17)+ROcp58_45*s.dpt(2,17)+ROcp58_76*s.dpt(3,17);
    RLcp58_258 = ROcp58_26*s.dpt(1,17)+ROcp58_55*s.dpt(2,17)+ROcp58_86*s.dpt(3,17);
    RLcp58_358 = ROcp58_36*s.dpt(1,17)+ROcp58_96*s.dpt(3,17)+s.dpt(2,17)*S5;
    POcp58_158 = RLcp58_158+q(1);
    POcp58_258 = RLcp58_258+q(2);
    POcp58_358 = RLcp58_358+q(3);
    OMcp58_158 = OMcp58_16+ROcp58_76*qd(58);
    OMcp58_258 = OMcp58_26+ROcp58_86*qd(58);
    OMcp58_358 = OMcp58_36+ROcp58_96*qd(58);
    ORcp58_158 = OMcp58_26*RLcp58_358-OMcp58_36*RLcp58_258;
    ORcp58_258 = -(OMcp58_16*RLcp58_358-OMcp58_36*RLcp58_158);
    ORcp58_358 = OMcp58_16*RLcp58_258-OMcp58_26*RLcp58_158;
    VIcp58_158 = ORcp58_158+qd(1);
    VIcp58_258 = ORcp58_258+qd(2);
    VIcp58_358 = ORcp58_358+qd(3);
    ACcp58_158 = qdd(1)+OMcp58_26*ORcp58_358-OMcp58_36*ORcp58_258+OPcp58_26*RLcp58_358-OPcp58_36*RLcp58_258;
    ACcp58_258 = qdd(2)-OMcp58_16*ORcp58_358+OMcp58_36*ORcp58_158-OPcp58_16*RLcp58_358+OPcp58_36*RLcp58_158;
    ACcp58_358 = qdd(3)+OMcp58_16*ORcp58_258-OMcp58_26*ORcp58_158+OPcp58_16*RLcp58_258-OPcp58_26*RLcp58_158;
    OMcp58_159 = OMcp58_158+ROcp58_158*qd(59);
    OMcp58_259 = OMcp58_258+ROcp58_258*qd(59);
    OMcp58_359 = OMcp58_358+ROcp58_358*qd(59);
    OPcp58_159 = OPcp58_16+ROcp58_158*qdd(59)+ROcp58_76*qdd(58)+qd(58)*(OMcp58_26*ROcp58_96-OMcp58_36*ROcp58_86)+qd(59)*(OMcp58_258*ROcp58_358-...
 OMcp58_358*ROcp58_258);
    OPcp58_259 = OPcp58_26+ROcp58_258*qdd(59)+ROcp58_86*qdd(58)-qd(58)*(OMcp58_16*ROcp58_96-OMcp58_36*ROcp58_76)-qd(59)*(OMcp58_158*ROcp58_358-...
 OMcp58_358*ROcp58_158);
    OPcp58_359 = OPcp58_36+ROcp58_358*qdd(59)+ROcp58_96*qdd(58)+qd(58)*(OMcp58_16*ROcp58_86-OMcp58_26*ROcp58_76)+qd(59)*(OMcp58_158*ROcp58_258-...
 OMcp58_258*ROcp58_158);

% = = Block_1_0_0_59_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp58_158;
    sens.P(2) = POcp58_258;
    sens.P(3) = POcp58_358;
    sens.R(1,1) = ROcp58_158;
    sens.R(1,2) = ROcp58_258;
    sens.R(1,3) = ROcp58_358;
    sens.R(2,1) = ROcp58_459;
    sens.R(2,2) = ROcp58_559;
    sens.R(2,3) = ROcp58_659;
    sens.R(3,1) = ROcp58_759;
    sens.R(3,2) = ROcp58_859;
    sens.R(3,3) = ROcp58_959;
    sens.V(1) = VIcp58_158;
    sens.V(2) = VIcp58_258;
    sens.V(3) = VIcp58_358;
    sens.OM(1) = OMcp58_159;
    sens.OM(2) = OMcp58_259;
    sens.OM(3) = OMcp58_359;
    sens.A(1) = ACcp58_158;
    sens.A(2) = ACcp58_258;
    sens.A(3) = ACcp58_358;
    sens.OMP(1) = OPcp58_159;
    sens.OMP(2) = OPcp58_259;
    sens.OMP(3) = OPcp58_359;
 
% 
case 60, 


% = = Block_1_0_0_60_0_1 = = 
 
% Sensor Kinematics 


    ROcp59_45 = -S4*C5;
    ROcp59_55 = C4*C5;
    ROcp59_75 = S4*S5;
    ROcp59_85 = -C4*S5;
    ROcp59_16 = -(ROcp59_75*S6-C4*C6);
    ROcp59_26 = -(ROcp59_85*S6-S4*C6);
    ROcp59_76 = ROcp59_75*C6+C4*S6;
    ROcp59_86 = ROcp59_85*C6+S4*S6;
    OMcp59_15 = qd(5)*C4;
    OMcp59_25 = qd(5)*S4;
    OMcp59_16 = OMcp59_15+ROcp59_45*qd(6);
    OMcp59_26 = OMcp59_25+ROcp59_55*qd(6);
    OMcp59_36 = qd(4)+qd(6)*S5;
    OPcp59_16 = ROcp59_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp59_25*S5-ROcp59_55*qd(4));
    OPcp59_26 = ROcp59_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp59_15*S5-ROcp59_45*qd(4));
    OPcp59_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_60_0_15 = = 
 
% Sensor Kinematics 


    ROcp59_160 = ROcp59_16*C60-ROcp59_76*S60;
    ROcp59_260 = ROcp59_26*C60-ROcp59_86*S60;
    ROcp59_360 = -C5*S6p60;
    ROcp59_760 = ROcp59_16*S60+ROcp59_76*C60;
    ROcp59_860 = ROcp59_26*S60+ROcp59_86*C60;
    ROcp59_960 = C5*C6p60;
    RLcp59_160 = ROcp59_16*s.dpt(1,21)+ROcp59_45*s.dpt(2,21)+ROcp59_76*s.dpt(3,21);
    RLcp59_260 = ROcp59_26*s.dpt(1,21)+ROcp59_55*s.dpt(2,21)+ROcp59_86*s.dpt(3,21);
    RLcp59_360 = s.dpt(2,21)*S5-C5*(s.dpt(1,21)*S6-s.dpt(3,21)*C6);
    POcp59_160 = RLcp59_160+q(1);
    POcp59_260 = RLcp59_260+q(2);
    POcp59_360 = RLcp59_360+q(3);
    OMcp59_160 = OMcp59_16+ROcp59_45*qd(60);
    OMcp59_260 = OMcp59_26+ROcp59_55*qd(60);
    OMcp59_360 = OMcp59_36+qd(60)*S5;
    ORcp59_160 = OMcp59_26*RLcp59_360-OMcp59_36*RLcp59_260;
    ORcp59_260 = -(OMcp59_16*RLcp59_360-OMcp59_36*RLcp59_160);
    ORcp59_360 = OMcp59_16*RLcp59_260-OMcp59_26*RLcp59_160;
    VIcp59_160 = ORcp59_160+qd(1);
    VIcp59_260 = ORcp59_260+qd(2);
    VIcp59_360 = ORcp59_360+qd(3);
    OPcp59_160 = OPcp59_16+ROcp59_45*qdd(60)+qd(60)*(OMcp59_26*S5-OMcp59_36*ROcp59_55);
    OPcp59_260 = OPcp59_26+ROcp59_55*qdd(60)-qd(60)*(OMcp59_16*S5-OMcp59_36*ROcp59_45);
    OPcp59_360 = OPcp59_36+qdd(60)*S5+qd(60)*(OMcp59_16*ROcp59_55-OMcp59_26*ROcp59_45);
    ACcp59_160 = qdd(1)+OMcp59_26*ORcp59_360-OMcp59_36*ORcp59_260+OPcp59_26*RLcp59_360-OPcp59_36*RLcp59_260;
    ACcp59_260 = qdd(2)-OMcp59_16*ORcp59_360+OMcp59_36*ORcp59_160-OPcp59_16*RLcp59_360+OPcp59_36*RLcp59_160;
    ACcp59_360 = qdd(3)+OMcp59_16*ORcp59_260-OMcp59_26*ORcp59_160+OPcp59_16*RLcp59_260-OPcp59_26*RLcp59_160;

% = = Block_1_0_0_60_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp59_160;
    sens.P(2) = POcp59_260;
    sens.P(3) = POcp59_360;
    sens.R(1,1) = ROcp59_160;
    sens.R(1,2) = ROcp59_260;
    sens.R(1,3) = ROcp59_360;
    sens.R(2,1) = ROcp59_45;
    sens.R(2,2) = ROcp59_55;
    sens.R(2,3) = S5;
    sens.R(3,1) = ROcp59_760;
    sens.R(3,2) = ROcp59_860;
    sens.R(3,3) = ROcp59_960;
    sens.V(1) = VIcp59_160;
    sens.V(2) = VIcp59_260;
    sens.V(3) = VIcp59_360;
    sens.OM(1) = OMcp59_160;
    sens.OM(2) = OMcp59_260;
    sens.OM(3) = OMcp59_360;
    sens.A(1) = ACcp59_160;
    sens.A(2) = ACcp59_260;
    sens.A(3) = ACcp59_360;
    sens.OMP(1) = OPcp59_160;
    sens.OMP(2) = OPcp59_260;
    sens.OMP(3) = OPcp59_360;
 
% 
case 61, 


% = = Block_1_0_0_61_0_1 = = 
 
% Sensor Kinematics 


    ROcp60_45 = -S4*C5;
    ROcp60_55 = C4*C5;
    ROcp60_75 = S4*S5;
    ROcp60_85 = -C4*S5;
    ROcp60_16 = -(ROcp60_75*S6-C4*C6);
    ROcp60_26 = -(ROcp60_85*S6-S4*C6);
    ROcp60_76 = ROcp60_75*C6+C4*S6;
    ROcp60_86 = ROcp60_85*C6+S4*S6;
    OMcp60_15 = qd(5)*C4;
    OMcp60_25 = qd(5)*S4;
    OMcp60_16 = OMcp60_15+ROcp60_45*qd(6);
    OMcp60_26 = OMcp60_25+ROcp60_55*qd(6);
    OMcp60_36 = qd(4)+qd(6)*S5;
    OPcp60_16 = ROcp60_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp60_25*S5-ROcp60_55*qd(4));
    OPcp60_26 = ROcp60_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp60_15*S5-ROcp60_45*qd(4));
    OPcp60_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_61_0_15 = = 
 
% Sensor Kinematics 


    ROcp60_160 = ROcp60_16*C60-ROcp60_76*S60;
    ROcp60_260 = ROcp60_26*C60-ROcp60_86*S60;
    ROcp60_760 = ROcp60_16*S60+ROcp60_76*C60;
    ROcp60_860 = ROcp60_26*S60+ROcp60_86*C60;
    ROcp60_161 = ROcp60_160*C61-ROcp60_760*S61;
    ROcp60_261 = ROcp60_260*C61-ROcp60_860*S61;
    ROcp60_361 = -C5*S61p6p60;
    ROcp60_761 = ROcp60_160*S61+ROcp60_760*C61;
    ROcp60_861 = ROcp60_260*S61+ROcp60_860*C61;
    ROcp60_961 = C5*C61p6p60;
    RLcp60_160 = ROcp60_16*s.dpt(1,21)+ROcp60_45*s.dpt(2,21)+ROcp60_76*s.dpt(3,21);
    RLcp60_260 = ROcp60_26*s.dpt(1,21)+ROcp60_55*s.dpt(2,21)+ROcp60_86*s.dpt(3,21);
    RLcp60_360 = s.dpt(2,21)*S5-C5*(s.dpt(1,21)*S6-s.dpt(3,21)*C6);
    OMcp60_160 = OMcp60_16+ROcp60_45*qd(60);
    OMcp60_260 = OMcp60_26+ROcp60_55*qd(60);
    OMcp60_360 = OMcp60_36+qd(60)*S5;
    ORcp60_160 = OMcp60_26*RLcp60_360-OMcp60_36*RLcp60_260;
    ORcp60_260 = -(OMcp60_16*RLcp60_360-OMcp60_36*RLcp60_160);
    ORcp60_360 = OMcp60_16*RLcp60_260-OMcp60_26*RLcp60_160;
    OPcp60_160 = OPcp60_16+ROcp60_45*qdd(60)+qd(60)*(OMcp60_26*S5-OMcp60_36*ROcp60_55);
    OPcp60_260 = OPcp60_26+ROcp60_55*qdd(60)-qd(60)*(OMcp60_16*S5-OMcp60_36*ROcp60_45);
    OPcp60_360 = OPcp60_36+qdd(60)*S5+qd(60)*(OMcp60_16*ROcp60_55-OMcp60_26*ROcp60_45);
    RLcp60_161 = ROcp60_45*s.dpt(2,66);
    RLcp60_261 = ROcp60_55*s.dpt(2,66);
    RLcp60_361 = s.dpt(2,66)*S5;
    POcp60_161 = RLcp60_160+RLcp60_161+q(1);
    POcp60_261 = RLcp60_260+RLcp60_261+q(2);
    POcp60_361 = RLcp60_360+RLcp60_361+q(3);
    OMcp60_161 = OMcp60_160+ROcp60_45*qd(61);
    OMcp60_261 = OMcp60_260+ROcp60_55*qd(61);
    OMcp60_361 = OMcp60_360+qd(61)*S5;
    ORcp60_161 = OMcp60_260*RLcp60_361-OMcp60_360*RLcp60_261;
    ORcp60_261 = -(OMcp60_160*RLcp60_361-OMcp60_360*RLcp60_161);
    ORcp60_361 = OMcp60_160*RLcp60_261-OMcp60_260*RLcp60_161;
    VIcp60_161 = ORcp60_160+ORcp60_161+qd(1);
    VIcp60_261 = ORcp60_260+ORcp60_261+qd(2);
    VIcp60_361 = ORcp60_360+ORcp60_361+qd(3);
    OPcp60_161 = OPcp60_160+ROcp60_45*qdd(61)+qd(61)*(OMcp60_260*S5-OMcp60_360*ROcp60_55);
    OPcp60_261 = OPcp60_260+ROcp60_55*qdd(61)-qd(61)*(OMcp60_160*S5-OMcp60_360*ROcp60_45);
    OPcp60_361 = OPcp60_360+qdd(61)*S5+qd(61)*(OMcp60_160*ROcp60_55-OMcp60_260*ROcp60_45);
    ACcp60_161 = qdd(1)+OMcp60_26*ORcp60_360+OMcp60_260*ORcp60_361-OMcp60_36*ORcp60_260-OMcp60_360*ORcp60_261+OPcp60_26*RLcp60_360+OPcp60_260*...
 RLcp60_361-OPcp60_36*RLcp60_260-OPcp60_360*RLcp60_261;
    ACcp60_261 = qdd(2)-OMcp60_16*ORcp60_360-OMcp60_160*ORcp60_361+OMcp60_36*ORcp60_160+OMcp60_360*ORcp60_161-OPcp60_16*RLcp60_360-OPcp60_160*...
 RLcp60_361+OPcp60_36*RLcp60_160+OPcp60_360*RLcp60_161;
    ACcp60_361 = qdd(3)+OMcp60_16*ORcp60_260+OMcp60_160*ORcp60_261-OMcp60_26*ORcp60_160-OMcp60_260*ORcp60_161+OPcp60_16*RLcp60_260+OPcp60_160*...
 RLcp60_261-OPcp60_26*RLcp60_160-OPcp60_260*RLcp60_161;

% = = Block_1_0_0_61_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp60_161;
    sens.P(2) = POcp60_261;
    sens.P(3) = POcp60_361;
    sens.R(1,1) = ROcp60_161;
    sens.R(1,2) = ROcp60_261;
    sens.R(1,3) = ROcp60_361;
    sens.R(2,1) = ROcp60_45;
    sens.R(2,2) = ROcp60_55;
    sens.R(2,3) = S5;
    sens.R(3,1) = ROcp60_761;
    sens.R(3,2) = ROcp60_861;
    sens.R(3,3) = ROcp60_961;
    sens.V(1) = VIcp60_161;
    sens.V(2) = VIcp60_261;
    sens.V(3) = VIcp60_361;
    sens.OM(1) = OMcp60_161;
    sens.OM(2) = OMcp60_261;
    sens.OM(3) = OMcp60_361;
    sens.A(1) = ACcp60_161;
    sens.A(2) = ACcp60_261;
    sens.A(3) = ACcp60_361;
    sens.OMP(1) = OPcp60_161;
    sens.OMP(2) = OPcp60_261;
    sens.OMP(3) = OPcp60_361;
 
% 
case 62, 


% = = Block_1_0_0_62_0_1 = = 
 
% Sensor Kinematics 


    ROcp61_45 = -S4*C5;
    ROcp61_55 = C4*C5;
    ROcp61_75 = S4*S5;
    ROcp61_85 = -C4*S5;
    ROcp61_16 = -(ROcp61_75*S6-C4*C6);
    ROcp61_26 = -(ROcp61_85*S6-S4*C6);
    ROcp61_76 = ROcp61_75*C6+C4*S6;
    ROcp61_86 = ROcp61_85*C6+S4*S6;
    OMcp61_15 = qd(5)*C4;
    OMcp61_25 = qd(5)*S4;
    OMcp61_16 = OMcp61_15+ROcp61_45*qd(6);
    OMcp61_26 = OMcp61_25+ROcp61_55*qd(6);
    OMcp61_36 = qd(4)+qd(6)*S5;
    OPcp61_16 = ROcp61_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp61_25*S5-ROcp61_55*qd(4));
    OPcp61_26 = ROcp61_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp61_15*S5-ROcp61_45*qd(4));
    OPcp61_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_62_0_16 = = 
 
% Sensor Kinematics 


    ROcp61_162 = ROcp61_16*C62-ROcp61_76*S62;
    ROcp61_262 = ROcp61_26*C62-ROcp61_86*S62;
    ROcp61_362 = -C5*S6p62;
    ROcp61_762 = ROcp61_16*S62+ROcp61_76*C62;
    ROcp61_862 = ROcp61_26*S62+ROcp61_86*C62;
    ROcp61_962 = C5*C6p62;
    RLcp61_162 = ROcp61_16*s.dpt(1,22)+ROcp61_45*s.dpt(2,22)+ROcp61_76*s.dpt(3,22);
    RLcp61_262 = ROcp61_26*s.dpt(1,22)+ROcp61_55*s.dpt(2,22)+ROcp61_86*s.dpt(3,22);
    RLcp61_362 = s.dpt(2,22)*S5-C5*(s.dpt(1,22)*S6-s.dpt(3,22)*C6);
    POcp61_162 = RLcp61_162+q(1);
    POcp61_262 = RLcp61_262+q(2);
    POcp61_362 = RLcp61_362+q(3);
    OMcp61_162 = OMcp61_16+ROcp61_45*qd(62);
    OMcp61_262 = OMcp61_26+ROcp61_55*qd(62);
    OMcp61_362 = OMcp61_36+qd(62)*S5;
    ORcp61_162 = OMcp61_26*RLcp61_362-OMcp61_36*RLcp61_262;
    ORcp61_262 = -(OMcp61_16*RLcp61_362-OMcp61_36*RLcp61_162);
    ORcp61_362 = OMcp61_16*RLcp61_262-OMcp61_26*RLcp61_162;
    VIcp61_162 = ORcp61_162+qd(1);
    VIcp61_262 = ORcp61_262+qd(2);
    VIcp61_362 = ORcp61_362+qd(3);
    OPcp61_162 = OPcp61_16+ROcp61_45*qdd(62)+qd(62)*(OMcp61_26*S5-OMcp61_36*ROcp61_55);
    OPcp61_262 = OPcp61_26+ROcp61_55*qdd(62)-qd(62)*(OMcp61_16*S5-OMcp61_36*ROcp61_45);
    OPcp61_362 = OPcp61_36+qdd(62)*S5+qd(62)*(OMcp61_16*ROcp61_55-OMcp61_26*ROcp61_45);
    ACcp61_162 = qdd(1)+OMcp61_26*ORcp61_362-OMcp61_36*ORcp61_262+OPcp61_26*RLcp61_362-OPcp61_36*RLcp61_262;
    ACcp61_262 = qdd(2)-OMcp61_16*ORcp61_362+OMcp61_36*ORcp61_162-OPcp61_16*RLcp61_362+OPcp61_36*RLcp61_162;
    ACcp61_362 = qdd(3)+OMcp61_16*ORcp61_262-OMcp61_26*ORcp61_162+OPcp61_16*RLcp61_262-OPcp61_26*RLcp61_162;

% = = Block_1_0_0_62_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp61_162;
    sens.P(2) = POcp61_262;
    sens.P(3) = POcp61_362;
    sens.R(1,1) = ROcp61_162;
    sens.R(1,2) = ROcp61_262;
    sens.R(1,3) = ROcp61_362;
    sens.R(2,1) = ROcp61_45;
    sens.R(2,2) = ROcp61_55;
    sens.R(2,3) = S5;
    sens.R(3,1) = ROcp61_762;
    sens.R(3,2) = ROcp61_862;
    sens.R(3,3) = ROcp61_962;
    sens.V(1) = VIcp61_162;
    sens.V(2) = VIcp61_262;
    sens.V(3) = VIcp61_362;
    sens.OM(1) = OMcp61_162;
    sens.OM(2) = OMcp61_262;
    sens.OM(3) = OMcp61_362;
    sens.A(1) = ACcp61_162;
    sens.A(2) = ACcp61_262;
    sens.A(3) = ACcp61_362;
    sens.OMP(1) = OPcp61_162;
    sens.OMP(2) = OPcp61_262;
    sens.OMP(3) = OPcp61_362;
 
% 
case 63, 


% = = Block_1_0_0_63_0_1 = = 
 
% Sensor Kinematics 


    ROcp62_45 = -S4*C5;
    ROcp62_55 = C4*C5;
    ROcp62_75 = S4*S5;
    ROcp62_85 = -C4*S5;
    ROcp62_16 = -(ROcp62_75*S6-C4*C6);
    ROcp62_26 = -(ROcp62_85*S6-S4*C6);
    ROcp62_76 = ROcp62_75*C6+C4*S6;
    ROcp62_86 = ROcp62_85*C6+S4*S6;
    OMcp62_15 = qd(5)*C4;
    OMcp62_25 = qd(5)*S4;
    OMcp62_16 = OMcp62_15+ROcp62_45*qd(6);
    OMcp62_26 = OMcp62_25+ROcp62_55*qd(6);
    OMcp62_36 = qd(4)+qd(6)*S5;
    OPcp62_16 = ROcp62_45*qdd(6)+qdd(5)*C4-qd(4)*qd(5)*S4+qd(6)*(OMcp62_25*S5-ROcp62_55*qd(4));
    OPcp62_26 = ROcp62_55*qdd(6)+qdd(5)*S4+qd(4)*qd(5)*C4-qd(6)*(OMcp62_15*S5-ROcp62_45*qd(4));
    OPcp62_36 = qdd(4)+qdd(6)*S5+qd(5)*qd(6)*C5;

% = = Block_1_0_0_63_0_16 = = 
 
% Sensor Kinematics 


    ROcp62_162 = ROcp62_16*C62-ROcp62_76*S62;
    ROcp62_262 = ROcp62_26*C62-ROcp62_86*S62;
    ROcp62_762 = ROcp62_16*S62+ROcp62_76*C62;
    ROcp62_862 = ROcp62_26*S62+ROcp62_86*C62;
    ROcp62_163 = ROcp62_162*C63-ROcp62_762*S63;
    ROcp62_263 = ROcp62_262*C63-ROcp62_862*S63;
    ROcp62_363 = -C5*S63p6p62;
    ROcp62_763 = ROcp62_162*S63+ROcp62_762*C63;
    ROcp62_863 = ROcp62_262*S63+ROcp62_862*C63;
    ROcp62_963 = C5*C63p6p62;
    RLcp62_162 = ROcp62_16*s.dpt(1,22)+ROcp62_45*s.dpt(2,22)+ROcp62_76*s.dpt(3,22);
    RLcp62_262 = ROcp62_26*s.dpt(1,22)+ROcp62_55*s.dpt(2,22)+ROcp62_86*s.dpt(3,22);
    RLcp62_362 = s.dpt(2,22)*S5-C5*(s.dpt(1,22)*S6-s.dpt(3,22)*C6);
    OMcp62_162 = OMcp62_16+ROcp62_45*qd(62);
    OMcp62_262 = OMcp62_26+ROcp62_55*qd(62);
    OMcp62_362 = OMcp62_36+qd(62)*S5;
    ORcp62_162 = OMcp62_26*RLcp62_362-OMcp62_36*RLcp62_262;
    ORcp62_262 = -(OMcp62_16*RLcp62_362-OMcp62_36*RLcp62_162);
    ORcp62_362 = OMcp62_16*RLcp62_262-OMcp62_26*RLcp62_162;
    OPcp62_162 = OPcp62_16+ROcp62_45*qdd(62)+qd(62)*(OMcp62_26*S5-OMcp62_36*ROcp62_55);
    OPcp62_262 = OPcp62_26+ROcp62_55*qdd(62)-qd(62)*(OMcp62_16*S5-OMcp62_36*ROcp62_45);
    OPcp62_362 = OPcp62_36+qdd(62)*S5+qd(62)*(OMcp62_16*ROcp62_55-OMcp62_26*ROcp62_45);
    RLcp62_163 = ROcp62_45*s.dpt(2,70);
    RLcp62_263 = ROcp62_55*s.dpt(2,70);
    RLcp62_363 = s.dpt(2,70)*S5;
    POcp62_163 = RLcp62_162+RLcp62_163+q(1);
    POcp62_263 = RLcp62_262+RLcp62_263+q(2);
    POcp62_363 = RLcp62_362+RLcp62_363+q(3);
    OMcp62_163 = OMcp62_162+ROcp62_45*qd(63);
    OMcp62_263 = OMcp62_262+ROcp62_55*qd(63);
    OMcp62_363 = OMcp62_362+qd(63)*S5;
    ORcp62_163 = OMcp62_262*RLcp62_363-OMcp62_362*RLcp62_263;
    ORcp62_263 = -(OMcp62_162*RLcp62_363-OMcp62_362*RLcp62_163);
    ORcp62_363 = OMcp62_162*RLcp62_263-OMcp62_262*RLcp62_163;
    VIcp62_163 = ORcp62_162+ORcp62_163+qd(1);
    VIcp62_263 = ORcp62_262+ORcp62_263+qd(2);
    VIcp62_363 = ORcp62_362+ORcp62_363+qd(3);
    OPcp62_163 = OPcp62_162+ROcp62_45*qdd(63)+qd(63)*(OMcp62_262*S5-OMcp62_362*ROcp62_55);
    OPcp62_263 = OPcp62_262+ROcp62_55*qdd(63)-qd(63)*(OMcp62_162*S5-OMcp62_362*ROcp62_45);
    OPcp62_363 = OPcp62_362+qdd(63)*S5+qd(63)*(OMcp62_162*ROcp62_55-OMcp62_262*ROcp62_45);
    ACcp62_163 = qdd(1)+OMcp62_26*ORcp62_362+OMcp62_262*ORcp62_363-OMcp62_36*ORcp62_262-OMcp62_362*ORcp62_263+OPcp62_26*RLcp62_362+OPcp62_262*...
 RLcp62_363-OPcp62_36*RLcp62_262-OPcp62_362*RLcp62_263;
    ACcp62_263 = qdd(2)-OMcp62_16*ORcp62_362-OMcp62_162*ORcp62_363+OMcp62_36*ORcp62_162+OMcp62_362*ORcp62_163-OPcp62_16*RLcp62_362-OPcp62_162*...
 RLcp62_363+OPcp62_36*RLcp62_162+OPcp62_362*RLcp62_163;
    ACcp62_363 = qdd(3)+OMcp62_16*ORcp62_262+OMcp62_162*ORcp62_263-OMcp62_26*ORcp62_162-OMcp62_262*ORcp62_163+OPcp62_16*RLcp62_262+OPcp62_162*...
 RLcp62_263-OPcp62_26*RLcp62_162-OPcp62_262*RLcp62_163;

% = = Block_1_0_0_63_1_0 = = 
 
% Symbolic Outputs  

    sens.P(1) = POcp62_163;
    sens.P(2) = POcp62_263;
    sens.P(3) = POcp62_363;
    sens.R(1,1) = ROcp62_163;
    sens.R(1,2) = ROcp62_263;
    sens.R(1,3) = ROcp62_363;
    sens.R(2,1) = ROcp62_45;
    sens.R(2,2) = ROcp62_55;
    sens.R(2,3) = S5;
    sens.R(3,1) = ROcp62_763;
    sens.R(3,2) = ROcp62_863;
    sens.R(3,3) = ROcp62_963;
    sens.V(1) = VIcp62_163;
    sens.V(2) = VIcp62_263;
    sens.V(3) = VIcp62_363;
    sens.OM(1) = OMcp62_163;
    sens.OM(2) = OMcp62_263;
    sens.OM(3) = OMcp62_363;
    sens.A(1) = ACcp62_163;
    sens.A(2) = ACcp62_263;
    sens.A(3) = ACcp62_363;
    sens.OMP(1) = OPcp62_163;
    sens.OMP(2) = OPcp62_263;
    sens.OMP(3) = OPcp62_363;

end


% ====== END Task 1 ====== 

  

