clc; clear;

f = @(x,y,z) 480.92.*x + 592.03.*y + z.^2;

xMin = 0.1;
xMax = 5 - 0.3 - 0.4;

yMin = 0.3;
yMax = @(x) 5 - x - 0.4;

zMin = 0.4;
zMax = @(x,y) 5 - x - y;

result = integral3(f, xMin, xMax, yMin, yMax, zMin, zMax);

fprintf('The triple integral result is: %.4f\n', result);
