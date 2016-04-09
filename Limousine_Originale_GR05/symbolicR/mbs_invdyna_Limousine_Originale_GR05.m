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
%	==> Generation Date : Sat Apr 25 21:13:51 2015
%
%	==> Project name : Limousine_Originale_GR05
%	==> using XML input file 
%
%	==> Number of joints : 63
%
%	==> Function : F 2 : Inverse Dynamics : RNEA
%	==> Flops complexity : 4929
%
%	==> Generation Time :  0.070 seconds
%	==> Post-Processing :  0.060 seconds
%
%-------------------------------------------------------------
%
function [Qq] = invdyna(s,tsim,usrfun)

 Qq = zeros(63,1);

q = s.q; 
qd = s.qd; 
qdd = s.qdd; 
frc = s.frc; 
trq = s.trq; 

% === begin imp_aux === 

% === end imp_aux === 

% ===== BEGIN task 0 ===== 

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

% = = Block_0_1_0_0_0_0 = = 
 
% Forward Kinematics 

  ALPHA33 = qdd(3)-s.g(3);
  ALPHA14 = qdd(1)*C4+qdd(2)*S4;
  ALPHA24 = -(qdd(1)*S4-qdd(2)*C4);
  OM35 = qd(4)*C5;
  OMp35 = -(qd(4)*qd(5)*S5-qdd(4)*C5);
  ALPHA25 = ALPHA24*C5+ALPHA33*S5;
  ALPHA35 = -(ALPHA24*S5-ALPHA33*C5);
  OM16 = qd(5)*C6-OM35*S6;
  OM26 = qd(6)+qd(4)*S5;
  OM36 = qd(5)*S6+OM35*C6;
  OMp16 = C6*(qdd(5)-qd(6)*OM35)-S6*(OMp35+qd(5)*qd(6));
  OMp26 = qdd(6)+qd(4)*qd(5)*C5+qdd(4)*S5;
  OMp36 = C6*(OMp35+qd(5)*qd(6))+S6*(qdd(5)-qd(6)*OM35);
  BS16 = -(OM26*OM26+OM36*OM36);
  BS26 = OM16*OM26;
  BS36 = OM16*OM36;
  BS56 = -(OM16*OM16+OM36*OM36);
  BS66 = OM26*OM36;
  BS96 = -(OM16*OM16+OM26*OM26);
  BETA26 = BS26-OMp36;
  BETA36 = BS36+OMp26;
  BETA46 = BS26+OMp36;
  BETA66 = BS66-OMp16;
  BETA76 = BS36-OMp26;
  BETA86 = BS66+OMp16;
  ALPHA16 = ALPHA14*C6-ALPHA35*S6;
  ALPHA36 = ALPHA14*S6+ALPHA35*C6;
  OM17 = OM16*C7+OM26*S7;
  OM37 = qd(7)+OM36;
  OMp17 = C7*(OMp16+qd(7)*OM26)+S7*(OMp26-qd(7)*OM16);
  OMp37 = qdd(7)+OMp36;
  ALPHA17 = C7*(ALPHA16+BETA26*s.dpt(2,1)+BETA36*s.dpt(3,1)+BS16*s.dpt(1,1))+S7*(ALPHA25+BETA46*s.dpt(1,1)+BETA66*s.dpt(3,1)+BS56*s.dpt(2,1));
  ALPHA27 = C7*(ALPHA25+BETA46*s.dpt(1,1)+BETA66*s.dpt(3,1)+BS56*s.dpt(2,1))-S7*(ALPHA16+BETA26*s.dpt(2,1)+BETA36*s.dpt(3,1)+BS16*s.dpt(1,1));
  ALPHA37 = ALPHA36+BETA76*s.dpt(1,1)+BETA86*s.dpt(2,1)+BS96*s.dpt(3,1);
  OM28 = qd(8)-OM16*S7+OM26*C7;
  OM38 = OM17*S8+OM37*C8;
  OMp28 = qdd(8)+C7*(OMp26-qd(7)*OM16)-S7*(OMp16+qd(7)*OM26);
  OMp38 = C8*(OMp37+qd(8)*OM17)+S8*(OMp17-qd(8)*OM37);
  ALPHA18 = ALPHA17*C8-ALPHA37*S8;
  ALPHA38 = ALPHA17*S8+ALPHA37*C8;
  OM19 = qd(9)+OM17*C8-OM37*S8;
  OM29 = OM28*C9+OM38*S9;
  OM39 = -(OM28*S9-OM38*C9);
  OMp19 = qdd(9)+C8*(OMp17-qd(8)*OM37)-S8*(OMp37+qd(8)*OM17);
  OMp29 = C9*(OMp28+qd(9)*OM38)+S9*(OMp38-qd(9)*OM28);
  OMp39 = C9*(OMp38-qd(9)*OM28)-S9*(OMp28+qd(9)*OM38);
  BS59 = -(OM19*OM19+OM39*OM39);
  BETA29 = OM19*OM29-OMp39;
  BETA89 = OMp19+OM29*OM39;
  ALPHA29 = ALPHA27*C9+ALPHA38*S9;
  ALPHA39 = -(ALPHA27*S9-ALPHA38*C9);
  OM110 = qd(10)+OM19;
  OM310 = -(OM29*S10-OM39*C10);
  OMp110 = qdd(10)+OMp19;
  OMp310 = C10*(OMp39-qd(10)*OM29)-S10*(OMp29+qd(10)*OM39);
  ALPHA110 = ALPHA18+BETA29*s.dpt(2,24);
  ALPHA210 = C10*(ALPHA29+BS59*s.dpt(2,24))+S10*(ALPHA39+BETA89*s.dpt(2,24));
  ALPHA310 = C10*(ALPHA39+BETA89*s.dpt(2,24))-S10*(ALPHA29+BS59*s.dpt(2,24));
  OM111 = OM110*C11-OM310*S11;
  OM211 = qd(11)+OM29*C10+OM39*S10;
  OMp111 = C11*(OMp110-qd(11)*OM310)-S11*(OMp310+qd(11)*OM110);
  OMp211 = qdd(11)+C10*(OMp29+qd(10)*OM39)+S10*(OMp39-qd(10)*OM29);
  ALPHA111 = ALPHA110*C11-ALPHA310*S11;
  ALPHA311 = ALPHA110*S11+ALPHA310*C11;
  OM112 = OM111*C12+OM211*S12;
  OM212 = -(OM111*S12-OM211*C12);
  OM312 = qd(12)+OM110*S11+OM310*C11;
  OMp112 = C12*(OMp111+qd(12)*OM211)+S12*(OMp211-qd(12)*OM111);
  OMp212 = C12*(OMp211-qd(12)*OM111)-S12*(OMp111+qd(12)*OM211);
  OMp312 = qdd(12)+C11*(OMp310+qd(11)*OM110)+S11*(OMp110-qd(11)*OM310);
  BS112 = -(OM212*OM212+OM312*OM312);
  BS212 = OM112*OM212;
  BS312 = OM112*OM312;
  BS512 = -(OM112*OM112+OM312*OM312);
  BS612 = OM212*OM312;
  BS912 = -(OM112*OM112+OM212*OM212);
  BETA212 = BS212-OMp312;
  BETA312 = BS312+OMp212;
  BETA412 = BS212+OMp312;
  BETA612 = BS612-OMp112;
  BETA712 = BS312-OMp212;
  BETA812 = BS612+OMp112;
  ALPHA112 = ALPHA111*C12+ALPHA210*S12;
  ALPHA212 = -(ALPHA111*S12-ALPHA210*C12);
  OM213 = -(OM112*S13-OM212*C13);
  OM313 = qd(13)+OM312;
  OMp213 = C13*(OMp212-qd(13)*OM112)-S13*(OMp112+qd(13)*OM212);
  OMp313 = qdd(13)+OMp312;
  ALPHA113 = C13*(ALPHA112+BETA212*s.dpt(2,27)+BETA312*s.dpt(3,27)+BS112*s.dpt(1,27))+S13*(ALPHA212+BETA412*s.dpt(1,27)+BETA612*s.dpt(3,27)+BS512...
 *s.dpt(2,27));
  ALPHA213 = C13*(ALPHA212+BETA412*s.dpt(1,27)+BETA612*s.dpt(3,27)+BS512*s.dpt(2,27))-S13*(ALPHA112+BETA212*s.dpt(2,27)+BETA312*s.dpt(3,27)+BS112...
 *s.dpt(1,27));
  ALPHA313 = ALPHA311+BETA712*s.dpt(1,27)+BETA812*s.dpt(2,27)+BS912*s.dpt(3,27);
  OM114 = qd(14)+OM112*C13+OM212*S13;
  OM314 = -(OM213*S14-OM313*C14);
  OMp114 = qdd(14)+C13*(OMp112+qd(13)*OM212)+S13*(OMp212-qd(13)*OM112);
  OMp314 = C14*(OMp313-qd(14)*OM213)-S14*(OMp213+qd(14)*OM313);
  ALPHA314 = -(ALPHA213*S14-ALPHA313*C14);
  OM115 = OM114*C15-OM314*S15;
  OM215 = qd(15)+OM213*C14+OM313*S14;
  OM315 = OM114*S15+OM314*C15;
  OM216 = -(OM16*S16-OM26*C16);
  OM316 = qd(16)+OM36;
  OMp216 = C16*(OMp26-qd(16)*OM16)-S16*(OMp16+qd(16)*OM26);
  OMp316 = qdd(16)+OMp36;
  ALPHA216 = C16*(ALPHA25+BETA46*s.dpt(1,2)+BETA66*s.dpt(3,2)+BS56*s.dpt(2,2))-S16*(ALPHA16+BETA26*s.dpt(2,2)+BETA36*s.dpt(3,2)+BS16*s.dpt(1,2));
  ALPHA316 = ALPHA36+BETA76*s.dpt(1,2)+BETA86*s.dpt(2,2)+BS96*s.dpt(3,2);
  OM117 = qd(17)+OM16*C16+OM26*S16;
  OM217 = OM216*C17+OM316*S17;
  OM317 = -(OM216*S17-OM316*C17);
  OMp117 = qdd(17)+C16*(OMp16+qd(16)*OM26)+S16*(OMp26-qd(16)*OM16);
  OMp217 = C17*(OMp216+qd(17)*OM316)+S17*(OMp316-qd(17)*OM216);
  OMp317 = C17*(OMp316-qd(17)*OM216)-S17*(OMp216+qd(17)*OM316);
  BS217 = OM117*OM217;
  BS317 = OM117*OM317;
  BS617 = OM217*OM317;
  OM218 = -(OM16*S18-OM26*C18);
  OM318 = qd(18)+OM36;
  OMp218 = C18*(OMp26-qd(18)*OM16)-S18*(OMp16+qd(18)*OM26);
  OMp318 = qdd(18)+OMp36;
  ALPHA218 = C18*(ALPHA25+BETA46*s.dpt(1,3)+BETA66*s.dpt(3,3)+BS56*s.dpt(2,3))-S18*(ALPHA16+BETA26*s.dpt(2,3)+BETA36*s.dpt(3,3)+BS16*s.dpt(1,3));
  ALPHA318 = ALPHA36+BETA76*s.dpt(1,3)+BETA86*s.dpt(2,3)+BS96*s.dpt(3,3);
  OM119 = qd(19)+OM16*C18+OM26*S18;
  OM219 = OM218*C19+OM318*S19;
  OM319 = -(OM218*S19-OM318*C19);
  OMp119 = qdd(19)+C18*(OMp16+qd(18)*OM26)+S18*(OMp26-qd(18)*OM16);
  OMp219 = C19*(OMp218+qd(19)*OM318)+S19*(OMp318-qd(19)*OM218);
  OMp319 = C19*(OMp318-qd(19)*OM218)-S19*(OMp218+qd(19)*OM318);
  BS219 = OM119*OM219;
  BS319 = OM119*OM319;
  BS619 = OM219*OM319;
  OM220 = -(OM16*S20-OM26*C20);
  OM320 = qd(20)+OM36;
  OMp220 = C20*(OMp26-qd(20)*OM16)-S20*(OMp16+qd(20)*OM26);
  OMp320 = qdd(20)+OMp36;
  ALPHA220 = C20*(ALPHA25+BETA46*s.dpt(1,4)+BETA66*s.dpt(3,4)+BS56*s.dpt(2,4))-S20*(ALPHA16+BETA26*s.dpt(2,4)+BETA36*s.dpt(3,4)+BS16*s.dpt(1,4));
  ALPHA320 = ALPHA36+BETA76*s.dpt(1,4)+BETA86*s.dpt(2,4)+BS96*s.dpt(3,4);
  OM121 = qd(21)+OM16*C20+OM26*S20;
  OM221 = OM220*C21+OM320*S21;
  OM321 = -(OM220*S21-OM320*C21);
  OMp121 = qdd(21)+C20*(OMp16+qd(20)*OM26)+S20*(OMp26-qd(20)*OM16);
  OMp221 = C21*(OMp220+qd(21)*OM320)+S21*(OMp320-qd(21)*OM220);
  OMp321 = C21*(OMp320-qd(21)*OM220)-S21*(OMp220+qd(21)*OM320);
  BS221 = OM121*OM221;
  BS321 = OM121*OM321;
  BS621 = OM221*OM321;
  OM222 = -(OM16*S22-OM26*C22);
  OM322 = qd(22)+OM36;
  OMp222 = C22*(OMp26-qd(22)*OM16)-S22*(OMp16+qd(22)*OM26);
  OMp322 = qdd(22)+OMp36;
  ALPHA222 = C22*(ALPHA25+BETA46*s.dpt(1,5)+BETA66*s.dpt(3,5)+BS56*s.dpt(2,5))-S22*(ALPHA16+BETA26*s.dpt(2,5)+BETA36*s.dpt(3,5)+BS16*s.dpt(1,5));
  ALPHA322 = ALPHA36+BETA76*s.dpt(1,5)+BETA86*s.dpt(2,5)+BS96*s.dpt(3,5);
  OM123 = qd(23)+OM16*C22+OM26*S22;
  OM223 = OM222*C23+OM322*S23;
  OM323 = -(OM222*S23-OM322*C23);
  OMp123 = qdd(23)+C22*(OMp16+qd(22)*OM26)+S22*(OMp26-qd(22)*OM16);
  OMp223 = C23*(OMp222+qd(23)*OM322)+S23*(OMp322-qd(23)*OM222);
  OMp323 = C23*(OMp322-qd(23)*OM222)-S23*(OMp222+qd(23)*OM322);
  BS223 = OM123*OM223;
  BS323 = OM123*OM323;
  BS623 = OM223*OM323;
  OM124 = OM16*C24+OM26*S24;
  OM324 = qd(24)+OM36;
  OMp124 = C24*(OMp16+qd(24)*OM26)+S24*(OMp26-qd(24)*OM16);
  OMp324 = qdd(24)+OMp36;
  ALPHA124 = C24*(ALPHA16+BETA26*s.dpt(2,6)+BETA36*s.dpt(3,6)+BS16*s.dpt(1,6))+S24*(ALPHA25+BETA46*s.dpt(1,6)+BETA66*s.dpt(3,6)+BS56*s.dpt(2,6));
  ALPHA224 = C24*(ALPHA25+BETA46*s.dpt(1,6)+BETA66*s.dpt(3,6)+BS56*s.dpt(2,6))-S24*(ALPHA16+BETA26*s.dpt(2,6)+BETA36*s.dpt(3,6)+BS16*s.dpt(1,6));
  ALPHA324 = ALPHA36+BETA76*s.dpt(1,6)+BETA86*s.dpt(2,6)+BS96*s.dpt(3,6);
  OM225 = qd(25)-OM16*S24+OM26*C24;
  OM325 = OM124*S25+OM324*C25;
  OMp225 = qdd(25)+C24*(OMp26-qd(24)*OM16)-S24*(OMp16+qd(24)*OM26);
  OMp325 = C25*(OMp324+qd(25)*OM124)+S25*(OMp124-qd(25)*OM324);
  ALPHA125 = ALPHA124*C25-ALPHA324*S25;
  ALPHA325 = ALPHA124*S25+ALPHA324*C25;
  OM126 = qd(26)+OM124*C25-OM324*S25;
  OM226 = OM225*C26+OM325*S26;
  OM326 = -(OM225*S26-OM325*C26);
  OMp126 = qdd(26)+C25*(OMp124-qd(25)*OM324)-S25*(OMp324+qd(25)*OM124);
  OMp226 = C26*(OMp225+qd(26)*OM325)+S26*(OMp325-qd(26)*OM225);
  OMp326 = C26*(OMp325-qd(26)*OM225)-S26*(OMp225+qd(26)*OM325);
  BS526 = -(OM126*OM126+OM326*OM326);
  BETA226 = OM126*OM226-OMp326;
  BETA826 = OMp126+OM226*OM326;
  ALPHA226 = ALPHA224*C26+ALPHA325*S26;
  ALPHA326 = -(ALPHA224*S26-ALPHA325*C26);
  OM127 = qd(27)+OM126;
  OM327 = -(OM226*S27-OM326*C27);
  OMp127 = qdd(27)+OMp126;
  OMp327 = C27*(OMp326-qd(27)*OM226)-S27*(OMp226+qd(27)*OM326);
  ALPHA127 = ALPHA125+BETA226*s.dpt(2,37);
  ALPHA227 = C27*(ALPHA226+BS526*s.dpt(2,37))+S27*(ALPHA326+BETA826*s.dpt(2,37));
  ALPHA327 = C27*(ALPHA326+BETA826*s.dpt(2,37))-S27*(ALPHA226+BS526*s.dpt(2,37));
  OM128 = OM127*C28-OM327*S28;
  OM228 = qd(28)+OM226*C27+OM326*S27;
  OMp128 = C28*(OMp127-qd(28)*OM327)-S28*(OMp327+qd(28)*OM127);
  OMp228 = qdd(28)+C27*(OMp226+qd(27)*OM326)+S27*(OMp326-qd(27)*OM226);
  ALPHA128 = ALPHA127*C28-ALPHA327*S28;
  ALPHA328 = ALPHA127*S28+ALPHA327*C28;
  OM129 = OM128*C29+OM228*S29;
  OM229 = -(OM128*S29-OM228*C29);
  OM329 = qd(29)+OM127*S28+OM327*C28;
  OMp129 = C29*(OMp128+qd(29)*OM228)+S29*(OMp228-qd(29)*OM128);
  OMp229 = C29*(OMp228-qd(29)*OM128)-S29*(OMp128+qd(29)*OM228);
  OMp329 = qdd(29)+C28*(OMp327+qd(28)*OM127)+S28*(OMp127-qd(28)*OM327);
  BS129 = -(OM229*OM229+OM329*OM329);
  BS229 = OM129*OM229;
  BS329 = OM129*OM329;
  BS529 = -(OM129*OM129+OM329*OM329);
  BS629 = OM229*OM329;
  BS929 = -(OM129*OM129+OM229*OM229);
  BETA229 = BS229-OMp329;
  BETA329 = BS329+OMp229;
  BETA429 = BS229+OMp329;
  BETA629 = BS629-OMp129;
  BETA729 = BS329-OMp229;
  BETA829 = BS629+OMp129;
  ALPHA129 = ALPHA128*C29+ALPHA227*S29;
  ALPHA229 = -(ALPHA128*S29-ALPHA227*C29);
  OM230 = -(OM129*S30-OM229*C30);
  OM330 = qd(30)+OM329;
  OMp230 = C30*(OMp229-qd(30)*OM129)-S30*(OMp129+qd(30)*OM229);
  OMp330 = qdd(30)+OMp329;
  ALPHA130 = C30*(ALPHA129+BETA229*s.dpt(2,40)+BETA329*s.dpt(3,40)+BS129*s.dpt(1,40))+S30*(ALPHA229+BETA429*s.dpt(1,40)+BETA629*s.dpt(3,40)+BS529...
 *s.dpt(2,40));
  ALPHA230 = C30*(ALPHA229+BETA429*s.dpt(1,40)+BETA629*s.dpt(3,40)+BS529*s.dpt(2,40))-S30*(ALPHA129+BETA229*s.dpt(2,40)+BETA329*s.dpt(3,40)+BS129...
 *s.dpt(1,40));
  ALPHA330 = ALPHA328+BETA729*s.dpt(1,40)+BETA829*s.dpt(2,40)+BS929*s.dpt(3,40);
  OM131 = qd(31)+OM129*C30+OM229*S30;
  OM331 = -(OM230*S31-OM330*C31);
  OMp131 = qdd(31)+C30*(OMp129+qd(30)*OM229)+S30*(OMp229-qd(30)*OM129);
  OMp331 = C31*(OMp330-qd(31)*OM230)-S31*(OMp230+qd(31)*OM330);
  ALPHA331 = -(ALPHA230*S31-ALPHA330*C31);
  OM132 = OM131*C32-OM331*S32;
  OM232 = qd(32)+OM230*C31+OM330*S31;
  OM332 = OM131*S32+OM331*C32;
  OM134 = OM16*C34+OM26*S34;
  OM334 = qd(34)+OM36;
  OMp134 = C34*(OMp16+qd(34)*OM26)+S34*(OMp26-qd(34)*OM16);
  OMp334 = qdd(34)+OMp36;
  ALPHA134 = C34*(ALPHA16+BETA26*s.dpt(2,10)+BETA36*s.dpt(3,10)+BS16*s.dpt(1,10))+S34*(ALPHA25+BETA46*s.dpt(1,10)+BETA66*s.dpt(3,10)+BS56*...
 s.dpt(2,10));
  ALPHA234 = C34*(ALPHA25+BETA46*s.dpt(1,10)+BETA66*s.dpt(3,10)+BS56*s.dpt(2,10))-S34*(ALPHA16+BETA26*s.dpt(2,10)+BETA36*s.dpt(3,10)+BS16*...
 s.dpt(1,10));
  ALPHA334 = ALPHA36+BETA76*s.dpt(1,10)+BETA86*s.dpt(2,10)+BS96*s.dpt(3,10);
  OM235 = qd(35)-OM16*S34+OM26*C34;
  OM335 = OM134*S35+OM334*C35;
  OMp235 = qdd(35)+C34*(OMp26-qd(34)*OM16)-S34*(OMp16+qd(34)*OM26);
  OMp335 = C35*(OMp334+qd(35)*OM134)+S35*(OMp134-qd(35)*OM334);
  ALPHA135 = ALPHA134*C35-ALPHA334*S35;
  ALPHA335 = ALPHA134*S35+ALPHA334*C35;
  OM136 = qd(36)+OM134*C35-OM334*S35;
  OM236 = OM235*C36+OM335*S36;
  OM336 = -(OM235*S36-OM335*C36);
  OMp136 = qdd(36)+C35*(OMp134-qd(35)*OM334)-S35*(OMp334+qd(35)*OM134);
  OMp236 = C36*(OMp235+qd(36)*OM335)+S36*(OMp335-qd(36)*OM235);
  OMp336 = C36*(OMp335-qd(36)*OM235)-S36*(OMp235+qd(36)*OM335);
  BS536 = -(OM136*OM136+OM336*OM336);
  BETA236 = OM136*OM236-OMp336;
  BETA836 = OMp136+OM236*OM336;
  ALPHA236 = ALPHA234*C36+ALPHA335*S36;
  ALPHA336 = -(ALPHA234*S36-ALPHA335*C36);
  OM137 = qd(37)+OM136;
  OM337 = -(OM236*S37-OM336*C37);
  OMp137 = qdd(37)+OMp136;
  OMp337 = C37*(OMp336-qd(37)*OM236)-S37*(OMp236+qd(37)*OM336);
  ALPHA137 = ALPHA135+BETA236*s.dpt(2,46);
  ALPHA237 = C37*(ALPHA236+BS536*s.dpt(2,46))+S37*(ALPHA336+BETA836*s.dpt(2,46));
  ALPHA337 = C37*(ALPHA336+BETA836*s.dpt(2,46))-S37*(ALPHA236+BS536*s.dpt(2,46));
  OM138 = OM137*C38-OM337*S38;
  OM238 = qd(38)+OM236*C37+OM336*S37;
  OMp138 = C38*(OMp137-qd(38)*OM337)-S38*(OMp337+qd(38)*OM137);
  OMp238 = qdd(38)+C37*(OMp236+qd(37)*OM336)+S37*(OMp336-qd(37)*OM236);
  ALPHA138 = ALPHA137*C38-ALPHA337*S38;
  ALPHA338 = ALPHA137*S38+ALPHA337*C38;
  OM139 = OM138*C39+OM238*S39;
  OM239 = -(OM138*S39-OM238*C39);
  OM339 = qd(39)+OM137*S38+OM337*C38;
  OMp139 = C39*(OMp138+qd(39)*OM238)+S39*(OMp238-qd(39)*OM138);
  OMp239 = C39*(OMp238-qd(39)*OM138)-S39*(OMp138+qd(39)*OM238);
  OMp339 = qdd(39)+C38*(OMp337+qd(38)*OM137)+S38*(OMp137-qd(38)*OM337);
  BS139 = -(OM239*OM239+OM339*OM339);
  BS239 = OM139*OM239;
  BS339 = OM139*OM339;
  BS539 = -(OM139*OM139+OM339*OM339);
  BS639 = OM239*OM339;
  BS939 = -(OM139*OM139+OM239*OM239);
  BETA239 = BS239-OMp339;
  BETA339 = BS339+OMp239;
  BETA439 = BS239+OMp339;
  BETA639 = BS639-OMp139;
  BETA739 = BS339-OMp239;
  BETA839 = BS639+OMp139;
  ALPHA139 = ALPHA138*C39+ALPHA237*S39;
  ALPHA239 = -(ALPHA138*S39-ALPHA237*C39);
  OM240 = -(OM139*S40-OM239*C40);
  OM340 = qd(40)+OM339;
  OMp240 = C40*(OMp239-qd(40)*OM139)-S40*(OMp139+qd(40)*OM239);
  OMp340 = qdd(40)+OMp339;
  ALPHA140 = C40*(ALPHA139+BETA239*s.dpt(2,47)+BETA339*s.dpt(3,47)+BS139*s.dpt(1,47))+S40*(ALPHA239+BETA439*s.dpt(1,47)+BETA639*s.dpt(3,47)+BS539...
 *s.dpt(2,47));
  ALPHA240 = C40*(ALPHA239+BETA439*s.dpt(1,47)+BETA639*s.dpt(3,47)+BS539*s.dpt(2,47))-S40*(ALPHA139+BETA239*s.dpt(2,47)+BETA339*s.dpt(3,47)+BS139...
 *s.dpt(1,47));
  ALPHA340 = ALPHA338+BETA739*s.dpt(1,47)+BETA839*s.dpt(2,47)+BS939*s.dpt(3,47);
  OM141 = qd(41)+OM139*C40+OM239*S40;
  OM341 = -(OM240*S41-OM340*C41);
  OMp141 = qdd(41)+C40*(OMp139+qd(40)*OM239)+S40*(OMp239-qd(40)*OM139);
  OMp341 = C41*(OMp340-qd(41)*OM240)-S41*(OMp240+qd(41)*OM340);
  ALPHA341 = -(ALPHA240*S41-ALPHA340*C41);
  OM142 = OM141*C42-OM341*S42;
  OM242 = qd(42)+OM240*C41+OM340*S41;
  OM342 = OM141*S42+OM341*C42;
  OM243 = -(OM16*S43-OM26*C43);
  OM343 = qd(43)+OM36;
  OMp243 = C43*(OMp26-qd(43)*OM16)-S43*(OMp16+qd(43)*OM26);
  OMp343 = qdd(43)+OMp36;
  ALPHA243 = C43*(ALPHA25+BETA46*s.dpt(1,11)+BETA66*s.dpt(3,11)+BS56*s.dpt(2,11))-S43*(ALPHA16+BETA26*s.dpt(2,11)+BETA36*s.dpt(3,11)+BS16*...
 s.dpt(1,11));
  ALPHA343 = ALPHA36+BETA76*s.dpt(1,11)+BETA86*s.dpt(2,11)+BS96*s.dpt(3,11);
  OM144 = qd(44)+OM16*C43+OM26*S43;
  OM244 = OM243*C44+OM343*S44;
  OM344 = -(OM243*S44-OM343*C44);
  OMp144 = qdd(44)+C43*(OMp16+qd(43)*OM26)+S43*(OMp26-qd(43)*OM16);
  OMp244 = C44*(OMp243+qd(44)*OM343)+S44*(OMp343-qd(44)*OM243);
  OMp344 = C44*(OMp343-qd(44)*OM243)-S44*(OMp243+qd(44)*OM343);
  BS244 = OM144*OM244;
  BS344 = OM144*OM344;
  BS644 = OM244*OM344;
  OM245 = -(OM16*S45-OM26*C45);
  OM345 = qd(45)+OM36;
  OMp245 = C45*(OMp26-qd(45)*OM16)-S45*(OMp16+qd(45)*OM26);
  OMp345 = qdd(45)+OMp36;
  ALPHA245 = C45*(ALPHA25+BETA46*s.dpt(1,12)+BETA66*s.dpt(3,12)+BS56*s.dpt(2,12))-S45*(ALPHA16+BETA26*s.dpt(2,12)+BETA36*s.dpt(3,12)+BS16*...
 s.dpt(1,12));
  ALPHA345 = ALPHA36+BETA76*s.dpt(1,12)+BETA86*s.dpt(2,12)+BS96*s.dpt(3,12);
  OM146 = qd(46)+OM16*C45+OM26*S45;
  OM246 = OM245*C46+OM345*S46;
  OM346 = -(OM245*S46-OM345*C46);
  OMp146 = qdd(46)+C45*(OMp16+qd(45)*OM26)+S45*(OMp26-qd(45)*OM16);
  OMp246 = C46*(OMp245+qd(46)*OM345)+S46*(OMp345-qd(46)*OM245);
  OMp346 = C46*(OMp345-qd(46)*OM245)-S46*(OMp245+qd(46)*OM345);
  BS246 = OM146*OM246;
  BS346 = OM146*OM346;
  BS646 = OM246*OM346;
  OM147 = OM16*C47+OM26*S47;
  OM347 = qd(47)+OM36;
  OMp147 = C47*(OMp16+qd(47)*OM26)+S47*(OMp26-qd(47)*OM16);
  OMp347 = qdd(47)+OMp36;
  ALPHA147 = C47*(ALPHA16+BETA26*s.dpt(2,15)+BETA36*s.dpt(3,15)+BS16*s.dpt(1,15))+S47*(ALPHA25+BETA46*s.dpt(1,15)+BETA66*s.dpt(3,15)+BS56*...
 s.dpt(2,15));
  ALPHA247 = C47*(ALPHA25+BETA46*s.dpt(1,15)+BETA66*s.dpt(3,15)+BS56*s.dpt(2,15))-S47*(ALPHA16+BETA26*s.dpt(2,15)+BETA36*s.dpt(3,15)+BS16*...
 s.dpt(1,15));
  ALPHA347 = ALPHA36+BETA76*s.dpt(1,15)+BETA86*s.dpt(2,15)+BS96*s.dpt(3,15);
  OM248 = qd(48)-OM16*S47+OM26*C47;
  OM348 = OM147*S48+OM347*C48;
  OMp248 = qdd(48)+C47*(OMp26-qd(47)*OM16)-S47*(OMp16+qd(47)*OM26);
  OMp348 = C48*(OMp347+qd(48)*OM147)+S48*(OMp147-qd(48)*OM347);
  ALPHA148 = ALPHA147*C48-ALPHA347*S48;
  ALPHA348 = ALPHA147*S48+ALPHA347*C48;
  OM149 = qd(49)+OM147*C48-OM347*S48;
  OM249 = OM248*C49+OM348*S49;
  OM349 = -(OM248*S49-OM348*C49);
  OMp149 = qdd(49)+C48*(OMp147-qd(48)*OM347)-S48*(OMp347+qd(48)*OM147);
  OMp249 = C49*(OMp248+qd(49)*OM348)+S49*(OMp348-qd(49)*OM248);
  OMp349 = C49*(OMp348-qd(49)*OM248)-S49*(OMp248+qd(49)*OM348);
  BS549 = -(OM149*OM149+OM349*OM349);
  BETA249 = OM149*OM249-OMp349;
  BETA849 = OMp149+OM249*OM349;
  ALPHA249 = ALPHA247*C49+ALPHA348*S49;
  ALPHA349 = -(ALPHA247*S49-ALPHA348*C49);
  OM150 = qd(50)+OM149;
  OM350 = -(OM249*S50-OM349*C50);
  OMp150 = qdd(50)+OMp149;
  OMp350 = C50*(OMp349-qd(50)*OM249)-S50*(OMp249+qd(50)*OM349);
  ALPHA150 = ALPHA148+BETA249*s.dpt(2,56);
  ALPHA250 = C50*(ALPHA249+BS549*s.dpt(2,56))+S50*(ALPHA349+BETA849*s.dpt(2,56));
  ALPHA350 = C50*(ALPHA349+BETA849*s.dpt(2,56))-S50*(ALPHA249+BS549*s.dpt(2,56));
  OM151 = OM150*C51-OM350*S51;
  OM251 = qd(51)+OM249*C50+OM349*S50;
  OMp151 = C51*(OMp150-qd(51)*OM350)-S51*(OMp350+qd(51)*OM150);
  OMp251 = qdd(51)+C50*(OMp249+qd(50)*OM349)+S50*(OMp349-qd(50)*OM249);
  ALPHA151 = ALPHA150*C51-ALPHA350*S51;
  ALPHA351 = ALPHA150*S51+ALPHA350*C51;
  OM152 = OM151*C52+OM251*S52;
  OM252 = -(OM151*S52-OM251*C52);
  OM352 = qd(52)+OM150*S51+OM350*C51;
  OMp152 = C52*(OMp151+qd(52)*OM251)+S52*(OMp251-qd(52)*OM151);
  OMp252 = C52*(OMp251-qd(52)*OM151)-S52*(OMp151+qd(52)*OM251);
  OMp352 = qdd(52)+C51*(OMp350+qd(51)*OM150)+S51*(OMp150-qd(51)*OM350);
  BS152 = -(OM252*OM252+OM352*OM352);
  BS252 = OM152*OM252;
  BS352 = OM152*OM352;
  BS552 = -(OM152*OM152+OM352*OM352);
  BS652 = OM252*OM352;
  BS952 = -(OM152*OM152+OM252*OM252);
  BETA252 = BS252-OMp352;
  BETA352 = BS352+OMp252;
  BETA452 = BS252+OMp352;
  BETA652 = BS652-OMp152;
  BETA752 = BS352-OMp252;
  BETA852 = BS652+OMp152;
  ALPHA152 = ALPHA151*C52+ALPHA250*S52;
  ALPHA252 = -(ALPHA151*S52-ALPHA250*C52);
  OM253 = -(OM152*S53-OM252*C53);
  OM353 = qd(53)+OM352;
  OMp253 = C53*(OMp252-qd(53)*OM152)-S53*(OMp152+qd(53)*OM252);
  OMp353 = qdd(53)+OMp352;
  ALPHA153 = C53*(ALPHA152+BETA252*s.dpt(2,57)+BETA352*s.dpt(3,57)+BS152*s.dpt(1,57))+S53*(ALPHA252+BETA452*s.dpt(1,57)+BETA652*s.dpt(3,57)+BS552...
 *s.dpt(2,57));
  ALPHA253 = C53*(ALPHA252+BETA452*s.dpt(1,57)+BETA652*s.dpt(3,57)+BS552*s.dpt(2,57))-S53*(ALPHA152+BETA252*s.dpt(2,57)+BETA352*s.dpt(3,57)+BS152...
 *s.dpt(1,57));
  ALPHA353 = ALPHA351+BETA752*s.dpt(1,57)+BETA852*s.dpt(2,57)+BS952*s.dpt(3,57);
  OM154 = qd(54)+OM152*C53+OM252*S53;
  OM354 = -(OM253*S54-OM353*C54);
  OMp154 = qdd(54)+C53*(OMp152+qd(53)*OM252)+S53*(OMp252-qd(53)*OM152);
  OMp354 = C54*(OMp353-qd(54)*OM253)-S54*(OMp253+qd(54)*OM353);
  ALPHA354 = -(ALPHA253*S54-ALPHA353*C54);
  OM155 = OM154*C55-OM354*S55;
  OM255 = qd(55)+OM253*C54+OM353*S54;
  OM355 = OM154*S55+OM354*C55;
  OM256 = -(OM16*S56-OM26*C56);
  OM356 = qd(56)+OM36;
  OMp256 = C56*(OMp26-qd(56)*OM16)-S56*(OMp16+qd(56)*OM26);
  OMp356 = qdd(56)+OMp36;
  ALPHA256 = C56*(ALPHA25+BETA46*s.dpt(1,16)+BETA66*s.dpt(3,16)+BS56*s.dpt(2,16))-S56*(ALPHA16+BETA26*s.dpt(2,16)+BETA36*s.dpt(3,16)+BS16*...
 s.dpt(1,16));
  ALPHA356 = ALPHA36+BETA76*s.dpt(1,16)+BETA86*s.dpt(2,16)+BS96*s.dpt(3,16);
  OM157 = qd(57)+OM16*C56+OM26*S56;
  OM257 = OM256*C57+OM356*S57;
  OM357 = -(OM256*S57-OM356*C57);
  OMp157 = qdd(57)+C56*(OMp16+qd(56)*OM26)+S56*(OMp26-qd(56)*OM16);
  OMp257 = C57*(OMp256+qd(57)*OM356)+S57*(OMp356-qd(57)*OM256);
  OMp357 = C57*(OMp356-qd(57)*OM256)-S57*(OMp256+qd(57)*OM356);
  BS257 = OM157*OM257;
  BS357 = OM157*OM357;
  BS657 = OM257*OM357;
  OM258 = -(OM16*S58-OM26*C58);
  OM358 = qd(58)+OM36;
  OMp258 = C58*(OMp26-qd(58)*OM16)-S58*(OMp16+qd(58)*OM26);
  OMp358 = qdd(58)+OMp36;
  ALPHA258 = C58*(ALPHA25+BETA46*s.dpt(1,17)+BETA66*s.dpt(3,17)+BS56*s.dpt(2,17))-S58*(ALPHA16+BETA26*s.dpt(2,17)+BETA36*s.dpt(3,17)+BS16*...
 s.dpt(1,17));
  ALPHA358 = ALPHA36+BETA76*s.dpt(1,17)+BETA86*s.dpt(2,17)+BS96*s.dpt(3,17);
  OM159 = qd(59)+OM16*C58+OM26*S58;
  OM259 = OM258*C59+OM358*S59;
  OM359 = -(OM258*S59-OM358*C59);
  OMp159 = qdd(59)+C58*(OMp16+qd(58)*OM26)+S58*(OMp26-qd(58)*OM16);
  OMp259 = C59*(OMp258+qd(59)*OM358)+S59*(OMp358-qd(59)*OM258);
  OMp359 = C59*(OMp358-qd(59)*OM258)-S59*(OMp258+qd(59)*OM358);
  BS259 = OM159*OM259;
  BS359 = OM159*OM359;
  BS659 = OM259*OM359;
 
% Backward Dynamics 

  Fq162 = -(s.frc(1,62)+s.frc(1,63)*C63+s.frc(3,63)*S63);
  Fq262 = -(s.frc(2,62)+s.frc(2,63));
  Fq362 = -(s.frc(3,62)-s.frc(1,63)*S63+s.frc(3,63)*C63);
  Cq162 = -(s.trq(1,62)+s.trq(1,63)*C63+s.trq(3,63)*S63-s.dpt(2,70)*(s.frc(1,63)*S63-s.frc(3,63)*C63));
  Cq262 = -(s.trq(2,62)+s.trq(2,63));
  Cq362 = -(s.trq(3,62)-s.trq(1,63)*S63+s.trq(3,63)*C63-s.dpt(2,70)*(s.frc(1,63)*C63+s.frc(3,63)*S63));
  Fq160 = -(s.frc(1,60)+s.frc(1,61)*C61+s.frc(3,61)*S61);
  Fq260 = -(s.frc(2,60)+s.frc(2,61));
  Fq360 = -(s.frc(3,60)-s.frc(1,61)*S61+s.frc(3,61)*C61);
  Cq160 = -(s.trq(1,60)+s.trq(1,61)*C61+s.trq(3,61)*S61-s.dpt(2,66)*(s.frc(1,61)*S61-s.frc(3,61)*C61));
  Cq260 = -(s.trq(2,60)+s.trq(2,61));
  Cq360 = -(s.trq(3,60)-s.trq(1,61)*S61+s.trq(3,61)*C61-s.dpt(2,66)*(s.frc(1,61)*C61+s.frc(3,61)*S61));
  Fs159 = -(s.frc(1,59)+s.m(59)*(s.l(1,59)*(OM259*OM259+OM359*OM359)-s.l(2,59)*(BS259-OMp359)-s.l(3,59)*(BS359+OMp259)-C58*(ALPHA16+BETA26*...
 s.dpt(2,17)+BETA36*s.dpt(3,17)+BS16*s.dpt(1,17))-S58*(ALPHA25+BETA46*s.dpt(1,17)+BETA66*s.dpt(3,17)+BS56*s.dpt(2,17))));
  Fs259 = -(s.frc(2,59)-s.m(59)*(ALPHA258*C59+ALPHA358*S59+s.l(1,59)*(BS259+OMp359)-s.l(2,59)*(OM159*OM159+OM359*OM359)+s.l(3,59)*(BS659-OMp159))...
 );
  Fs359 = -(s.frc(3,59)+s.m(59)*(ALPHA258*S59-ALPHA358*C59-s.l(1,59)*(BS359-OMp259)-s.l(2,59)*(BS659+OMp159)+s.l(3,59)*(OM159*OM159+OM259*OM259))...
 );
  Cq159 = -(s.trq(1,59)-s.In(1,59)*OMp159-s.In(9,59)*OM259*OM359+Fs259*s.l(3,59)-Fs359*s.l(2,59));
  Cq259 = -(s.trq(2,59)-Fs159*s.l(3,59)+Fs359*s.l(1,59)-OM159*OM359*(s.In(1,59)-s.In(9,59)));
  Cq359 = -(s.trq(3,59)+s.In(1,59)*OM159*OM259-s.In(9,59)*OMp359+Fs159*s.l(2,59)-Fs259*s.l(1,59));
  Fq258 = Fs259*C59-Fs359*S59;
  Fq358 = Fs259*S59+Fs359*C59;
  Cq258 = Cq259*C59-Cq359*S59;
  Cq358 = Cq259*S59+Cq359*C59;
  Fs157 = -(s.frc(1,57)+s.m(57)*(s.l(1,57)*(OM257*OM257+OM357*OM357)-s.l(2,57)*(BS257-OMp357)-s.l(3,57)*(BS357+OMp257)-C56*(ALPHA16+BETA26*...
 s.dpt(2,16)+BETA36*s.dpt(3,16)+BS16*s.dpt(1,16))-S56*(ALPHA25+BETA46*s.dpt(1,16)+BETA66*s.dpt(3,16)+BS56*s.dpt(2,16))));
  Fs257 = -(s.frc(2,57)-s.m(57)*(ALPHA256*C57+ALPHA356*S57+s.l(1,57)*(BS257+OMp357)-s.l(2,57)*(OM157*OM157+OM357*OM357)+s.l(3,57)*(BS657-OMp157))...
 );
  Fs357 = -(s.frc(3,57)+s.m(57)*(ALPHA256*S57-ALPHA356*C57-s.l(1,57)*(BS357-OMp257)-s.l(2,57)*(BS657+OMp157)+s.l(3,57)*(OM157*OM157+OM257*OM257))...
 );
  Cq157 = -(s.trq(1,57)-s.In(1,57)*OMp157-s.In(9,57)*OM257*OM357+Fs257*s.l(3,57)-Fs357*s.l(2,57));
  Cq257 = -(s.trq(2,57)-Fs157*s.l(3,57)+Fs357*s.l(1,57)-OM157*OM357*(s.In(1,57)-s.In(9,57)));
  Cq357 = -(s.trq(3,57)+s.In(1,57)*OM157*OM257-s.In(9,57)*OMp357+Fs157*s.l(2,57)-Fs257*s.l(1,57));
  Fq256 = Fs257*C57-Fs357*S57;
  Fq356 = Fs257*S57+Fs357*C57;
  Cq256 = Cq257*C57-Cq357*S57;
  Cq356 = Cq257*S57+Cq357*C57;
  Fs155 = -(s.frc(1,55)-s.m(55)*(ALPHA153*C55-ALPHA354*S55));
  Fs255 = -(s.frc(2,55)-s.m(55)*(ALPHA253*C54+ALPHA353*S54));
  Fs355 = -(s.frc(3,55)-s.m(55)*(ALPHA153*S55+ALPHA354*C55));
  Cq155 = -(s.trq(1,55)-s.In(1,55)*(C55*(OMp154-qd(55)*OM354)-S55*(OMp354+qd(55)*OM154))+OM255*OM355*(s.In(5,55)-s.In(9,55)));
  Cq255 = -(s.trq(2,55)-s.In(5,55)*(qdd(55)+C54*(OMp253+qd(54)*OM353)+S54*(OMp353-qd(54)*OM253))-OM155*OM355*(s.In(1,55)-s.In(9,55)));
  Cq355 = -(s.trq(3,55)-s.In(9,55)*(C55*(OMp354+qd(55)*OM154)+S55*(OMp154-qd(55)*OM354))+OM155*OM255*(s.In(1,55)-s.In(5,55)));
  Fq154 = Fs155*C55+Fs355*S55;
  Fq354 = -(Fs155*S55-Fs355*C55);
  Cq154 = Cq155*C55+Cq355*S55;
  Cq354 = -(Cq155*S55-Cq355*C55);
  Fq253 = -(Fq354*S54-Fs255*C54);
  Fq353 = Fq354*C54+Fs255*S54;
  Cq253 = Cq255*C54-Cq354*S54;
  Cq353 = Cq255*S54+Cq354*C54;
  Fs152 = -(s.frc(1,52)-s.m(52)*(ALPHA152+BETA252*s.l(2,52)+BETA352*s.l(3,52)+BS152*s.l(1,52)));
  Fs252 = -(s.frc(2,52)-s.m(52)*(ALPHA252+BETA452*s.l(1,52)+BETA652*s.l(3,52)+BS552*s.l(2,52)));
  Fs352 = -(s.frc(3,52)-s.m(52)*(ALPHA351+BETA752*s.l(1,52)+BETA852*s.l(2,52)+BS952*s.l(3,52)));
  Fq152 = Fs152+Fq154*C53-Fq253*S53;
  Fq252 = Fs252+Fq154*S53+Fq253*C53;
  Fq352 = Fq353+Fs352;
  Cq152 = -(s.trq(1,52)-s.In(1,52)*OMp152-Cq154*C53+Cq253*S53-Fq353*s.dpt(2,57)+Fs252*s.l(3,52)-Fs352*s.l(2,52)+OM252*OM352*(s.In(5,52)-...
 s.In(9,52))+s.dpt(3,57)*(Fq154*S53+Fq253*C53));
  Cq252 = -(s.trq(2,52)-s.In(5,52)*OMp252-Cq154*S53-Cq253*C53+Fq353*s.dpt(1,57)-Fs152*s.l(3,52)+Fs352*s.l(1,52)-OM152*OM352*(s.In(1,52)-...
 s.In(9,52))-s.dpt(3,57)*(Fq154*C53-Fq253*S53));
  Cq352 = -(s.trq(3,52)-Cq353-s.In(9,52)*OMp352+Fs152*s.l(2,52)-Fs252*s.l(1,52)+OM152*OM252*(s.In(1,52)-s.In(5,52))-s.dpt(1,57)*(Fq154*S53+Fq253*...
 C53)+s.dpt(2,57)*(Fq154*C53-Fq253*S53));
  Fq151 = Fq152*C52-Fq252*S52;
  Fq251 = Fq152*S52+Fq252*C52;
  Cq151 = Cq152*C52-Cq252*S52;
  Cq251 = Cq152*S52+Cq252*C52;
  Fq150 = Fq151*C51+Fq352*S51;
  Fq350 = -(Fq151*S51-Fq352*C51);
  Cq150 = Cq151*C51+Cq352*S51;
  Cq350 = -(Cq151*S51-Cq352*C51);
  Fs149 = -(s.frc(1,49)-s.m(49)*(ALPHA148+BETA249*s.l(2,49)));
  Fs349 = -(s.frc(3,49)-s.m(49)*(ALPHA349+BETA849*s.l(2,49)));
  Fq149 = Fq150+Fs149;
  Fq249 = -(s.frc(2,49)-s.m(49)*(ALPHA249+BS549*s.l(2,49))-Fq251*C50+Fq350*S50);
  Fq349 = Fs349+Fq251*S50+Fq350*C50;
  Cq149 = -(s.trq(1,49)-Cq150-s.In(1,49)*OMp149-s.In(9,49)*OM249*OM349-Fs349*s.l(2,49)-s.dpt(2,56)*(Fq251*S50+Fq350*C50));
  Cq249 = -(s.trq(2,49)-Cq251*C50+Cq350*S50-OM149*OM349*(s.In(1,49)-s.In(9,49)));
  Cq349 = -(s.trq(3,49)+s.In(1,49)*OM149*OM249-s.In(9,49)*OMp349-Cq251*S50-Cq350*C50+Fq150*s.dpt(2,56)+Fs149*s.l(2,49));
  Fq248 = Fq249*C49-Fq349*S49;
  Fq348 = Fq249*S49+Fq349*C49;
  Cq248 = Cq249*C49-Cq349*S49;
  Cq348 = Cq249*S49+Cq349*C49;
  Fq147 = Fq149*C48+Fq348*S48;
  Fq347 = -(Fq149*S48-Fq348*C48);
  Cq147 = Cq149*C48+Cq348*S48;
  Cq347 = -(Cq149*S48-Cq348*C48);
  Fs146 = -(s.frc(1,46)+s.m(46)*(s.l(1,46)*(OM246*OM246+OM346*OM346)-s.l(2,46)*(BS246-OMp346)-s.l(3,46)*(BS346+OMp246)-C45*(ALPHA16+BETA26*...
 s.dpt(2,12)+BETA36*s.dpt(3,12)+BS16*s.dpt(1,12))-S45*(ALPHA25+BETA46*s.dpt(1,12)+BETA66*s.dpt(3,12)+BS56*s.dpt(2,12))));
  Fs246 = -(s.frc(2,46)-s.m(46)*(ALPHA245*C46+ALPHA345*S46+s.l(1,46)*(BS246+OMp346)-s.l(2,46)*(OM146*OM146+OM346*OM346)+s.l(3,46)*(BS646-OMp146))...
 );
  Fs346 = -(s.frc(3,46)+s.m(46)*(ALPHA245*S46-ALPHA345*C46-s.l(1,46)*(BS346-OMp246)-s.l(2,46)*(BS646+OMp146)+s.l(3,46)*(OM146*OM146+OM246*OM246))...
 );
  Cq146 = -(s.trq(1,46)-s.In(1,46)*OMp146-s.In(9,46)*OM246*OM346+Fs246*s.l(3,46)-Fs346*s.l(2,46));
  Cq246 = -(s.trq(2,46)-Fs146*s.l(3,46)+Fs346*s.l(1,46)-OM146*OM346*(s.In(1,46)-s.In(9,46)));
  Cq346 = -(s.trq(3,46)+s.In(1,46)*OM146*OM246-s.In(9,46)*OMp346+Fs146*s.l(2,46)-Fs246*s.l(1,46));
  Fq245 = Fs246*C46-Fs346*S46;
  Fq345 = Fs246*S46+Fs346*C46;
  Cq245 = Cq246*C46-Cq346*S46;
  Cq345 = Cq246*S46+Cq346*C46;
  Fs144 = -(s.frc(1,44)+s.m(44)*(s.l(1,44)*(OM244*OM244+OM344*OM344)-s.l(2,44)*(BS244-OMp344)-s.l(3,44)*(BS344+OMp244)-C43*(ALPHA16+BETA26*...
 s.dpt(2,11)+BETA36*s.dpt(3,11)+BS16*s.dpt(1,11))-S43*(ALPHA25+BETA46*s.dpt(1,11)+BETA66*s.dpt(3,11)+BS56*s.dpt(2,11))));
  Fs244 = -(s.frc(2,44)-s.m(44)*(ALPHA243*C44+ALPHA343*S44+s.l(1,44)*(BS244+OMp344)-s.l(2,44)*(OM144*OM144+OM344*OM344)+s.l(3,44)*(BS644-OMp144))...
 );
  Fs344 = -(s.frc(3,44)+s.m(44)*(ALPHA243*S44-ALPHA343*C44-s.l(1,44)*(BS344-OMp244)-s.l(2,44)*(BS644+OMp144)+s.l(3,44)*(OM144*OM144+OM244*OM244))...
 );
  Cq144 = -(s.trq(1,44)-s.In(1,44)*OMp144-s.In(9,44)*OM244*OM344+Fs244*s.l(3,44)-Fs344*s.l(2,44));
  Cq244 = -(s.trq(2,44)-Fs144*s.l(3,44)+Fs344*s.l(1,44)-OM144*OM344*(s.In(1,44)-s.In(9,44)));
  Cq344 = -(s.trq(3,44)+s.In(1,44)*OM144*OM244-s.In(9,44)*OMp344+Fs144*s.l(2,44)-Fs244*s.l(1,44));
  Fq243 = Fs244*C44-Fs344*S44;
  Fq343 = Fs244*S44+Fs344*C44;
  Cq243 = Cq244*C44-Cq344*S44;
  Cq343 = Cq244*S44+Cq344*C44;
  Fs142 = -(s.frc(1,42)-s.m(42)*(ALPHA140*C42-ALPHA341*S42));
  Fs242 = -(s.frc(2,42)-s.m(42)*(ALPHA240*C41+ALPHA340*S41));
  Fs342 = -(s.frc(3,42)-s.m(42)*(ALPHA140*S42+ALPHA341*C42));
  Cq142 = -(s.trq(1,42)-s.In(1,42)*(C42*(OMp141-qd(42)*OM341)-S42*(OMp341+qd(42)*OM141))+OM242*OM342*(s.In(5,42)-s.In(9,42)));
  Cq242 = -(s.trq(2,42)-s.In(5,42)*(qdd(42)+C41*(OMp240+qd(41)*OM340)+S41*(OMp340-qd(41)*OM240))-OM142*OM342*(s.In(1,42)-s.In(9,42)));
  Cq342 = -(s.trq(3,42)-s.In(9,42)*(C42*(OMp341+qd(42)*OM141)+S42*(OMp141-qd(42)*OM341))+OM142*OM242*(s.In(1,42)-s.In(5,42)));
  Fq141 = Fs142*C42+Fs342*S42;
  Fq341 = -(Fs142*S42-Fs342*C42);
  Cq141 = Cq142*C42+Cq342*S42;
  Cq341 = -(Cq142*S42-Cq342*C42);
  Fq240 = -(Fq341*S41-Fs242*C41);
  Fq340 = Fq341*C41+Fs242*S41;
  Cq240 = Cq242*C41-Cq341*S41;
  Cq340 = Cq242*S41+Cq341*C41;
  Fs139 = -(s.frc(1,39)-s.m(39)*(ALPHA139+BETA239*s.l(2,39)+BETA339*s.l(3,39)+BS139*s.l(1,39)));
  Fs239 = -(s.frc(2,39)-s.m(39)*(ALPHA239+BETA439*s.l(1,39)+BETA639*s.l(3,39)+BS539*s.l(2,39)));
  Fs339 = -(s.frc(3,39)-s.m(39)*(ALPHA338+BETA739*s.l(1,39)+BETA839*s.l(2,39)+BS939*s.l(3,39)));
  Fq139 = Fs139+Fq141*C40-Fq240*S40;
  Fq239 = Fs239+Fq141*S40+Fq240*C40;
  Fq339 = Fq340+Fs339;
  Cq139 = -(s.trq(1,39)-s.In(1,39)*OMp139-Cq141*C40+Cq240*S40-Fq340*s.dpt(2,47)+Fs239*s.l(3,39)-Fs339*s.l(2,39)+OM239*OM339*(s.In(5,39)-...
 s.In(9,39))+s.dpt(3,47)*(Fq141*S40+Fq240*C40));
  Cq239 = -(s.trq(2,39)-s.In(5,39)*OMp239-Cq141*S40-Cq240*C40+Fq340*s.dpt(1,47)-Fs139*s.l(3,39)+Fs339*s.l(1,39)-OM139*OM339*(s.In(1,39)-...
 s.In(9,39))-s.dpt(3,47)*(Fq141*C40-Fq240*S40));
  Cq339 = -(s.trq(3,39)-Cq340-s.In(9,39)*OMp339+Fs139*s.l(2,39)-Fs239*s.l(1,39)+OM139*OM239*(s.In(1,39)-s.In(5,39))-s.dpt(1,47)*(Fq141*S40+Fq240*...
 C40)+s.dpt(2,47)*(Fq141*C40-Fq240*S40));
  Fq138 = Fq139*C39-Fq239*S39;
  Fq238 = Fq139*S39+Fq239*C39;
  Cq138 = Cq139*C39-Cq239*S39;
  Cq238 = Cq139*S39+Cq239*C39;
  Fq137 = Fq138*C38+Fq339*S38;
  Fq337 = -(Fq138*S38-Fq339*C38);
  Cq137 = Cq138*C38+Cq339*S38;
  Cq337 = -(Cq138*S38-Cq339*C38);
  Fs136 = -(s.frc(1,36)-s.m(36)*(ALPHA135+BETA236*s.l(2,36)));
  Fs336 = -(s.frc(3,36)-s.m(36)*(ALPHA336+BETA836*s.l(2,36)));
  Fq136 = Fq137+Fs136;
  Fq236 = -(s.frc(2,36)-s.m(36)*(ALPHA236+BS536*s.l(2,36))-Fq238*C37+Fq337*S37);
  Fq336 = Fs336+Fq238*S37+Fq337*C37;
  Cq136 = -(s.trq(1,36)-Cq137-s.In(1,36)*OMp136-s.In(9,36)*OM236*OM336-Fs336*s.l(2,36)-s.dpt(2,46)*(Fq238*S37+Fq337*C37));
  Cq236 = -(s.trq(2,36)-Cq238*C37+Cq337*S37-OM136*OM336*(s.In(1,36)-s.In(9,36)));
  Cq336 = -(s.trq(3,36)+s.In(1,36)*OM136*OM236-s.In(9,36)*OMp336-Cq238*S37-Cq337*C37+Fq137*s.dpt(2,46)+Fs136*s.l(2,36));
  Fq235 = Fq236*C36-Fq336*S36;
  Fq335 = Fq236*S36+Fq336*C36;
  Cq235 = Cq236*C36-Cq336*S36;
  Cq335 = Cq236*S36+Cq336*C36;
  Fq134 = Fq136*C35+Fq335*S35;
  Fq334 = -(Fq136*S35-Fq335*C35);
  Cq134 = Cq136*C35+Cq335*S35;
  Cq334 = -(Cq136*S35-Cq335*C35);
  Fs133 = -(s.frc(1,33)-s.m(33)*(ALPHA16+q(33)*BETA26-(2.0)*qd(33)*OM36+BETA36*s.dpt(3,9)+BS16*s.dpt(1,9)));
  Fs233 = -(s.frc(2,33)-s.m(33)*(qdd(33)+ALPHA25+q(33)*BS56+BETA46*s.dpt(1,9)+BETA66*s.dpt(3,9)));
  Fs333 = -(s.frc(3,33)-s.m(33)*(ALPHA36+q(33)*BETA86+(2.0)*qd(33)*OM16+BETA76*s.dpt(1,9)+BS96*s.dpt(3,9)));
  Fs132 = -(s.frc(1,32)-s.m(32)*(ALPHA130*C32-ALPHA331*S32));
  Fs232 = -(s.frc(2,32)-s.m(32)*(ALPHA230*C31+ALPHA330*S31));
  Fs332 = -(s.frc(3,32)-s.m(32)*(ALPHA130*S32+ALPHA331*C32));
  Cq132 = -(s.trq(1,32)-s.In(1,32)*(C32*(OMp131-qd(32)*OM331)-S32*(OMp331+qd(32)*OM131))+OM232*OM332*(s.In(5,32)-s.In(9,32)));
  Cq232 = -(s.trq(2,32)-s.In(5,32)*(qdd(32)+C31*(OMp230+qd(31)*OM330)+S31*(OMp330-qd(31)*OM230))-OM132*OM332*(s.In(1,32)-s.In(9,32)));
  Cq332 = -(s.trq(3,32)-s.In(9,32)*(C32*(OMp331+qd(32)*OM131)+S32*(OMp131-qd(32)*OM331))+OM132*OM232*(s.In(1,32)-s.In(5,32)));
  Fq131 = Fs132*C32+Fs332*S32;
  Fq331 = -(Fs132*S32-Fs332*C32);
  Cq131 = Cq132*C32+Cq332*S32;
  Cq331 = -(Cq132*S32-Cq332*C32);
  Fq230 = -(Fq331*S31-Fs232*C31);
  Fq330 = Fq331*C31+Fs232*S31;
  Cq230 = Cq232*C31-Cq331*S31;
  Cq330 = Cq232*S31+Cq331*C31;
  Fs129 = -(s.frc(1,29)-s.m(29)*(ALPHA129+BETA229*s.l(2,29)+BETA329*s.l(3,29)+BS129*s.l(1,29)));
  Fs229 = -(s.frc(2,29)-s.m(29)*(ALPHA229+BETA429*s.l(1,29)+BETA629*s.l(3,29)+BS529*s.l(2,29)));
  Fs329 = -(s.frc(3,29)-s.m(29)*(ALPHA328+BETA729*s.l(1,29)+BETA829*s.l(2,29)+BS929*s.l(3,29)));
  Fq129 = Fs129+Fq131*C30-Fq230*S30;
  Fq229 = Fs229+Fq131*S30+Fq230*C30;
  Fq329 = Fq330+Fs329;
  Cq129 = -(s.trq(1,29)-s.In(1,29)*OMp129-Cq131*C30+Cq230*S30-Fq330*s.dpt(2,40)+Fs229*s.l(3,29)-Fs329*s.l(2,29)+OM229*OM329*(s.In(5,29)-...
 s.In(9,29))+s.dpt(3,40)*(Fq131*S30+Fq230*C30));
  Cq229 = -(s.trq(2,29)-s.In(5,29)*OMp229-Cq131*S30-Cq230*C30+Fq330*s.dpt(1,40)-Fs129*s.l(3,29)+Fs329*s.l(1,29)-OM129*OM329*(s.In(1,29)-...
 s.In(9,29))-s.dpt(3,40)*(Fq131*C30-Fq230*S30));
  Cq329 = -(s.trq(3,29)-Cq330-s.In(9,29)*OMp329+Fs129*s.l(2,29)-Fs229*s.l(1,29)+OM129*OM229*(s.In(1,29)-s.In(5,29))-s.dpt(1,40)*(Fq131*S30+Fq230*...
 C30)+s.dpt(2,40)*(Fq131*C30-Fq230*S30));
  Fq128 = Fq129*C29-Fq229*S29;
  Fq228 = Fq129*S29+Fq229*C29;
  Cq128 = Cq129*C29-Cq229*S29;
  Cq228 = Cq129*S29+Cq229*C29;
  Fq127 = Fq128*C28+Fq329*S28;
  Fq327 = -(Fq128*S28-Fq329*C28);
  Cq127 = Cq128*C28+Cq329*S28;
  Cq327 = -(Cq128*S28-Cq329*C28);
  Fs126 = -(s.frc(1,26)-s.m(26)*(ALPHA125+BETA226*s.l(2,26)));
  Fs326 = -(s.frc(3,26)-s.m(26)*(ALPHA326+BETA826*s.l(2,26)));
  Fq126 = Fq127+Fs126;
  Fq226 = -(s.frc(2,26)-s.m(26)*(ALPHA226+BS526*s.l(2,26))-Fq228*C27+Fq327*S27);
  Fq326 = Fs326+Fq228*S27+Fq327*C27;
  Cq126 = -(s.trq(1,26)-Cq127-s.In(1,26)*OMp126-s.In(9,26)*OM226*OM326-Fs326*s.l(2,26)-s.dpt(2,37)*(Fq228*S27+Fq327*C27));
  Cq226 = -(s.trq(2,26)-Cq228*C27+Cq327*S27-OM126*OM326*(s.In(1,26)-s.In(9,26)));
  Cq326 = -(s.trq(3,26)+s.In(1,26)*OM126*OM226-s.In(9,26)*OMp326-Cq228*S27-Cq327*C27+Fq127*s.dpt(2,37)+Fs126*s.l(2,26));
  Fq225 = Fq226*C26-Fq326*S26;
  Fq325 = Fq226*S26+Fq326*C26;
  Cq225 = Cq226*C26-Cq326*S26;
  Cq325 = Cq226*S26+Cq326*C26;
  Fq124 = Fq126*C25+Fq325*S25;
  Fq324 = -(Fq126*S25-Fq325*C25);
  Cq124 = Cq126*C25+Cq325*S25;
  Cq324 = -(Cq126*S25-Cq325*C25);
  Fs123 = -(s.frc(1,23)+s.m(23)*(s.l(1,23)*(OM223*OM223+OM323*OM323)-s.l(2,23)*(BS223-OMp323)-s.l(3,23)*(BS323+OMp223)-C22*(ALPHA16+BETA26*...
 s.dpt(2,5)+BETA36*s.dpt(3,5)+BS16*s.dpt(1,5))-S22*(ALPHA25+BETA46*s.dpt(1,5)+BETA66*s.dpt(3,5)+BS56*s.dpt(2,5))));
  Fs223 = -(s.frc(2,23)-s.m(23)*(ALPHA222*C23+ALPHA322*S23+s.l(1,23)*(BS223+OMp323)-s.l(2,23)*(OM123*OM123+OM323*OM323)+s.l(3,23)*(BS623-OMp123))...
 );
  Fs323 = -(s.frc(3,23)+s.m(23)*(ALPHA222*S23-ALPHA322*C23-s.l(1,23)*(BS323-OMp223)-s.l(2,23)*(BS623+OMp123)+s.l(3,23)*(OM123*OM123+OM223*OM223))...
 );
  Cq123 = -(s.trq(1,23)-s.In(1,23)*OMp123-s.In(9,23)*OM223*OM323+Fs223*s.l(3,23)-Fs323*s.l(2,23));
  Cq223 = -(s.trq(2,23)-Fs123*s.l(3,23)+Fs323*s.l(1,23)-OM123*OM323*(s.In(1,23)-s.In(9,23)));
  Cq323 = -(s.trq(3,23)+s.In(1,23)*OM123*OM223-s.In(9,23)*OMp323+Fs123*s.l(2,23)-Fs223*s.l(1,23));
  Fq222 = Fs223*C23-Fs323*S23;
  Fq322 = Fs223*S23+Fs323*C23;
  Cq222 = Cq223*C23-Cq323*S23;
  Cq322 = Cq223*S23+Cq323*C23;
  Fs121 = -(s.frc(1,21)+s.m(21)*(s.l(1,21)*(OM221*OM221+OM321*OM321)-s.l(2,21)*(BS221-OMp321)-s.l(3,21)*(BS321+OMp221)-C20*(ALPHA16+BETA26*...
 s.dpt(2,4)+BETA36*s.dpt(3,4)+BS16*s.dpt(1,4))-S20*(ALPHA25+BETA46*s.dpt(1,4)+BETA66*s.dpt(3,4)+BS56*s.dpt(2,4))));
  Fs221 = -(s.frc(2,21)-s.m(21)*(ALPHA220*C21+ALPHA320*S21+s.l(1,21)*(BS221+OMp321)-s.l(2,21)*(OM121*OM121+OM321*OM321)+s.l(3,21)*(BS621-OMp121))...
 );
  Fs321 = -(s.frc(3,21)+s.m(21)*(ALPHA220*S21-ALPHA320*C21-s.l(1,21)*(BS321-OMp221)-s.l(2,21)*(BS621+OMp121)+s.l(3,21)*(OM121*OM121+OM221*OM221))...
 );
  Cq121 = -(s.trq(1,21)-s.In(1,21)*OMp121-s.In(9,21)*OM221*OM321+Fs221*s.l(3,21)-Fs321*s.l(2,21));
  Cq221 = -(s.trq(2,21)-Fs121*s.l(3,21)+Fs321*s.l(1,21)-OM121*OM321*(s.In(1,21)-s.In(9,21)));
  Cq321 = -(s.trq(3,21)+s.In(1,21)*OM121*OM221-s.In(9,21)*OMp321+Fs121*s.l(2,21)-Fs221*s.l(1,21));
  Fq220 = Fs221*C21-Fs321*S21;
  Fq320 = Fs221*S21+Fs321*C21;
  Cq220 = Cq221*C21-Cq321*S21;
  Cq320 = Cq221*S21+Cq321*C21;
  Fs119 = -(s.frc(1,19)+s.m(19)*(s.l(1,19)*(OM219*OM219+OM319*OM319)-s.l(2,19)*(BS219-OMp319)-s.l(3,19)*(BS319+OMp219)-C18*(ALPHA16+BETA26*...
 s.dpt(2,3)+BETA36*s.dpt(3,3)+BS16*s.dpt(1,3))-S18*(ALPHA25+BETA46*s.dpt(1,3)+BETA66*s.dpt(3,3)+BS56*s.dpt(2,3))));
  Fs219 = -(s.frc(2,19)-s.m(19)*(ALPHA218*C19+ALPHA318*S19+s.l(1,19)*(BS219+OMp319)-s.l(2,19)*(OM119*OM119+OM319*OM319)+s.l(3,19)*(BS619-OMp119))...
 );
  Fs319 = -(s.frc(3,19)+s.m(19)*(ALPHA218*S19-ALPHA318*C19-s.l(1,19)*(BS319-OMp219)-s.l(2,19)*(BS619+OMp119)+s.l(3,19)*(OM119*OM119+OM219*OM219))...
 );
  Cq119 = -(s.trq(1,19)-s.In(1,19)*OMp119-s.In(9,19)*OM219*OM319+Fs219*s.l(3,19)-Fs319*s.l(2,19));
  Cq219 = -(s.trq(2,19)-Fs119*s.l(3,19)+Fs319*s.l(1,19)-OM119*OM319*(s.In(1,19)-s.In(9,19)));
  Cq319 = -(s.trq(3,19)+s.In(1,19)*OM119*OM219-s.In(9,19)*OMp319+Fs119*s.l(2,19)-Fs219*s.l(1,19));
  Fq218 = Fs219*C19-Fs319*S19;
  Fq318 = Fs219*S19+Fs319*C19;
  Cq218 = Cq219*C19-Cq319*S19;
  Cq318 = Cq219*S19+Cq319*C19;
  Fs117 = -(s.frc(1,17)+s.m(17)*(s.l(1,17)*(OM217*OM217+OM317*OM317)-s.l(2,17)*(BS217-OMp317)-s.l(3,17)*(BS317+OMp217)-C16*(ALPHA16+BETA26*...
 s.dpt(2,2)+BETA36*s.dpt(3,2)+BS16*s.dpt(1,2))-S16*(ALPHA25+BETA46*s.dpt(1,2)+BETA66*s.dpt(3,2)+BS56*s.dpt(2,2))));
  Fs217 = -(s.frc(2,17)-s.m(17)*(ALPHA216*C17+ALPHA316*S17+s.l(1,17)*(BS217+OMp317)-s.l(2,17)*(OM117*OM117+OM317*OM317)+s.l(3,17)*(BS617-OMp117))...
 );
  Fs317 = -(s.frc(3,17)+s.m(17)*(ALPHA216*S17-ALPHA316*C17-s.l(1,17)*(BS317-OMp217)-s.l(2,17)*(BS617+OMp117)+s.l(3,17)*(OM117*OM117+OM217*OM217))...
 );
  Cq117 = -(s.trq(1,17)-s.In(1,17)*OMp117-s.In(9,17)*OM217*OM317+Fs217*s.l(3,17)-Fs317*s.l(2,17));
  Cq217 = -(s.trq(2,17)-Fs117*s.l(3,17)+Fs317*s.l(1,17)-OM117*OM317*(s.In(1,17)-s.In(9,17)));
  Cq317 = -(s.trq(3,17)+s.In(1,17)*OM117*OM217-s.In(9,17)*OMp317+Fs117*s.l(2,17)-Fs217*s.l(1,17));
  Fq216 = Fs217*C17-Fs317*S17;
  Fq316 = Fs217*S17+Fs317*C17;
  Cq216 = Cq217*C17-Cq317*S17;
  Cq316 = Cq217*S17+Cq317*C17;
  Fs115 = -(s.frc(1,15)-s.m(15)*(ALPHA113*C15-ALPHA314*S15));
  Fs215 = -(s.frc(2,15)-s.m(15)*(ALPHA213*C14+ALPHA313*S14));
  Fs315 = -(s.frc(3,15)-s.m(15)*(ALPHA113*S15+ALPHA314*C15));
  Cq115 = -(s.trq(1,15)-s.In(1,15)*(C15*(OMp114-qd(15)*OM314)-S15*(OMp314+qd(15)*OM114))+OM215*OM315*(s.In(5,15)-s.In(9,15)));
  Cq215 = -(s.trq(2,15)-s.In(5,15)*(qdd(15)+C14*(OMp213+qd(14)*OM313)+S14*(OMp313-qd(14)*OM213))-OM115*OM315*(s.In(1,15)-s.In(9,15)));
  Cq315 = -(s.trq(3,15)-s.In(9,15)*(C15*(OMp314+qd(15)*OM114)+S15*(OMp114-qd(15)*OM314))+OM115*OM215*(s.In(1,15)-s.In(5,15)));
  Fq114 = Fs115*C15+Fs315*S15;
  Fq314 = -(Fs115*S15-Fs315*C15);
  Cq114 = Cq115*C15+Cq315*S15;
  Cq314 = -(Cq115*S15-Cq315*C15);
  Fq213 = -(Fq314*S14-Fs215*C14);
  Fq313 = Fq314*C14+Fs215*S14;
  Cq213 = Cq215*C14-Cq314*S14;
  Cq313 = Cq215*S14+Cq314*C14;
  Fs112 = -(s.frc(1,12)-s.m(12)*(ALPHA112+BETA212*s.l(2,12)+BETA312*s.l(3,12)+BS112*s.l(1,12)));
  Fs212 = -(s.frc(2,12)-s.m(12)*(ALPHA212+BETA412*s.l(1,12)+BETA612*s.l(3,12)+BS512*s.l(2,12)));
  Fs312 = -(s.frc(3,12)-s.m(12)*(ALPHA311+BETA712*s.l(1,12)+BETA812*s.l(2,12)+BS912*s.l(3,12)));
  Fq112 = Fs112+Fq114*C13-Fq213*S13;
  Fq212 = Fs212+Fq114*S13+Fq213*C13;
  Fq312 = Fq313+Fs312;
  Cq112 = -(s.trq(1,12)-s.In(1,12)*OMp112-Cq114*C13+Cq213*S13-Fq313*s.dpt(2,27)+Fs212*s.l(3,12)-Fs312*s.l(2,12)+OM212*OM312*(s.In(5,12)-...
 s.In(9,12))+s.dpt(3,27)*(Fq114*S13+Fq213*C13));
  Cq212 = -(s.trq(2,12)-s.In(5,12)*OMp212-Cq114*S13-Cq213*C13+Fq313*s.dpt(1,27)-Fs112*s.l(3,12)+Fs312*s.l(1,12)-OM112*OM312*(s.In(1,12)-...
 s.In(9,12))-s.dpt(3,27)*(Fq114*C13-Fq213*S13));
  Cq312 = -(s.trq(3,12)-Cq313-s.In(9,12)*OMp312+Fs112*s.l(2,12)-Fs212*s.l(1,12)+OM112*OM212*(s.In(1,12)-s.In(5,12))-s.dpt(1,27)*(Fq114*S13+Fq213*...
 C13)+s.dpt(2,27)*(Fq114*C13-Fq213*S13));
  Fq111 = Fq112*C12-Fq212*S12;
  Fq211 = Fq112*S12+Fq212*C12;
  Cq111 = Cq112*C12-Cq212*S12;
  Cq211 = Cq112*S12+Cq212*C12;
  Fq110 = Fq111*C11+Fq312*S11;
  Fq310 = -(Fq111*S11-Fq312*C11);
  Cq110 = Cq111*C11+Cq312*S11;
  Cq310 = -(Cq111*S11-Cq312*C11);
  Fs19 = -(s.frc(1,9)-s.m(9)*(ALPHA18+BETA29*s.l(2,9)));
  Fs39 = -(s.frc(3,9)-s.m(9)*(ALPHA39+BETA89*s.l(2,9)));
  Fq19 = Fq110+Fs19;
  Fq29 = -(s.frc(2,9)-s.m(9)*(ALPHA29+BS59*s.l(2,9))-Fq211*C10+Fq310*S10);
  Fq39 = Fs39+Fq211*S10+Fq310*C10;
  Cq19 = -(s.trq(1,9)-Cq110-s.In(1,9)*OMp19-s.In(9,9)*OM29*OM39-Fs39*s.l(2,9)-s.dpt(2,24)*(Fq211*S10+Fq310*C10));
  Cq29 = -(s.trq(2,9)-Cq211*C10+Cq310*S10-OM19*OM39*(s.In(1,9)-s.In(9,9)));
  Cq39 = -(s.trq(3,9)+s.In(1,9)*OM19*OM29-s.In(9,9)*OMp39-Cq211*S10-Cq310*C10+Fq110*s.dpt(2,24)+Fs19*s.l(2,9));
  Fq28 = Fq29*C9-Fq39*S9;
  Fq38 = Fq29*S9+Fq39*C9;
  Cq28 = Cq29*C9-Cq39*S9;
  Cq38 = Cq29*S9+Cq39*C9;
  Fq17 = Fq19*C8+Fq38*S8;
  Fq37 = -(Fq19*S8-Fq38*C8);
  Cq17 = Cq19*C8+Cq38*S8;
  Cq37 = -(Cq19*S8-Cq38*C8);
  Fs16 = -(s.frc(1,6)-s.m(6)*(ALPHA16+BETA36*s.l(3,6)+BS16*s.l(1,6)));
  Fs26 = -(s.frc(2,6)-s.m(6)*(ALPHA25+BETA46*s.l(1,6)+BETA66*s.l(3,6)));
  Fs36 = -(s.frc(3,6)-s.m(6)*(ALPHA36+BETA76*s.l(1,6)+BS96*s.l(3,6)));
  Fq16 = Fs133+Fs16+Fq124*C24+Fq134*C34+Fq147*C47+Fq160*C60+Fq162*C62+Fq17*C7-Fq216*S16-Fq218*S18-Fq220*S20-Fq222*S22-Fq225*S24-Fq235*S34-Fq243*...
 S43-Fq245*S45-Fq248*S47-Fq256*S56-Fq258*S58-Fq28*S7+Fq360*S60+Fq362*S62+Fs117*C16+Fs119*C18+Fs121*C20+Fs123*C22+Fs144*C43+Fs146*C45+Fs157*C56+Fs159*...
 C58;
  Fq26 = Fq260+Fq262+Fs233+Fs26+Fq124*S24+Fq134*S34+Fq147*S47+Fq17*S7+Fq216*C16+Fq218*C18+Fq220*C20+Fq222*C22+Fq225*C24+Fq235*C34+Fq243*C43+Fq245...
 *C45+Fq248*C47+Fq256*C56+Fq258*C58+Fq28*C7+Fs117*S16+Fs119*S18+Fs121*S20+Fs123*S22+Fs144*S43+Fs146*S45+Fs157*S56+Fs159*S58;
  Fq36 = Fq316+Fq318+Fq320+Fq322+Fq324+Fq334+Fq343+Fq345+Fq347+Fq356+Fq358+Fq37+Fs333+Fs36-Fq160*S60-Fq162*S62+Fq360*C60+Fq362*C62;
  Cq16 = -(s.trq(1,33)+s.trq(1,6)-q(33)*Fs333-s.In(1,33)*OMp16-s.In(1,6)*OMp16-s.In(3,6)*OMp36-Cq117*C16-Cq119*C18-Cq121*C20-Cq123*C22-Cq124*C24-...
 Cq134*C34-Cq144*C43-Cq146*C45-Cq147*C47-Cq157*C56-Cq159*C58-Cq160*C60-Cq162*C62-Cq17*C7+Cq216*S16+Cq218*S18+Cq220*S20+Cq222*S22+Cq225*S24+Cq235*S34+...
 Cq243*S43+Cq245*S45+Cq248*S47+Cq256*S56+Cq258*S58+Cq28*S7-Cq360*S60-Cq362*S62+Fq260*s.dpt(3,21)+Fq262*s.dpt(3,22)-Fq316*s.dpt(2,2)-Fq318*s.dpt(2,3)-...
 Fq320*s.dpt(2,4)-Fq322*s.dpt(2,5)-Fq324*s.dpt(2,6)-Fq334*s.dpt(2,10)-Fq343*s.dpt(2,11)-Fq345*s.dpt(2,12)-Fq347*s.dpt(2,15)-Fq356*s.dpt(2,16)-Fq358*...
 s.dpt(2,17)-Fq37*s.dpt(2,1)+Fs233*s.dpt(3,9)+Fs26*s.l(3,6)+OM26*OM36*(s.In(5,33)-s.In(9,33))-OM26*(s.In(3,6)*OM16-s.In(5,6)*OM36+s.In(9,6)*OM36)+...
 s.dpt(2,21)*(Fq160*S60-Fq360*C60)+s.dpt(2,22)*(Fq162*S62-Fq362*C62)+s.dpt(3,1)*(Fq17*S7+Fq28*C7)+s.dpt(3,10)*(Fq134*S34+Fq235*C34)+s.dpt(3,11)*(Fq243...
 *C43+Fs144*S43)+s.dpt(3,12)*(Fq245*C45+Fs146*S45)+s.dpt(3,15)*(Fq147*S47+Fq248*C47)+s.dpt(3,16)*(Fq256*C56+Fs157*S56)+s.dpt(3,17)*(Fq258*C58+Fs159*...
 S58)+s.dpt(3,2)*(Fq216*C16+Fs117*S16)+s.dpt(3,3)*(Fq218*C18+Fs119*S18)+s.dpt(3,4)*(Fq220*C20+Fs121*S20)+s.dpt(3,5)*(Fq222*C22+Fs123*S22)+s.dpt(3,6)*(...
 Fq124*S24+Fq225*C24));
  Cq26 = -(s.trq(2,33)+s.trq(2,6)-Cq260-Cq262-s.In(5,33)*OMp26-s.In(5,6)*OMp26-Cq117*S16-Cq119*S18-Cq121*S20-Cq123*S22-Cq124*S24-Cq134*S34-Cq144*...
 S43-Cq146*S45-Cq147*S47-Cq157*S56-Cq159*S58-Cq17*S7-Cq216*C16-Cq218*C18-Cq220*C20-Cq222*C22-Cq225*C24-Cq235*C34-Cq243*C43-Cq245*C45-Cq248*C47-Cq256*...
 C56-Cq258*C58-Cq28*C7+Fq316*s.dpt(1,2)+Fq318*s.dpt(1,3)+Fq320*s.dpt(1,4)+Fq322*s.dpt(1,5)+Fq324*s.dpt(1,6)+Fq334*s.dpt(1,10)+Fq343*s.dpt(1,11)+Fq345*...
 s.dpt(1,12)+Fq347*s.dpt(1,15)+Fq356*s.dpt(1,16)+Fq358*s.dpt(1,17)+Fq37*s.dpt(1,1)-Fs133*s.dpt(3,9)-Fs16*s.l(3,6)+Fs333*s.dpt(1,9)+Fs36*s.l(1,6)-OM16*...
 OM36*(s.In(1,33)-s.In(9,33))+OM16*(s.In(3,6)*OM16+s.In(9,6)*OM36)-OM36*(s.In(1,6)*OM16+s.In(3,6)*OM36)-s.dpt(1,21)*(Fq160*S60-Fq360*C60)-s.dpt(1,22)*...
 (Fq162*S62-Fq362*C62)-s.dpt(3,1)*(Fq17*C7-Fq28*S7)-s.dpt(3,10)*(Fq134*C34-Fq235*S34)+s.dpt(3,11)*(Fq243*S43-Fs144*C43)+s.dpt(3,12)*(Fq245*S45-Fs146*...
 C45)-s.dpt(3,15)*(Fq147*C47-Fq248*S47)+s.dpt(3,16)*(Fq256*S56-Fs157*C56)+s.dpt(3,17)*(Fq258*S58-Fs159*C58)+s.dpt(3,2)*(Fq216*S16-Fs117*C16)-...
 s.dpt(3,21)*(Fq160*C60+Fq360*S60)-s.dpt(3,22)*(Fq162*C62+Fq362*S62)+s.dpt(3,3)*(Fq218*S18-Fs119*C18)+s.dpt(3,4)*(Fq220*S20-Fs121*C20)+s.dpt(3,5)*(...
 Fq222*S22-Fs123*C22)-s.dpt(3,6)*(Fq124*C24-Fq225*S24));
  Cq36 = -(s.trq(3,33)+s.trq(3,6)-Cq316-Cq318-Cq320-Cq322-Cq324-Cq334-Cq343-Cq345-Cq347-Cq356-Cq358-Cq37+q(33)*Fs133-s.In(3,6)*OMp16-s.In(9,33)*...
 OMp36-s.In(9,6)*OMp36+Cq160*S60+Cq162*S62-Cq360*C60-Cq362*C62-Fq260*s.dpt(1,21)-Fq262*s.dpt(1,22)-Fs233*s.dpt(1,9)-Fs26*s.l(1,6)+OM16*OM26*(...
 s.In(1,33)-s.In(5,33))+OM26*(s.In(1,6)*OM16+s.In(3,6)*OM36-s.In(5,6)*OM16)-s.dpt(1,1)*(Fq17*S7+Fq28*C7)-s.dpt(1,10)*(Fq134*S34+Fq235*C34)-s.dpt(1,11)...
 *(Fq243*C43+Fs144*S43)-s.dpt(1,12)*(Fq245*C45+Fs146*S45)-s.dpt(1,15)*(Fq147*S47+Fq248*C47)-s.dpt(1,16)*(Fq256*C56+Fs157*S56)-s.dpt(1,17)*(Fq258*C58+...
 Fs159*S58)-s.dpt(1,2)*(Fq216*C16+Fs117*S16)-s.dpt(1,3)*(Fq218*C18+Fs119*S18)-s.dpt(1,4)*(Fq220*C20+Fs121*S20)-s.dpt(1,5)*(Fq222*C22+Fs123*S22)-...
 s.dpt(1,6)*(Fq124*S24+Fq225*C24)+s.dpt(2,1)*(Fq17*C7-Fq28*S7)+s.dpt(2,10)*(Fq134*C34-Fq235*S34)-s.dpt(2,11)*(Fq243*S43-Fs144*C43)-s.dpt(2,12)*(Fq245*...
 S45-Fs146*C45)+s.dpt(2,15)*(Fq147*C47-Fq248*S47)-s.dpt(2,16)*(Fq256*S56-Fs157*C56)-s.dpt(2,17)*(Fq258*S58-Fs159*C58)-s.dpt(2,2)*(Fq216*S16-Fs117*C16)...
 +s.dpt(2,21)*(Fq160*C60+Fq360*S60)+s.dpt(2,22)*(Fq162*C62+Fq362*S62)-s.dpt(2,3)*(Fq218*S18-Fs119*C18)-s.dpt(2,4)*(Fq220*S20-Fs121*C20)-s.dpt(2,5)*(...
 Fq222*S22-Fs123*C22)+s.dpt(2,6)*(Fq124*C24-Fq225*S24));
  Fq15 = Fq16*C6+Fq36*S6;
  Fq35 = -(Fq16*S6-Fq36*C6);
  Cq15 = Cq16*C6+Cq36*S6;
  Fq24 = Fq26*C5-Fq35*S5;
  Fq34 = Fq26*S5+Fq35*C5;
  Cq34 = Cq26*S5-C5*(Cq16*S6-Cq36*C6);
  Fq13 = Fq15*C4-Fq24*S4;
  Fq23 = Fq15*S4+Fq24*C4;

% = = Block_0_2_0_0_0_0 = = 
 
% Symbolic Outputs  

  Qq(1) = Fq13;
  Qq(2) = Fq23;
  Qq(3) = Fq34;
  Qq(4) = Cq34;
  Qq(5) = Cq15;
  Qq(6) = Cq26;
  Qq(7) = Cq37;
  Qq(8) = Cq28;
  Qq(9) = Cq19;
  Qq(10) = Cq110;
  Qq(11) = Cq211;
  Qq(12) = Cq312;
  Qq(13) = Cq313;
  Qq(14) = Cq114;
  Qq(15) = Cq215;
  Qq(16) = Cq316;
  Qq(17) = Cq117;
  Qq(18) = Cq318;
  Qq(19) = Cq119;
  Qq(20) = Cq320;
  Qq(21) = Cq121;
  Qq(22) = Cq322;
  Qq(23) = Cq123;
  Qq(24) = Cq324;
  Qq(25) = Cq225;
  Qq(26) = Cq126;
  Qq(27) = Cq127;
  Qq(28) = Cq228;
  Qq(29) = Cq329;
  Qq(30) = Cq330;
  Qq(31) = Cq131;
  Qq(32) = Cq232;
  Qq(33) = Fs233;
  Qq(34) = Cq334;
  Qq(35) = Cq235;
  Qq(36) = Cq136;
  Qq(37) = Cq137;
  Qq(38) = Cq238;
  Qq(39) = Cq339;
  Qq(40) = Cq340;
  Qq(41) = Cq141;
  Qq(42) = Cq242;
  Qq(43) = Cq343;
  Qq(44) = Cq144;
  Qq(45) = Cq345;
  Qq(46) = Cq146;
  Qq(47) = Cq347;
  Qq(48) = Cq248;
  Qq(49) = Cq149;
  Qq(50) = Cq150;
  Qq(51) = Cq251;
  Qq(52) = Cq352;
  Qq(53) = Cq353;
  Qq(54) = Cq154;
  Qq(55) = Cq255;
  Qq(56) = Cq356;
  Qq(57) = Cq157;
  Qq(58) = Cq358;
  Qq(59) = Cq159;
  Qq(60) = Cq260;
  Qq(61) = -s.trq(2,61);
  Qq(62) = Cq262;
  Qq(63) = -s.trq(2,63);

% ====== END Task 0 ====== 

  

