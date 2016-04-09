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
data.qp(data.ind_u)=[U(3); U(4)]; %%%%%%%%%%%%%%%%%%%%%%%%%%



%Newton raphson
data.q(data.ind_v)  = NewtonRaphson(data);

%Qpoint
data.qp(data.ind_v) = findVp(data);


%force


%Dérivée seconde

[ ~,Jac ] = hJ(data);
Jv = Jac(:,data.ind_v);
Ju = Jac(:,data.ind_u);
Jdqd =Jdqd(data);
B = - Jv\ Jdqd;
Bvu = -Jv\Ju;
Buv=Bvu';
%[M,C] = mbs_dirdyna(data);

M = get_Mass_Matrix(data);

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

