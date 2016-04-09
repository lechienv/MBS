% LMECA: projet MBS - BAC13
% 
% Groupe 4
% de Walque Cyril, Timmermans Sebastien, Lechien Vianney


%% un peu de nettoyage:
close all; clear variables; clc;

% declaration de variables globales utiles
% mbs_data: structure principal utilise par les modules
% MBS_user: une structure ou l'utilisateur stocke des variables
%           qui lui sont utiles
global MBS_user mbs_data mbs_userfct

%% * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
% Chargement des donnees
% mbs_data
% prjname = 'Suspension_LMECA2802'  % correspond au nom du dossier
% [mbs_data, mbs_info] = mbs_oad(prjname,'default');


%% * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
% recuperation d'indices utiles

% le fonction mbs_get_body_id permet de retrouver l'indice de
% l'articulation parente d'un corps sur base du nom du corps
%MBS_user.id_Roue_AvantDroite = mbs_get_body_id(mbs_info,'Chassis');

% le fonction mbs_get_joint_id permet de retrouver l'indice
% d' une articulation sur base de son nom


mbs_userfct.flink=@user_LinkForces;
mbs_userfct.fext=@user_ExtForces;


%% * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
% Integration
tic;
% sauvegarde des valeurs initiales dans un champs specifique
mbs_data.q0 = mbs_data.q
mbs_data.qd0 = mbs_data.qd;
MBS_user.q = zeros(mbs_data.Njoint,1);
MBS_user.qd = zeros(mbs_data.Njoint,1);
MBS_user.qdd = zeros(mbs_data.Njoint,1);

% Conditions initiales du systeme reduit
y0 = [mbs_data.q0(mbs_data.qu), mbs_data.qd0(mbs_data.qu)];

% intervalle de temps pour la simulation (taper help ode45 pour plus d'option)
tspan = [0, 10];

% Option d'integration: help odeset pour plus d'info
options = odeset('MaxStep', 1e-2);

% Integration
[t, y] = ode45(@(t, y) fPrimeRobotran(t, y), tspan, y0, options);
% t: vecteur des instants auxquels la solution a ete calculee
% y: vecteur des valeurs des variables (positions et vitesses independante) d'etat pour chaque instant


%% * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
% Calcul des resultats complementaires
display('c''est bon on est deja a la moitie :)')
% tous les resultats utiles sont stockes dans la structure result
mbs_data.q = mbs_data.q0;
mbs_data.qd = mbs_data.qd0;


for i=1:length(t)
    fprimeRobotran(t(i), y(i,:)'); % appel en boucle de fprime pour refaire tous les calculs a chaque pas de la solution
    result.q(i,:)  = MBS_user.q;
    result.qd(i,:) = MBS_user.qd;
 end

%% * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
% Sauvegrade des resultats pour animation
% reechantillonage de la solution: au cas ou le pas de temps utilise pour
% ode45 ne correspond pas au pas de temps necessaire pour l'animation

% pas de temps entre 2 solutions d'animation
dtAnim = 0.001;
% vecteur des instants auquels on calcule une image
tAnim=[t(1):dtAnim:t(end)]';
% reechantillonage de la solution
qAnim = interp1(t,result.q, tAnim);
% sauvegarde du fichier d'animation
tqAnim=[tAnim qAnim];
save([mbs_data.prjpath '/' prjname '/animationR/qAnim.anim'], 'tqAnim',  '-ASCII');



%% * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
% Graphes des resultats

toc;
