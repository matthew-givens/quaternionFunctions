% Hamiltonian convention: q = [qw;qx;qy;qz]
% Right-handed, passive rotations
% Right-to-left product is local-to-global
% q itself represents a rotation from local-to-global
% Inputs must be column vectors

% Quaternion inverse
function qi = q_inv(q)

% Equation 30
qi = q_conj(q)/q_norm(q)^2;

end