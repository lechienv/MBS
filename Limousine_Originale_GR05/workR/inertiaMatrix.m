% PROJET MECANIQUE - CALCUL DE MATRICES D'INTERTIE
% 
% 10/03/15

function inertiaMatrix
%% FRONT WHEELS
h = 0.245;
r = 0.3515;
axis = 2;
m_roue = 60;
I_wheel_front = cylinder( h, r, axis, m_roue);
display(I_wheel_front)

%% BACK WHEELS
h = 0.275;
r = 0.3513;
axis = 2;
m_roue = 60;
I_wheel_back = cylinder( h, r, axis, m_roue);
display(I_wheel_back)

%% CHASSIS
% bloc moteur :
dim_moteur = [ 1.3, 1.899, 0.8];
masse_moteur = 400;
cm_moteur = [ 1.8205, 0, 0.4];
I_moteur = parallelepiped( dim_moteur, masse_moteur);

% bas de caisse :
dim_bas_de_caisse = [ 5.246, 1.899, 0.7];
masse_bas_de_caisse = 1000;
cm_bas_de_caisse = [ -0.1525, 0, 0.35];
I_bas_de_caisse = parallelepiped( dim_bas_de_caisse, masse_bas_de_caisse);

% toit :
dim_toit = [ 2.25, 1.624, 0.5];
masse_toit = 500;
cm_toit = [ -0.6545, 0, 0.95];
I_toit = parallelepiped( dim_toit, masse_toit);

% reference point :
cm_chassis = (masse_moteur*cm_moteur + masse_bas_de_caisse*cm_bas_de_caisse + masse_toit*cm_toit) / (masse_moteur + masse_bas_de_caisse + masse_toit);
display(cm_chassis)

% chassis matrix :
I_chassis =     steiner( I_moteur, masse_moteur, cm_chassis, cm_moteur)...
            +   steiner( I_bas_de_caisse, masse_bas_de_caisse, cm_chassis, cm_bas_de_caisse)...
            +   steiner( I_toit, masse_toit, cm_chassis, cm_toit);
display(I_chassis)


%% BIELLES
rho_acier = 7850; % kg/m^3

% BIELLE INF ARR
masse_bielle_inf_arr = 0.5;
P4 = [100 -400 65]*1e-3;
P14 = [147.4 -730.1 65.56]*1e-3;
dim_x = 0.02;
dim_y = norm(P4-P14);
dim_bielle_inf_arr = [ dim_x, dim_y, masse_bielle_inf_arr/(rho_acier*dim_x*dim_y)];
I_bielle_inf_arr = parallelepiped( dim_bielle_inf_arr, masse_bielle_inf_arr);
display(I_bielle_inf_arr)

% BIELLE INF FRONT
masse_bielle_inf_front = 0.5;
P13 = [179.6 -727.3 111]*1e-3;
P21 = [432.8 -383.2 113.1]*1e-3;
dim_x = 0.02;
dim_y = norm(P13-P21);
dim_bielle_inf_front = [ dim_x, dim_y, masse_bielle_inf_front/(rho_acier*dim_x*dim_y)];
I_bielle_inf_front = parallelepiped( dim_bielle_inf_front , masse_bielle_inf_front);
display(I_bielle_inf_front)

% BIELLE SUP
masse_bielle_sup = 0.5;
P7 = [7 -428.6 503.1]*1e-3;
P8 = [221.6 -431.7 557.6]*1e-3;
P78 = (P7 + P8)/2;
P9 = [63.8 -724.9 549.1]*1e-3;
dim_x = 0.02;
dim_y = norm(P78-P9);
dim_bielle_sup = [ dim_x, dim_y, masse_bielle_sup/(rho_acier*dim_x*dim_y)];
I_bielle_sup = parallelepiped( dim_bielle_sup, masse_bielle_sup);
display(I_bielle_sup)

% CREMAILLERE
masse_cremaillere = 3;
dim_x = 0.04;
dim_y = 0.7;
dim_cremaillere = [ dim_x, dim_y, masse_cremaillere/(rho_acier*dim_x*dim_y)];
I_cremaillere = parallelepiped( dim_cremaillere, masse_cremaillere);
display(I_cremaillere)

%% FUNCTIONS
    function I_para = parallelepiped( dim, m)
        % INPUT :
        % dim = [a b c] = dimensions according to (x, y, z)
        % m = mass of the body
        a = dim(1); b = dim(2); c = dim(3);
        
        I_para = eye(3);
        I_para(1,1) = b^2 + c^2;
        I_para(2,2) = a^2 + c^2;
        I_para(3,3) = a^2 + b^2;

        I_para = m*I_para/12;
    end
    function I_cyl = cylinder( h, r, axis, m)
        % INPUT :
        % h = height of the cylinder
        % r = radius of the cylinder
        % axis = axis of revolution (1 for x, 2 for y, 3 for z)
        % m = mass of the body

        index = [2 3; 1 3; 1 2];
        vec(axis) = m*(r^2)/2;
        val = m*((h^2)/12 + (r^2)/4);
        vec(index(axis,:)) = [val val];

        I_cyl = eye(3);
        I_cyl(1,1) = vec(1);
        I_cyl(2,2) = vec(2);
        I_cyl(3,3) = vec(3);
    end
    function Ip = steiner( Ig, m, p, g)
        % INPUT :
        % Ig = inertia matrix wrt G
        % m = mass of the body
        % p = position of the new reference point in the IFR (x, y, z)
        % g = position of the center of gravity in the IFR (x, y, z)

        pg = g - p; % displacement vector

        % building the tilde matrix :
        pg_tilde = zeros(3);
        pg_tilde(1,2) = -pg(3);
        pg_tilde(2,1) =  pg(3);
        pg_tilde(1,3) =  pg(2);
        pg_tilde(3,1) = -pg(2);
        pg_tilde(2,3) = -pg(1);
        pg_tilde(3,2) =  pg(1);

        % computation of the new inertia matrix :
        Ip = Ig - m*pg_tilde*pg_tilde;
    end
end