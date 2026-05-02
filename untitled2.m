%this is a trial
%this is a 6 step BLDC motor control model to read about 
%openExample('mcb/SixStepBLDCQepHallExample','supportingFile','mcb_bldc_sixstep_f28069mLaunchPad.slx')

%building motor parameters database 
V = 36;%nominal voltage 
w0 = 5690; %no load speed in rpms
i0 = 709; % no loa current in mA
wn = 4860; %nominal speed in rpms
Tn = 1390; %Nominal torque (max continous torque) in mNm
in = 21.2; %Nominal current (max continous current) in A

R = 0.123; % Terminal Resistance phase to phase in ohms
L = 0.0799; % terminal Inductance phase to phase in henries
K_t = 59.9; % Torque constant in mNm/A

J = 0.740; % Moment of inertia in kg*m^2
w_t = 159; %speed constant in rpm/V
P = 14; %number of pole pairs
w_max = 8000; %max speed 
T = 8.4; %Thrust in Kg
flx = 60/(sqrt(3)*pi*w_t*P);% flux linkage in webbers
K_e = 60/(2*pi*w_t); % Back EMF constant in V/(rad/s)

Vc= ((i0*K_t)/1000); %vicosity friction coefficient