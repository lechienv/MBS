function [q,qd,qdd] = user_DrivenJoints(mbs_data,tsim)
% --------------------------
% UCL-CEREM-MBS
%
% @version MBsysLab_m 1.7.a
%
% Creation : 2005
% Last update : 30/09/2008
% -------------------------
%
%[q,qd,qdd] = user_DrivenJoints(mbs_data,tsim)
%
% mbs_data : multibody data structure
% tsim : current time
%
% q, qd, qdd : updated column vectors of generalized coordinates
%
%
% mbs_data.q : generalized coordinates [column vector]
% mbs_data.qd : generalized velocities [column vector]
% mbs_data.qdd : generalized accelerations [column vector]
% mbs_data.nqc : number of driven variables
% mbs_data.qc : indices of driven variables [column vector]

global MBS_user MBS_info

q   = mbs_data.q;
qd  = mbs_data.qd;
qdd = mbs_data.qdd;


mae = MBS_user.mae;

%/*-- Begin of user code --*/

%% Front Right suspension & wheel

% R3_bielle_sup AD

i = MBS_user.id_R3_bielle_sup_AD;

q(i) = -0.014444475299963;
qd(i) = 0;
qdd(i) = 0;

% R2_bielle_sup AD

i = MBS_user.id_R2_bielle_sup_AD;

q(i) = -0.248678152609583;
qd(i) = 0;
qdd(i) = 0;

% R3_roue AD

i = MBS_user.id_R3_roue_AD;

q(i) = -0.007999829339887;
qd(i) = 0;
qdd(i) = 0;

% R1_roue AD

i = MBS_user.id_R1_roue_AD;

q(i) = 0.025993312310402;
qd(i) = 0;
qdd(i) = 0;

%% Front Left suspension & wheel

% R3_bielle_sup AG

i = MBS_user.id_R3_bielle_sup_AG;

q(i) = 0.014444475299963;
qd(i) = 0;
qdd(i) = 0;

% R2_bielle_sup AG

i = MBS_user.id_R2_bielle_sup_AG;

q(i) = -0.248678152609583;
qd(i) = 0;
qdd(i) = 0;

% R3_roue AG

i = MBS_user.id_R3_roue_AG;

q(i) = 0.007999829339887;
qd(i) = 0;
qdd(i) = 0;

% R1_roue AG

i = MBS_user.id_R1_roue_AG;

q(i) = -0.025993312310402;
qd(i) = 0;
qdd(i) = 0;

%% Rear Right suspension & wheel

% R3_bielle_sup RD

i = MBS_user.id_R3_bielle_sup_RD;

q(i) = -0.014444475299963;
qd(i) = 0;
qdd(i) = 0;

% R2_bielle_sup RD

i = MBS_user.id_R2_bielle_sup_RD;

q(i) = -0.248678152609583;
qd(i) = 0;
qdd(i) = 0;


% R3_roue RD

i = MBS_user.id_R3_roue_RD;

q(i) = -0.007999829339887;
qd(i) = 0;
qdd(i) = 0;

% R1_roue RD

i = MBS_user.id_R1_roue_RD;

q(i) = 0.025993312310402;
qd(i) = 0;
qdd(i) = 0;


%% Rear Left suspension & wheel

% R3_bielle_sup RG

i = MBS_user.id_R3_bielle_sup_RG;

q(i) = 0.014444475299963;
qd(i) = 0;
qdd(i) = 0;

% R2_bielle_sup RG

i = MBS_user.id_R2_bielle_sup_RG;

q(i) = -0.248678152609583;
qd(i) = 0;
qdd(i) = 0;


% R3_roue RG

i = MBS_user.id_R3_roue_RG;

q(i) = 0.007999829339887;
qd(i) = 0;
qdd(i) = 0;

% R1_roue RG

i = MBS_user.id_R1_roue_RG;

q(i) = -0.025993312310402;
qd(i) = 0;
qdd(i) = 0;


%% Cremaillere

i = MBS_user.id_Cremaillere;
PID_info = mbs_comp_S_sensor( mbs_data, tsim, MBS_user.id_PID);
car_angle = q(MBS_user.id_Lacet);
x = PID_info.P(1);
y = PID_info.P(2);

path = 2; %si = 1 double lane change, si = 2 demi-tour

if mae == 0
    [error_pos,error_angle,type] = user_Path(x,y,car_angle,path);
    if type == 1
        direction = -0.15 * (error_pos) -0.01 * (error_angle);
    elseif type == 2
        direction = 0.15 * (error_pos) -0.1 * (error_angle);
    else
        direction = 0;
    end
    
    if  direction < -0.055
        direction = -0.055;
    elseif direction > 0.055
        direction = 0.055;
    end
    
    q(i) = direction; 
    MBS_user.direction = direction;
    MBS_user.car_angle = car_angle;
    MBS_user.y = 0;
    MBS_user.alpha = 0;
end

return