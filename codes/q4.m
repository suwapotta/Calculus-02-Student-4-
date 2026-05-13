clc; clear;

% J = [ dx/du, dx/dv, dx/dw ;
%       dy/du, dy/dv, dy/dw ;
%       dz/du, dz/dv, dz/dw ]
J = [ 1/7,  3/7,  1/7 ;
      1/7, -1/7,  1/7 ;
      1/7, -1/7, -3/7 ];

abs_J = abs(det(J));

x = @(u,v,w) (u + 3.*v + w) ./ 7;
y = @(u,v,w) (u - v + w) ./ 7;
z = @(u,v,w) (u - v - 3.*w) ./ 7;

P_uvw = @(u,v,w) 901.17 .* x(u,v,w) .* y(u,v,w) .* z(u,v,w) .* abs_J;

uMin = 0; uMax = 3;
vMin = -1; vMax = 6;
wMin = -1; wMax = 4;

result = integral3(P_uvw, uMin, uMax, vMin, vMax, wMin, wMax);

fprintf('The absolute value of the Jacobian determinant is: %f\n', abs_J);
fprintf('The triple integral result is: %.4f\n', result);
