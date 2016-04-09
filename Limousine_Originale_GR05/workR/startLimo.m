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

function [t_out,q_out,qd_out] = startLimo(tspan,mae,name,qin,qdin,speed,k_bar)
% INPUT :   tspan, the simulation time interval
%           mae = 0 if simulation or = 1 if equilibrium
%           name, the name of the output file of the simulation
%           qin, intial position, (= 0 if mae = 1)
%           qdin, initial velocity, (= 0 if mae = 1)
%           speed, car velocity (=0 if mae = 1)

close all; % clc;

%% * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
% declaration of global variables :
% MBS_data: main structure used by the modules
% MBS_user: user's structure, for usefull variables
global MBS_user MBS_data

%% * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
% time display options
MBS_user.timeDisplay = 1; % 1 for yes, 0 for no
MBS_user.timeStepDisplay = 0.1;

%% * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
% files saving options
save_files = 1;

%% * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
% Loading the data
%
prjname = 'Limousine_Originale_GR05'; % project name
[MBS_data, MBS_info] = mbs_load( prjname,'default');
% the choice of qu and qv is defined in the *.mbs file

%% * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
if mae == 0
    MBS_data.q = qin';
    MBS_data.qd = qdin';
    MBS_data.qd(1) = speed; % initial speed of the chassis
    MBS_data.qd([15,32,42,55]) = [1,1,1,1]*speed/0.3515; % initial speed of the wheels
elseif mae == 1
    MBS_data.q(3) = 0.2; % initial height of the chassis
end

MBS_user.id_PosX = mbs_get_joint_id( MBS_info, 'PosX');
MBS_user.id_PosY = mbs_get_joint_id( MBS_info, 'PosY');
MBS_user.id_PosZ = mbs_get_joint_id( MBS_info, 'PosZ');

MBS_user.id_Roulis = mbs_get_joint_id( MBS_info, 'Roulis');
MBS_user.id_Tangage = mbs_get_joint_id( MBS_info, 'Tanguage');
MBS_user.id_Lacet = mbs_get_joint_id( MBS_info, 'Lacet');
MBS_user.id_Cremaillere = mbs_get_joint_id( MBS_info, 'Cremaillere');

MBS_user.id_R3_bielle_sup_AD = mbs_get_joint_id( MBS_info, 'R3_bielle_sup_AD');
MBS_user.id_R3_bielle_sup_AG = mbs_get_joint_id( MBS_info, 'R3_bielle_sup_AG');
MBS_user.id_R2_bielle_sup_AD = mbs_get_joint_id( MBS_info, 'R2_bielle_sup_AD');
MBS_user.id_R2_bielle_sup_AG = mbs_get_joint_id( MBS_info, 'R2_bielle_sup_AG');

MBS_user.id_R3_roue_AD = mbs_get_joint_id( MBS_info, 'R3_roue_AD');
MBS_user.id_R3_roue_AG = mbs_get_joint_id( MBS_info, 'R3_roue_AG');
MBS_user.id_R1_roue_AD = mbs_get_joint_id( MBS_info, 'R1_roue_AD');
MBS_user.id_R1_roue_AG = mbs_get_joint_id( MBS_info, 'R1_roue_AG');

MBS_user.id_senseur_roue_AD = mbs_get_S_sensor_id( MBS_info, 'Senseur_roue_AD');
MBS_user.id_senseur_roue_AG = mbs_get_S_sensor_id( MBS_info, 'Senseur_roue_AG');
MBS_user.id_R2_roue_AD = mbs_get_joint_id( MBS_info, 'R2_roue_AD');
MBS_user.id_R2_roue_AG = mbs_get_joint_id( MBS_info, 'R2_roue_AG');

MBS_user.id_R3_bielle_sup_RD = mbs_get_joint_id( MBS_info, 'R3_bielle_sup_RD');
MBS_user.id_R3_bielle_sup_RG = mbs_get_joint_id( MBS_info, 'R3_bielle_sup_RG');
MBS_user.id_R2_bielle_sup_RD = mbs_get_joint_id( MBS_info, 'R2_bielle_sup_RD');
MBS_user.id_R2_bielle_sup_RG = mbs_get_joint_id( MBS_info, 'R2_bielle_sup_RG');

MBS_user.id_R3_roue_RD = mbs_get_joint_id( MBS_info, 'R3_roue_RD');
MBS_user.id_R3_roue_RG = mbs_get_joint_id( MBS_info, 'R3_roue_RG');
MBS_user.id_R1_roue_RD = mbs_get_joint_id( MBS_info, 'R1_roue_RD');
MBS_user.id_R1_roue_RG = mbs_get_joint_id( MBS_info, 'R1_roue_RG');

MBS_user.id_senseur_roue_RD = mbs_get_S_sensor_id( MBS_info, 'Senseur_roue_RD');
MBS_user.id_senseur_roue_RG = mbs_get_S_sensor_id( MBS_info, 'Senseur_roue_RG');
MBS_user.id_R2_roue_RD = mbs_get_joint_id( MBS_info, 'R2_roue_RD');
MBS_user.id_R2_roue_RG = mbs_get_joint_id( MBS_info, 'R2_roue_RG');

MBS_user.id_link_AD = mbs_get_link_id( MBS_info, 'Link_AD');
MBS_user.id_link_AG = mbs_get_link_id( MBS_info, 'Link_AG');
MBS_user.id_link_RD = mbs_get_link_id( MBS_info, 'Link_RD');
MBS_user.id_link_RG = mbs_get_link_id( MBS_info, 'Link_RG');

MBS_user.id_senseur_chassis = mbs_get_S_sensor_id( MBS_info, 'CM_Chassis');
MBS_user.id_PID = mbs_get_S_sensor_id( MBS_info, 'PID_sensor');

MBS_user.id_R2_barre_roulis_av = mbs_get_joint_id( MBS_info, 'R2_barre_roulis_av');
MBS_user.id_R2_barre_roulis_arr = mbs_get_joint_id( MBS_info, 'R2_barre_roulis_arr');

MBS_user.mae = mae;
MBS_user.speed = speed;
MBS_user.k_bar = k_bar;

if mae == 0
    MBS_data = mbs_set_qu( MBS_data, MBS_user.id_R2_roue_AD);
    MBS_data = mbs_set_qu( MBS_data, MBS_user.id_R2_roue_AG);
    MBS_data = mbs_set_qu( MBS_data, MBS_user.id_Lacet);
    MBS_data = mbs_set_qu( MBS_data, MBS_user.id_PosX);
    MBS_data = mbs_set_qu( MBS_data, MBS_user.id_PosY);
    MBS_data = mbs_set_qu( MBS_data, MBS_user.id_PosZ);
elseif mae == 1
    MBS_data = mbs_set_qu( MBS_data, MBS_user.id_R2_roue_AD);
    MBS_data = mbs_set_qu( MBS_data, MBS_user.id_R2_roue_AG);
    MBS_data = mbs_set_qu( MBS_data, MBS_user.id_R2_roue_RD);
    MBS_data = mbs_set_qu( MBS_data, MBS_user.id_R2_roue_RG);
    MBS_data = mbs_set_qdriven( MBS_data, MBS_user.id_Lacet);
    MBS_data = mbs_set_qdriven( MBS_data, MBS_user.id_PosX);
    MBS_data = mbs_set_qdriven( MBS_data, MBS_user.id_PosY);
end

%% * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
% Integration

% Saving the inital values
MBS_data.q0 = MBS_data.q;
MBS_data.qd0 = MBS_data.qd;

% Initial conditions of the reduced system
y0 = [MBS_data.q0(MBS_data.qu), MBS_data.qd0(MBS_data.qu)];

% Integration options
options = odeset( 'MaxStep', 1e-2, 'RelTol', 1e-7, 'AbsTol', 1e-6);

% Integration
[t, y] = ode45(@(t, y) fprimeLimo(t, y), tspan, y0, options);
% t: time vector of the instants at which the solution has been computed
% y: vector of the positions and velocities of the independant variables at
% all times contained in t

%% * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
% Calcul des resultats complementaires

% All results are saved in the MBS_result structure
MBS_data.q = MBS_data.q0;
MBS_data.qd = MBS_data.qd0;
MBS_result.t = t;

MBS_user.timeStepDisplay = 0.1;
for i=1:length(t)
    timeStepDisplay = MBS_user.timeStepDisplay;
    if (t(i) - timeStepDisplay > 0) && MBS_user.timeDisplay
        disp(['t: ' num2str(timeStepDisplay)])
        MBS_user.timeStepDisplay = timeStepDisplay + 0.1;
    end
    fprimeLimo(t(i), y(i,:)'); % fprime computes again the dependant variables at each step of the solution
    MBS_result.q(i,:)  = MBS_user.q;
    MBS_result.qd(i,:) = MBS_user.qd;
    MBS_result.F(i,:) = MBS_user.F;
    MBS_result.Qq(i,:) = MBS_user.Qq;
    MBS_result.M(i,:) = MBS_user.M;
    
    if mae == 0
        MBS_result.V(i) = MBS_user.V;
        MBS_result.dir(i) = MBS_user.direction;
        MBS_result.car_angle(i) = MBS_user.car_angle;
    end
end

if save_files
    temps = MBS_result.t;
    save(strcat(['fichiers\temps' '_speed_' num2str(speed) '_kav_' num2str(k_phil(1)) '_karr_' num2str(k_phil(2)) '.mat']), 'temps')

    roulis = MBS_result.q(:,MBS_user.id_Roulis);
    save(strcat(['fichiers\roulis' '_speed_' num2str(speed) '_kav_' num2str(k_phil(1)) '_karr_' num2str(k_phil(2)) '.mat']), 'roulis')

    PosX = MBS_result.q(:,MBS_user.id_PosX);
    save(strcat(['fichiers\PosX' '_speed_' num2str(speed) '_kav_' num2str(k_phil(1)) '_karr_' num2str(k_phil(2)) '.mat']), 'PosX')

    PosY = MBS_result.q(:,MBS_user.id_PosY);
    save(strcat(['fichiers\PosY' '_speed_' num2str(speed) '_kav_' num2str(k_phil(1)) '_karr_' num2str(k_phil(2)) '.mat']), 'PosY')

    PosWheels = MBS_result.P_wheels(:,[1 2 4 5 7 8 10 11]);
    save(strcat(['fichiers\PosWheels' '_speed_' num2str(speed) '_kav_' num2str(k_phil(1)) '_karr_' num2str(k_phil(2)) '.mat']), 'PosWheels')
end

t_out = MBS_result.t(length(MBS_result.t));
q_out = MBS_result.q(length(MBS_result.q),:);
qd_out = MBS_result.qd(length(MBS_result.qd),:);

%% * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
% Sauvegrade des resultats pour animation
% reechantillonage de la solution: au cas ou le pas de temps utilise pour
% ode45 ne correspond pas au pas de temps necessaire pour l'animation

% pas de temps entre 2 solutions d'animation
dtAnim = 0.001;
% vecteur des instants auquels on calcule une image
tAnim=[t(1):dtAnim:t(end)]';
% reechantillonage de la solution
qAnim = interp1(t, MBS_result.q, tAnim);
% sauvegarde du fichier d'animation
tqAnim=[tAnim qAnim];
save([MBS_data.prjpath '/' prjname '/animationR/' name '.anim'], 'tqAnim',  '-ASCII');

