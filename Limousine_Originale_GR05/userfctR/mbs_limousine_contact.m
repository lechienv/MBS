function[Flong, Flat, Mz] = mbs_limousine_contact(Fn,angliss,angcamb,gliss)
% --------------------------
% UCL-CEREM-MBS
%
% @version MBsysLab_m 1.8.a
%
% Creation : 2015
% Last update : 23/03/15
% -------------------------
% MBS_LIMOUSINE_CONTACT computes Bakker tyre contact model for a limouse tyre
%               
%  [Flong, Flat, Mz] = mbs_limousine_contact(Fn,angliss,angcamb,gliss)                             
%  
%  More precisely, the expression, at the equivalent contact point of :               
%       -the lingitudinal force         Flong
%       -the lateral force              Flat               
%       -the normal torque              Mz               
%              
%  in terms of :               
%       -the radial force               Frad
%       -the slip angle                 anglis               
%       -the roll angle                 ancamb
%       -the longitudinal slip ratio    gliss
%               
%   See also mbs_kine_wheel, mbs_calspan.
%


R = 3;

[Flong, Flat, Mz] = mbs_bakker(Fn/3,angliss,angcamb,gliss);

Flong = R* Flong;
Flat = R* Flat;
Mz = - R* Mz; % minus is for correct the fault in mbs_bakker...

end