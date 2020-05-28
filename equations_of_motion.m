function xd = equations_of_motion(t,x,u)

x1 = x(1); % x
x2 = x(2); % x_dot
x3 = x(3); x4 = x(4); % sin and cos terms for the harmonic oscillator

% Harmonic oscillator equations
x3dot =  x3+u(5)*x4-x3*(x3^2+x4^2); % [sin(omega*t)]dot
x4dot = -u(5)*x3+x4-x4*(x3^2+x4^2); % [cos(omega*t)]dot

c=u(1); k=u(2); alpha=u(3); A=u(4); omega=u(5);

% Equation of motion - Duffing system:
% xdotdot + c*xdot + k*x + alpha*x^3  = A*cos(omega*t)
xDotDot = -c*x2-k*x1-alpha*x1^3+A*x4; 

% Output the state derivatives
xd = [x2; xDotDot; x3dot; x4dot];