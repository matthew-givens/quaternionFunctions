% Hamiltonian convention: q = [qw;qx;qy;qz]
% Right-handed, passive rotations
% Right-to-left product is local-to-global
% q itself represents a rotation from local-to-global
% Inputs must be column vectors

% Convert quaternion to axis (u) and angle (theta)
function [u,phi] = q2eaxis(q)

% Based on Equation 101
phi = acos(q(1,1));
u = q(2:4,1)./sin(phi);

end