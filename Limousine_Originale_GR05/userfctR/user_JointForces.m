function [Qq] = user_JointForces(mbs_data,tsim);
% --------------------------
% UCL-CEREM-MBS
%
% @version MBsysLab_m 1.7.a
%
% Creation : 2006
% Last update : 30/09/2008
% -------------------------
%
%[Qq] = user_JointForces(mbs_data,tsim);
%
% mbs_data : multibody data structure
% tsim : current time
%
% Qq : joint generalized force/torque (for all joints)
% Qq(i) : joint force/torque in joint (i) along its joint axis
%
% this function may use a global structure called MBS_user

global MBS_user MBS_info

Qq = mbs_data.Qq;
q = mbs_data.q;

id_RD = MBS_user.id_R2_roue_RD;
id_RG = MBS_user.id_R2_roue_RG;

id_R2_barre_roulis_av = MBS_user.id_R2_barre_roulis_av;
id_R2_barre_roulis_arr = MBS_user.id_R2_barre_roulis_arr;

sens = mbs_comp_S_sensor( mbs_data, tsim, MBS_user.id_senseur_chassis);

% Use either one of the two models for the anti sway bar
%% MODELE BASE
% k = (pi x G x D^4) / (16 x B^2 x L)
% G = 81000e6;
% B = 0.1976;
% L = 1.2854;
% D = 0.028;

% k = (pi * G * D^4) / (16 * B^2 * L);
k_av = MBS_user.k_bar(1);
k_arr = MBS_user.k_bar(2);

% %% PUHN FORMULA
% cm = 39.3700787;
% 
% G = 500000;
% B = 0.640*cm;
% A = 0.3227*cm;
% C = 0.3784*cm;
% D = 0.028*cm;
% 
% k = G*D^4/(0.4244*A^2*B+0.2264*C^3)*175.1268369864;

%% ROLL FORCES
Qq(id_R2_barre_roulis_av) = -k_av*q(id_R2_barre_roulis_av);
Qq(id_R2_barre_roulis_arr) = -k_arr*q(id_R2_barre_roulis_arr);

MBS_user.Qq(1) = Qq(id_R2_barre_roulis_av);
MBS_user.Qq(2) = Qq(id_R2_barre_roulis_arr);

%% ACCELERATION
% The torque applied by the motor is proportinnal to the difference
% between the speed of the car and the speed desired. It models a simple
% differential so this works in curves too.

if MBS_user.mae == 0
    vitesse = sens.R*sens.V;
    if abs(vitesse(1)) < MBS_user.speed
        diff = MBS_user.torque_RG-MBS_user.torque_RD;
        motor = 1000*(MBS_user.speed-abs(vitesse(1)));
        
        if MBS_user.torque_RG == 0 && MBS_user.torque_RD ~= 0
            Qq(id_RD) = motor;
        elseif MBS_user.torque_RG ~= 0 && MBS_user.torque_RD == 0
            Qq(id_RG) = motor;
        elseif MBS_user.torque_RG ~= 0 && MBS_user.torque_RD ~= 0
            Qq(id_RG) = motor/2 + diff;
            Qq(id_RD) = motor/2 - diff;
        end
    end
end

MBS_user.M(1) = Qq(id_RG);
MBS_user.M(2) = Qq(id_RD);
MBS_user.V = vitesse(1);

return