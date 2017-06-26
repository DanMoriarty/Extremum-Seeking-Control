%%For car slip simulink model

%Constants
m = 250
R = 0.275
I = 1.4
g = 9.81
B = 0.1

%Tuning parameter
c=1

%initial conditions
v_0 = 120/3.6 %m/s
w_0 = v_0/R

%%designing ESC
%ESC tuning parameters
freq = 10
k = 1500
a=0.1
amp = 1
p=1000 %HPF

%ESC tuning parameters Task 2
freq1 = 10
k1 = 1500
a1=0.1
amp1 = 1
p1=1000 %HPF

%Step Divider parameters
%%DRY
C=40
Mu_Max = 0.003
slope = 1
t_offset = 3

%%ICY
%C=550
%Mu_Max = 0.003
%slope = 1
%t_offset = 3
