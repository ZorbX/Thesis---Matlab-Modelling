%% Battery model parameters
V_nom      = 15;      % Nominal voltage [V]
V_min      = 10;      % Minimum usable voltage [V]
R_int      = 0.1;     % Internal resistance [ohm]
I_max      = 50;      % Max current [A]
C_dc       = 0.02;    % DC link capacitance [F]
Ts         = 1e-4;    % Sample time [s]

%% Initial conditions
Vdc_init   = V_nom;   % Start fully charged

%% Load current profile for testing
t_end = 2;
time  = 0:Ts:t_end;

% Example: step load from 0A to 40A at t=0.5s
I_load = zeros(size(time));
I_load(time >= 0.5) = 40;

% Send to workspace
LoadCurrent.time = time';
LoadCurrent.signals.values = I_load';
LoadCurrent.signals.dimensions = 1;
