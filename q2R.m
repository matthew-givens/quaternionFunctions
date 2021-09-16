% Hamiltonian convention: q = [qw;qx;qy;qz]
% Right-handed, passive rotations
% Right-to-left product is local-to-global
% q itself represents a rotation from local-to-global
% Inputs must be column vectors

% Convert quaternion to rotation matrix
function R = q2R(q)

% Equation 117
R = (q(1,1)^2-q(2:4,1).'*q(2:4,1))*eye(3) + 2*q(2:4,1)*q(2:4,1).' +...
    2*q(1,1)*X(q(2:4,1));

end