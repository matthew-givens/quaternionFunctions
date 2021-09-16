% Hamiltonian convention: q = [qw;qx;qy;qz]
% Right-handed, passive rotations
% Right-to-left product is local-to-global
% q itself represents a rotation from local-to-global
% Inputs must be column vectors

% Convert rotation matrix to quaternion
function q = R2q(R)

[u,phi] = R2eaxis(R);

q = eaxis2q(u,phi);

end