function [ output_args ] = debug( input_args )

close all; clc;

global MBS_user MBS_data

prjname = 'Limousine_GR05'; % project name
[MBS_data, MBS_info] = mbs_load( prjname,'default');

MBS_data.q(3) = 0.2;

MBS_user.id_PosX = mbs_get_joint_id( MBS_info, 'PosX');
MBS_user.id_PosY = mbs_get_joint_id( MBS_info, 'PosY');
MBS_user.id_PosZ = mbs_get_joint_id( MBS_info, 'PosZ');

MBS_user.id_Roulis = mbs_get_joint_id( MBS_info, 'Roulis');
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

MBS_user.id_R2_roue_RD = mbs_get_joint_id( MBS_info, 'R2_roue_RD');
MBS_user.id_R2_roue_RG = mbs_get_joint_id( MBS_info, 'R2_roue_RG');

MBS_user.id_link_AD = mbs_get_link_id( MBS_info, 'Link_AD');
MBS_user.id_link_AG = mbs_get_link_id( MBS_info, 'Link_AG');
MBS_user.id_link_RD = mbs_get_link_id( MBS_info, 'Link_RD');
MBS_user.id_link_RG = mbs_get_link_id( MBS_info, 'Link_RG');

MBS_user.mae = 1;
%% DEBUG

[MBS_data.q,MBS_data.qd,MBS_data.qdd] = user_DrivenJoints( MBS_data, 0);

MBS_data.q = user_NewtonRaphson( MBS_data, 0, 10^-14, 100000);
end

