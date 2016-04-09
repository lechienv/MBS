function [error_pos,error_angle,type] = user_Path(x,y,angle,path)
%
% Trajectoire du vehicule
% A partir de la position en x du vehicule (axe de la route),
% determination de la position en y (axe perpendiculaire a la route)
% et de l'angle necessaire pour suivre la trajectoire
%
% GR05 - Avril 2015
if path == 1
    % Premiere ligne droite de 10m
    if x <= 10
        error_pos = y-0;
        error_angle = angle-0;
        type = 1;

    % Courbe entre les 10m et les 60m dans l'axe de la route(x)
    elseif x > 10 && x <= 60
        error_pos = y - 2.5 * sin( pi/50*(x-10));
        error_angle = angle - atan(2.5*pi/50 * cos(pi/50*(x-10)));
        type = 1;
    % Ligne droite final apres les courbes.
    else
        error_pos = y - 0;
        error_angle = angle - 0;
        type = 1;
    end
    
elseif path == 2
    R = 20;
    %premiere ligne droite de 10m
    if x <= 10 && y < R
        error_pos = y-0;
        error_angle = angle-0;
        type = 1;
        
    % cercle centre en (10,R)
    elseif x > 10
        r = sqrt((x-10)^2+(y-R)^2);
        theta = acos((R-y)/r);
        error_pos = r-R;
        error_angle = angle-theta;
        type = 2;
       
    else
        error_pos = -(y-2*R);
        error_angle = -(angle-pi);
        type = 1;
    end
else
    error_pos = 0;
    error_angle = 0;
    type = 1;
end

