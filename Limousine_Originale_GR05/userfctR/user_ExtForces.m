function [frc, trq] = user_ExtForces(mbs_data,tsim)
% --------------------------
% UCL-CEREM-MBS
%
% @version MBsysLab_m 1.7.e
%
% Creation : 2009
% Last update : 09/10/2009
% -------------------------
%
%
% Cette fonction vous permet d'appliquer des forces exterieures
% sur les differents corps du systeme
%
% Cette fonction doit renvoyer 2 matrices:
%  - frc: matrice 3 x Njoint
%  - trq: matrice 3 x Njoint
% Pour appliquer une force ou un couple exterieur sur un corps, il faut
% d'abord retrouver le numero de l'articulation parente (par exemple, avec
% la fonction mbs_get_body_id). Ensuite, il faut remplir la colonne 
% correspondante avec les 3 composante de force ou de couple dans le
% REPERE IE AU CORPS.
% ATTENTION: frc et trq reprenne la resultante des forces et couples par rapport
%            au centre de masse.
%      -> resultante -> si plusieurs force, faire la somme
%      -> par rapport eu CM -> si force ailleurs qu'au CM, ajouter le moment
%                               de force dans trq
%

global MBS_user MBS_info

P_wheels = zeros(12,1);
V_wheels = zeros(12,1);

frc = mbs_data.frc; % external forces
trq = mbs_data.trq; % external torques
mae = MBS_user.mae;

front_wheel_radius = 0.35155; % [m]
coeff = 400000; % [N/m]

% getting the sensors
id_senseur_roue_AD = MBS_user.id_senseur_roue_AD;
id_senseur_roue_AG = MBS_user.id_senseur_roue_AG;
id_senseur_roue_RD = MBS_user.id_senseur_roue_RD;
id_senseur_roue_RG = MBS_user.id_senseur_roue_RG;

% getting the ids
id_roue_AD = MBS_user.id_R2_roue_AD;
id_roue_AG = MBS_user.id_R2_roue_AG;
id_roue_RD = MBS_user.id_R2_roue_RD;
id_roue_RG = MBS_user.id_R2_roue_RG;

% computation of the cinematic of the wheels
[senseur_AD] = mbs_comp_S_sensor( mbs_data, tsim, id_senseur_roue_AD);
[senseur_AG] = mbs_comp_S_sensor( mbs_data, tsim, id_senseur_roue_AG);
[senseur_RD] = mbs_comp_S_sensor( mbs_data, tsim, id_senseur_roue_RD);
[senseur_RG] = mbs_comp_S_sensor( mbs_data, tsim, id_senseur_roue_RG);

%% FRONT RIGHT

Pw = senseur_AD.P; P_wheels([1 2 3]) = Pw;
Rw = senseur_AD.R;
Vw = senseur_AD.V; V_wheels([1 2 3]) = Vw;
OMw = senseur_AD.OM;

[Reff, angcamb, angliss, gliss, ~, ~, ~, Rsol, dxF] = mbs_kine_wheel( Pw, Rw, Vw, OMw, mbs_data, tsim);

% VERTICAL FORCE

pen_AD = front_wheel_radius - Reff; % tyre penetration in the ground
if pen_AD < 0
    force_AD = 0;
else
    force_AD = coeff*pen_AD;
end

MBS_user.F(1) = force_AD;

if mae == 0 && force_AD~= 0
%     OTHER FORCES

    [Flong, Flat, Mz] = mbs_limousine_contact( force_AD, angliss, angcamb, gliss);

    Fsol = [Flong; Flat; force_AD];
    frc(:,id_roue_AD) = frc(:,id_roue_AD) + senseur_AD.R*(Rsol')*Fsol;
    trq(:,id_roue_AD) = trq(:,id_roue_AD) + senseur_AD.R*(Rsol')*[0; 0; Mz];
    trq(:,id_roue_AD) = trq(:,id_roue_AD) + cross(dxF,senseur_AD.R*(Rsol')*Fsol);
elseif mae == 1
    frc(:,id_roue_AD) = frc(:,id_roue_AD) + senseur_AD.R*[0; 0; force_AD];
end

%% FRONT LEFT

Pw = senseur_AG.P; P_wheels([4 5 6]) = Pw;
Rw = senseur_AG.R;
Vw = senseur_AG.V; V_wheels([4 5 6]) = Vw;
OMw = senseur_AG.OM;

[Reff, angcamb, angliss, gliss, ~, ~, ~, Rsol, dxF] = mbs_kine_wheel( Pw, Rw, Vw, OMw, mbs_data, tsim);

% VERTICAL FORCE

pen_AG = front_wheel_radius - Reff; % tyre penetration in the ground
if pen_AG < 0
    force_AG = 0;
else
    force_AG = coeff*pen_AG;
end

MBS_user.F(2) = force_AG; 

if mae == 0 && force_AG~= 0
%     OTHER FORCES

    [Flong, Flat, Mz] = mbs_limousine_contact( force_AG, angliss, angcamb, gliss);

    Fsol = [Flong; Flat; force_AG];
    frc(:,id_roue_AG) = frc(:,id_roue_AG) + senseur_AG.R*(Rsol')*Fsol;
    trq(:,id_roue_AG) = trq(:,id_roue_AG) + senseur_AG.R*(Rsol')*[0; 0; Mz];
    trq(:,id_roue_AG) = trq(:,id_roue_AG) + cross(dxF,senseur_AG.R*(Rsol')*Fsol);
elseif mae == 1
    frc(:,id_roue_AG) = frc(:,id_roue_AG) + senseur_AG.R*[0; 0; force_AG];
end

%% REAR RIGHT

Pw = senseur_RD.P; P_wheels([7 8 9]) = Pw;
Rw = senseur_RD.R;
Vw = senseur_RD.V; V_wheels([7 8 9]) = Vw;
OMw = senseur_RD.OM;

[Reff, angcamb, angliss, gliss, ~, ~, ~, Rsol, dxF] = mbs_kine_wheel( Pw, Rw, Vw, OMw, mbs_data, tsim);

% VERTICAL FORCE

pen_RD = front_wheel_radius - Reff; % tyre penetration in the ground
if pen_RD < 0
    force_RD = 0;
else
    force_RD = coeff*pen_RD;
end

MBS_user.F(3) = force_RD;

if mae == 0 && force_RD~= 0
%     OTHER FORCES

    [Flong, Flat, Mz] = mbs_limousine_contact( force_RD, angliss, angcamb, gliss);

    Fsol = [Flong; Flat; force_RD];
    frc(:,id_roue_RD) = frc(:,id_roue_RD) + senseur_RD.R*(Rsol')*Fsol;
    trq(:,id_roue_RD) = trq(:,id_roue_RD) + senseur_RD.R*(Rsol')*[0; 0; Mz];
    torque = cross(dxF,senseur_RD.R*(Rsol')*Fsol); 
    trq(:,id_roue_RD) = trq(:,id_roue_RD) + torque;
    MBS_user.torque_RD = torque(2);
elseif mae == 1
    frc(:,id_roue_RD) = frc(:,id_roue_RD) + senseur_RD.R*[0; 0; force_RD];
end

%% REAR LEFT

Pw = senseur_RG.P; P_wheels([10 11 12]) = Pw;
Rw = senseur_RG.R;
Vw = senseur_RG.V; V_wheels([10 11 12]) = Vw;
OMw = senseur_RG.OM;

[Reff, angcamb, angliss, gliss, ~, ~, ~, Rsol, dxF] = mbs_kine_wheel( Pw, Rw, Vw, OMw, mbs_data, tsim);

% VERTICAL FORCE

pen_RG = front_wheel_radius - Reff; % tyre penetration in the ground
if pen_RG < 0
    force_RG = 0;
else
    force_RG = coeff*pen_RG;
end

MBS_user.F(4) = force_RG;

if mae == 0 && force_RG~= 0
%     OTHER FORCES

    [Flong, Flat, Mz] = mbs_limousine_contact( force_RG, angliss, angcamb, gliss);

    Fsol = [Flong; Flat; force_RG];
    frc(:,id_roue_RG) = frc(:,id_roue_RG) + senseur_RG.R*(Rsol')*Fsol;
    trq(:,id_roue_RG) = trq(:,id_roue_RG) + senseur_RG.R*(Rsol')*[0; 0; Mz];
    torque = cross(dxF,senseur_RG.R*(Rsol')*Fsol);
    trq(:,id_roue_RG) = trq(:,id_roue_RG) + torque;
    MBS_user.torque_RG = torque(2);
elseif mae == 1
    frc(:,id_roue_RG) = frc(:,id_roue_RG) + senseur_RG.R*[0; 0; force_RG];
end


%%

MBS_user.P_wheels = P_wheels;
MBS_user.V_wheels = V_wheels;

end