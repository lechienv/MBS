% LMECA: projet MBS - BAC13
% 
% Groupe 4
% de Walque Cyril, Timmermans Sebastien, Lechien Vianney

function [ Uprime ] = fPrimeRobotran( t,U )
%

global data;
%data.q
%data.q(data.ind_u)
data.q(data.ind_u)= [U(1); U(2)];
data.qp(data.ind_u)=[U(3); U(4)];



%Newton raphson
data.q(data.ind_v)  = NewtonRaphson(data);

%Qpoint
data.qp(data.ind_v) = findVp(data);


%force
K= 100;
C = 10;
f = 0.5;
%Fpa = force des ressorts (qui dependent des vitesses et position des
%VERINS !!
Fpa = - K*[data.q(2);data.q(4)] - C * [data.qp(2);data.qp(4)];

a1 = [ 3.5138 11.6847 6.3189 1.0719];
a2 = [ 3.5138 -11.6847 6.3189 -1.0719];
b1 = [ -0.46 -5.0436 0.1826];
b2 = [ 0.46 -5.0436 -0.1826];

Fac1 = 0.5*a1(1) + a1(2)*cos(2*pi*t*f) + a1(3)*cos(4*pi*f*t) + a1(4)*cos(6*pi*f*t) + b1(1)*sin(2*pi*f*t) + b1(2)*sin(4*pi*f*t) + b1(3)*sin(6*pi*f*t);
Fac2 = 0.5*a2(1) + a2(2)*cos(2*pi*t*f) + a2(3)*cos(4*pi*f*t) + a2(4)*cos(6*pi*f*t) + b2(1)*sin(2*pi*f*t) + b2(2)*sin(4*pi*f*t) + b2(3)*sin(6*pi*f*t);
f1 = Fac1 + Fpa(1);
f2 = Fac2 + Fpa(2);

%Dérivée seconde

[ ~,Jac ] = mbs_cons_hJ(data);
Jv = Jac(:,data.ind_v);
Ju = Jac(:,data.ind_u);
Jdqd =mbs_cons_Jdqd(data);
B = - Jv\ Jdqd;
Bvu = -Jv\Ju;
Buv=Bvu';
%[M,C] = mbs_dirdyna(data);

get
Muv = M(data.ind_u, data.ind_v);
Muu = M(data.ind_u, data.ind_u);
Mvv = M(data.ind_v, data.ind_v);
Mvu = M(data.ind_v, data.ind_u);
cu = C(data.ind_u);
cv = C(data.ind_v);
Q = [ 0; f1; 0 ;f2 ; 0; 0 ];
qu = Q(data.ind_u);
qv = Q(data.ind_v);

Upp = (Muu+Muv*Bvu +Buv * Mvu + Buv*Mvv*Bvu) \ (-((Muv+Buv*Mvv)*B + (cu + Buv * cv) - (qu + Buv*qv)));

Uprime = [ U(3); U(4) ; Upp(1); Upp(2)];

end

