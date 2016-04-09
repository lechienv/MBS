%--------------------------------------------------------------------------
%   Universite catholique de Louvain
%   CEREM : Centre for research in mechatronics
%   http://www.robotran.be  
%   Contact : robotran@prm.ucl.ac.be
%   Version : ROBOTRAN $Version$
%
%   MBsysLab main script template:
%      - featuring default options
%      - to be adapted by the user
%
%   Project : MBS_Suspension
%   Author : Team Robotran
%   Date : $Date$ 
%--------------------------------------------------------------------------

%% 1. Initialization and Project Loading [mbs_load]
%--------------------------------------------------------------------------
close all; clear variables; clc;                                            % Cleaning of the Matlab workspace
global MBS_user;                                                            % Declaration of the global user structure
MBS_user.process = '';                                                      % Initialisation of the user field "process"

% Project loading
prjname = 'MBS_Suspension';
[mbs_data, mbs_info] = mbs_load(prjname,'default');                         % Option 'default': automatic loading of "$project_name$.mbs" 
mbs_data_ini = mbs_data;                                                    % Backup of the initial multibody data structure
                                                                            % Have a look at the content of the mbs_data structure on www.robotran.be

%% 2. Coordinate partitioning [mbs_exe_part]                                % For constrained MBS only
%--------------------------------------------------------------------------
MBS_user.process = 'part';

opt.part = {'rowperm','yes','threshold',1e-9,'verbose','yes'};
% other options : 'visualize', 'clearmbsglobal'                             % Help about options on www.robotran.be

[mbs_part,mbs_data] = mbs_exe_part(mbs_data,opt.part);                      % Coordinate partitioning process

% Coordinate partitioning results
disp('Coordinate partitioning results');
disp(['Sorted independent variables = ', mat2str(mbs_part.ind_u)]);
disp(['Permutated dependent variables = ', mat2str(mbs_part.ind_v)]);
disp(['Permutated independent constraints = ', mat2str(mbs_part.hu)]);
disp(['Redundant constraints = ', mat2str(mbs_part.hv)]);

%% 5. Direct dynamics [mbs_exe_dirdyn]
%--------------------------------------------------------------------------
MBS_user.process = 'dirdyn';
mbs_data = mbs_set_qu(mbs_data,mbs_data_ini.qu);                            % Retrieving of the initial set of independent variables

opt.dirdyn = {'time',0:0.01:5,'motion','simulation',...
    'odemethod','ode45','save2file','yes','framerate',1000,...
    'renamefile','no','verbose','yes'};
% other options : 'visualize', 'save2file', 'depinteg', 'dtmax', 'dtinit',
%                 'reltol', 'abstol', 'clearmbsglobal'                      % Help about options on www.robotran.be

[mbs_dirdyn,mbs_data] = mbs_exe_dirdyn(mbs_data,opt.dirdyn);                % Direct dynamics process (time simulation)

% Graphical Results
figure(1);
plot(mbs_dirdyn.tsim,mbs_dirdyn.q(:,1));                                    % Joint motion time history : joint n° 1 motion (example)
pause; 
close(1);

clc;                                                                        % Cleaning of the Matlab command window
