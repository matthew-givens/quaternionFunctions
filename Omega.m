% Hamiltonian convention: q = [qw;qx;qy;qz]
% Right-handed, passive rotations
% Right-to-left product is local-to-global
% q itself represents a rotation from local-to-global
% Inputs must be column vectors

% Calculates Omega matrix given omega_L
function O = Omega(omega_L)

O = [0,-omega_L(1:3,1).';
    omega_L(1:3,1),-X(omega_L(1:3,1))];

end