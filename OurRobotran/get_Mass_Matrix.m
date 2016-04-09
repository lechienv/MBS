% LMECA: projet MBS - BAC13
% 
% Groupe 4
% de Walque Cyril, Timmermans Sebastien, Lechien Vianney

function [ M ] = get_Mass_Matrix(data)
% gives the mass matrix 
%

M = zeros(data.Njoint,data.Njoint);
%% chassis
M(1,1)= 50;
M(2,2) = 50;

%% UpperArm 
M(4,4)=1;
M(5,5)=1;
M(6,6) = 0.01;  %%selon xx

%% LowerArm 
M(7,7)=1;
M(8,8)=1;
M(9,9) = 0.01; %%selon xx

%% Knuckle
M(10,10)=5;
M(11,11)=5;


%% Wheel 

M(13,13)=5;
M(14,14)=5;
M(15,15) = 0.4; %% selon yy?
end

