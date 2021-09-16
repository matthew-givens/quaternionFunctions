% Hamiltonian convention: q = [qw;qx;qy;qz]
% Right-handed, passive rotations
% Right-to-left product is local-to-global
% q itself represents a rotation from local-to-global
% Inputs must be column vectors

function q = eaxis2q(u,phi)

% Equation 101
q = [cos(phi/2);
     u.*sin(phi/2)];

end