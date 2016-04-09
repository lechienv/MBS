% LFSAB1504: projet MBS - BAC13
% 
% Limousine
%
% Group 5 :
%   Jeremy Salerno
%   Vianney Lechien
%   Stephane Quinet
%   Philippe De Rua
%
% mars 2015

function [yp] = fprimeLimo (t, y)
%  function 'fprime' which is given to ode45

global MBS_user MBS_data %MBS_info

usrfun = 0;

% time display :
timeStepDisplay = MBS_user.timeStepDisplay;
if t - timeStepDisplay > 0 && MBS_user.timeDisplay
    disp(['t: ' num2str(timeStepDisplay)])
    MBS_user.timeStepDisplay = timeStepDisplay + 0.1;
end

% getting the indexes
nqu = MBS_data.nqu; % number of independant variables
qu = MBS_data.qu; % indexes of the independant variables
qv = MBS_data.qv; % indexes of the dependant variables
qc = MBS_data.qdriven; % index of the driven variables
nqc = MBS_data.nqdriven; % number of driven variables
quc = [qu qc]; % index of the independant and driven variables

% Copy of the state variables (y) in the joint variables (qu, qdu)
MBS_data.q(qu) = y(1:nqu); 
MBS_data.qd(qu)= y(nqu+1:2*nqu); 
MBS_data.tsim = t;

MBS_data.frc = zeros(size(MBS_data.frc));
MBS_data.trq = zeros(size(MBS_data.trq));
MBS_data.Qq = zeros(size(MBS_data.Qq));

% Computation of qc
[MBS_data.q,MBS_data.qd,MBS_data.qdd] = user_DrivenJoints( MBS_data, t);

% Computation of v
MBS_data.q = user_NewtonRaphson( MBS_data, t, 10^-9, 25);

% Computation of Jac
[MBS_user.h, Jac] = mbs_cons_hJ_Limousine_Originale_GR05( MBS_data, t, usrfun);

% Decomposition of Jac
Jacu = Jac( :, quc);
Jacv = Jac( :, qv);

% Computation of Bvu
Bvu = -Jacv\Jacu;

% Computation of vd
MBS_data.qd(qv) = Bvu*MBS_data.qd(quc);

% Computation of b
Jdqd = mbs_cons_jdqd_Limousine_Originale_GR05( MBS_data, t, usrfun);
b = -Jacv\Jdqd;

% Computation of the external forces/torques
[MBS_data.frc, MBS_data.trq] = user_ExtForces( MBS_data, t);

% Computation of the forces/torques
Q = user_JointForces( MBS_data, t);

% Computation of the link forces
fct_user.flink = @user_LinkForces;
[MBS_data.frc, MBS_data.trq, MBS_data.Fl, MBS_data.Z, MBS_data.Zd] = mbs_link_Limousine_Originale_GR05(MBS_data, t, fct_user);

% Calculations of mass matrix and C
[M,C] = mbs_dirdyna_Limousine_Originale_GR05( MBS_data, t, usrfun);

% Decomposition of mass matrix, C and Q
Muu = M( quc, quc);
Mvv = M( qv, qv);
Muv = M( quc, qv);
Mvu = M( qv, quc);

Cu = C( quc);
Cv = C( qv);

Qu = Q( quc);
Qv = Q( qv);

%Calcul de la matrice Mru et décomposition en parties indép et driven
Mru = (Muu + Muv*Bvu + Bvu'*Mvu + Bvu'*Mvv*Bvu);

Mruu = Mru(1:nqu, 1:nqu);
Mruc = Mru(1:nqu, nqu+1:nqu+nqc);

%Calcul de la matrice Mru et décomposition en parties indép et driven
Fr = (Qu + Bvu'*Qv - (Muv + Bvu'*Mvv)*b - Cu - Bvu'*Cv);

Fru = Fr(1:nqu);

% System of ODEs 
MBS_data.qd(qu) = MBS_data.qd(qu);
MBS_data.qdd(qu) = Mruu\(Fru + Mruc * MBS_data.qdd(qc));

% Copy of the joint variables in the state variables
yp(1:nqu,1) = MBS_data.qd(qu);
yp(nqu+1:2*nqu,1) = MBS_data.qdd(qu);

% Copy used to display and plot the results
MBS_user.q = MBS_data.q';
MBS_user.qd = MBS_data.qd';
end