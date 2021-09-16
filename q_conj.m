% Hamiltonian convention: q = [qw;qx;qy;qz]
% Right-handed, passive rotations
% Right-to-left product is local-to-global
% q itself represents a rotation from local-to-global
% Inputs must be column vectors

% Quaternion conjugate
function qs = q_conj(q)

% Equation 24
qs = [q(1);-q(2:4,1)];

end