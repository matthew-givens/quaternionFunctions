% Hamiltonian convention: q = [qw;qx;qy;qz]
% Right-handed, passive rotations
% Right-to-left product is local-to-global
% q itself represents a rotation from local-to-global
% Inputs must be column vectors

% Quaternion product
function qxp = qXp(q,p)

% Equation 17
qxp = qX(q)*p;

end