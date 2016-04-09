% LMECA: projet MBS - BAC13
% 
% Groupe 4
% de Walque Cyril, Timmermans Sebastien, Lechien Vianney

global data;
data.g = 9.81; %[0; 0; 9.81];

%donnee initialement connue
%data.q = [0; 0; 0; 0; 0.1; 0.37]; 

%donnee trouvee grace a la ligne precedente
data.q = [0.3852; 0.1692; 0.1343; 0.1434; 0.1; 0.37];
data.qp =[0; 0; 0; 0; 0; 0];


%si on veut en fonction des longueurs des verins
data.ind_v = [1; 3; 5; 6];
data.ind_u = [2; 4];
