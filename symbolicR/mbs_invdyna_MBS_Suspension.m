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
%	==> Function : F 2 : Inverse Dynamics : RNEA
%	==> Flops complexity : 124
%
%	==> Generation Time :  0.000 seconds
%	==> Post-Processing :  0.000 seconds
%
%-------------------------------------------------------------
%
function [Qq] = invdyna(s,tsim,usrfun)

 Qq = zeros(6,1);

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

% = = Block_0_1_0_0_0_0 = = 
 
% Trigonometric Variables  

  S3p4 = C3*S4+S3*C4;
  C3p4 = C3*C4-S3*S4;
 
% Forward Kinematics 

  OM14 = qd(3)+qd(4);
  OMp14 = qdd(3)+qdd(4);
  BS54 = -OM14*OM14;
  ALPHA24 = qdd(1)*S3p4;
  ALPHA34 = qdd(1)*C3p4;
  OM15 = qd(5)+OM14;
  ALPHA35 = C5*(ALPHA34+OMp14*s.dpt(2,6))-S5*(ALPHA24+BS54*s.dpt(2,6));
 
% Backward Dynamics 

  Fs26 = -(s.frc(2,6)-s.m(6)*(C5*(ALPHA24+BS54*s.dpt(2,6))+S5*(ALPHA34+OMp14*s.dpt(2,6))));
  Cq26 = -(s.trq(2,6)-qdd(6)*s.In(5,6));
  Fq35 = -(C6*(s.frc(3,6)-s.m(6)*ALPHA35*C6)-S6*(s.frc(1,6)+s.m(6)*ALPHA35*S6));
  Cq15 = -(C6*(s.trq(1,6)+qd(6)*s.In(5,6)*OM15*S6)+S6*(s.trq(3,6)-qd(6)*s.In(5,6)*OM15*C6));
  Fq24 = -(s.frc(2,4)-s.m(4)*ALPHA24+Fq35*S5-Fs26*C5);
  Fq34 = -(s.frc(3,4)-s.m(4)*ALPHA34-Fq35*C5-Fs26*S5);
  Cq14 = -(s.trq(1,4)-Cq15-s.dpt(2,6)*(Fq35*C5+Fs26*S5));
  Cq13 = -(s.trq(1,3)-Cq14-qdd(3)*s.In(1,3));
  Cq12 = -(s.trq(1,2)-qdd(2)*s.In(1,2));
  Fq31 = -(s.frc(3,1)-qdd(1)*s.m(1)+C2*(s.frc(3,2)-qdd(1)*s.m(2)*C2)+S2*(s.frc(2,2)-qdd(1)*s.m(2)*S2)+C3*(s.frc(3,3)-qdd(1)*s.m(3)*C3-Fq24*S4-...
 Fq34*C4)+S3*(s.frc(2,3)-qdd(1)*s.m(3)*S3-Fq24*C4+Fq34*S4));

% = = Block_0_2_0_0_0_0 = = 
 
% Symbolic Outputs  

  Qq(1) = Fq31;
  Qq(2) = Cq12;
  Qq(3) = Cq13;
  Qq(4) = Cq14;
  Qq(5) = Cq15;
  Qq(6) = Cq26;

% ====== END Task 0 ====== 

  

