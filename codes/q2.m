clc; clear;

I = @(r, theta, phi) 600.17 .* (r.^4) .* sin(phi);

rMin = 0; rMax = 7.5;
thetaMin = 0; thetaMax = 2*pi;
phiMin = 0; phiMax = pi;

result = integral3(I, rMin, rMax, thetaMin, thetaMax, phiMin, phiMax);

fprintf('The triple integral result is: %.4f\n', result);
