clc; clear;

P = @(r, theta, z) 354.62 .* (r.^3);

rMin = 0; rMax = 5.5;
thetaMin = 0; thetaMax = 2*pi;
zMin = 0; zMax = 9.5;

result = integral3(P, rMin, rMax, thetaMin, thetaMax, zMin, zMax);

fprintf('The triple integral result is: %.4f\n', result);
