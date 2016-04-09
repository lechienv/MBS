function Flink = user_LinkForces(Z,Zd,mbs_data,tsim,ilnk)
% --------------------------
% UCL-CEREM-MBS
%
% @version MBsysLab_m 1.7.a
%
% Creation : 2005
% Last update : 30/09/2008
% -------------------------
%
% Flink = user_LinkForces(Z,Zd,mbs_data,tsim,ilnk)
%
% Z : position of link-body 2 with respect to link-body 1
% Zd : velocity of link-body 2 with respect to link-body 1
% NB :  Z and Zd are automatically computed in the symbolic file
%       associated with the links that the user has introduced in its MBS
% mbs_data : multibody data structure
% tsim : current time
% ilnk : link index (can be obtained via the 'mbs_get_link_id' function)
%
% Flink : force applied to link-body 1 from link-body 2 (link "ilnk")
%   NB :
%     - For a spring/damper system, the Flink force has the SAME sign as Z, Zd
%       (contrary to joint forces) and thus : Flink = + ... Z + ... Zd
%     - The reaction "-Flink" is automatically taken into accounbt by MBsyslab
%
% this function may use a global structure called MBS_user

global MBS_user MBS_info

id_link_AD = MBS_user.id_link_AD;
id_link_AG = MBS_user.id_link_AG;
id_link_RD = MBS_user.id_link_RD;
id_link_RG = MBS_user.id_link_RG;

Flink = 0;
STIFF = 120000;
DAMP = 20000;
Z0 = 0.665;
switch(ilnk)
    case id_link_AD %Link_AD
            Fspring = STIFF*(Z-Z0);
            Fdamper = DAMP*Zd;
            Flink=Fspring+Fdamper;
    case id_link_AG %Link_AG
            Fspring = STIFF*(Z-Z0);
            Fdamper = DAMP*Zd;
            Flink=Fspring+Fdamper;
    case id_link_RD %Link_RD
            Fspring = STIFF*(Z-Z0);
            Fdamper = DAMP*Zd;
            Flink=Fspring+Fdamper;
    case id_link_RG %Link_RG
            Fspring = STIFF*(Z-Z0);
            Fdamper = DAMP*Zd;
            Flink=Fspring+Fdamper;
end

return