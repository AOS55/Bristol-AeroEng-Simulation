clear all; close all; 

% Parameters
c = 0.2; k = 1; alpha = 0.05; A = 2.5; omega=1.6;
u = [c k alpha A omega];

% Initial conditions - pick either case 1 or 2
% state order: x, xdot, sin(0), cos(0)
x0 = [0 0 0 1] ; % case 1 - low amplitude
% x0 = [7 0 0 1] ; % case 2 - high amplitude

% Simulate
options = simset('InitialState',x0); 
tspan = [0 50];
[t,x] = sim('model',tspan,options,[0 u]); 

% Plot
figure
subplot(4,1,1); plot(t,x(:,1)); ylabel('x');
subplot(4,1,2); plot(t,x(:,2)); ylabel('V');
subplot(4,1,3); plot(t,x(:,3)); ylabel('sin(\omegat)');
subplot(4,1,4); plot(t,x(:,4)); ylabel('cos(\omegat)'); xlabel('Time (s)')