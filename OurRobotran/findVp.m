% LMECA: projet MBS - BAC13
% 
% Groupe 4
% de Walque Cyril, Timmermans Sebastien, Lechien Vianney


function [Vp] = findVp(data)
%
%global data;
[~,Jac] = mbs_cons_hJ(data);

Jv = Jac(:,data.ind_v);
Ju = Jac(:,data.ind_u);

Vp = -Jv\(Ju)*(data.qp(data.ind_u));

end

