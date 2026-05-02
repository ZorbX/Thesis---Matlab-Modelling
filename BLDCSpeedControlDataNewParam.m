%% Parameters for BLDC Speed Control Example

% This example shows how to control the rotor speed in a BLDC based 
% electrical drive. An ideal torque source provides the load. The Control 
% subsystem uses a PI-based cascade control structure with an outer speed 
% control loop and an inner dc-link voltage control loop. The dc-link 
% voltage is adjusted through a DC-DC buck converter. The BLDC is fed by 
% a controlled three-phase inverter. The gate signals for the inverter 
% are obtained from hall signals. The simulation uses speed steps. The 
% Scopes subsystem contains scopes that allow you to see the simulation 
% results.

% Copyright 2017-2023 The MathWorks, Inc.

%% Machine Parameters
p    = 4;              % Number of pole pairs
Rs   = 2.065;            % Stator resistance per phase           [Ohm]
Ls   = 1.44e-3;           % Stator self-inductance per phase, Ls  [H]
Ms   = 1e-5;           % Stator mutual inductance, Ms          [H]
psim = 0.005467;         % Maximum permanent magnet flux linkage [Wb]
Jm   = 4.97;          % Rotor inertia                         [g*cm^2]
RPMmax = 8000; %maximum rpms 
Viscousfriction = 3.7e-6; %calculated 

%% Control Parameters
Ts  = 5e-6;     % Fundamental sample time            [s]
Tsc = 1e-4;     % Sample time for inner control loop [s]
Vdc = 48;       % Maximum DC link voltage            [V]
Kpw = 0.05;     % Proportional gain speed controller
Kiw = 10;       % Integrator gain speed controller
Kpv = 0.3;      % Proportional gain voltage controller
Kiv = 1.5;      % Integrator gain voltage controller
%% new pid control values calculation
Kt = 71.6e-3;%Nm/A
Ks = 133; %rpm/V
Gcurrent = 1/(Ls+Rs);% This is gain
wc = 6350; %rpms
ws =5320;
kpcurrent=Ls*wc;
kicurrent = Rs*wc;
kpspeed = Jm*ws/Kt;
kispeed = kpspeed/(Jm/0.01);
KPVDC= 0.26;
KIVDC = 12;

