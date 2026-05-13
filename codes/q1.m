clc; clear;

g = @(x,y,z) 652.75 .* (x.^4) .* (y.^8) .* (z.^7);

xMin = 0; xMax = 5;
yMin = 0; yMax = 6;
zMin = 0; zMax = 3;

result = integral3(g, xMin, xMax, yMin, yMax, zMin, zMax);

fprintf('The triple integral result is: %.4f\n', result);
