% Hamiltonian convention: q = [qw;qx;qy;qz]
% Right-handed, passive rotations
% Right-to-left product is local-to-global
% q itself represents a rotation from local-to-global
% Inputs must be column vectors

% Left quaternion product matrix
function qL = qX(q)

% Equation 19
qL = q(1,1)*eye(4) + [0,-q(2:4,1).';
                      q(2:4,1),X(q(2:4,1))];

end