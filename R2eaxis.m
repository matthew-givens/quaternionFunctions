% Hamiltonian convention: q = [qw;qx;qy;qz]
% Right-handed, passive rotations
% Right-to-left product is local-to-global
% q itself represents a rotation from local-to-global
% Inputs must be column vectors

% Converts rotation matrix to axis/angle
function [u,phi] = R2eaxis(R)
%   The value of the scalar in the quaternion is known, so the euler angle
%   can be directly calculated using Eq. 2.124. If the angle is greater
%   than pi, there exists an angle 180 degrees less than it to get to the
%   same orientation about the euler axis. If the angle equals zero, no
%   rotation is required. If the angle is 180, a different process must be
%   used to find the euler axis. For 0>theta>180, there is a standard
%   equation that is used to find the euler axis.

phi = acos((trace(R)-1)/2); % limit to 0<theta<pi

if phi > pi
    
    phi = phi - 2*pi;
    
end

if phi == 0
    
    error('Rotation angle equals zero!')
    
elseif phi == pi
    
    e_matrix = (R+eye(3))/2;
    e_column3 = e_matrix(:,1);
    
    e_column_sums = sum(e_matrix);
    [a,b] = max(e_column_sums);
    e_max_column = e_matrix(:,b);
    e_column_norm = norm(e_max_column);
    
    u = e_column3./e_column_norm;
    
else

    u = (1/(2*sin(phi))).*[R(2,3)-R(3,2);R(3,1)-R(1,3);R(1,2)-R(2,1)];

end

end

