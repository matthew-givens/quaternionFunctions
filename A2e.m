function [ e, angle ] = A2e( A )
%A2E Convert a DCM to Euler Axis/Angle Representation
%   The value of the scalar in the quaternion is known, so the euler angle
%   can be directly calculated using Eq. 2.124. If the angle is greater
%   than pi, there exists an angle 180 degrees less than it to get to the
%   same orientation about the euler axis. If the angle equals zero, no
%   rotation is required. If the angle is 180, a different process must be
%   used to find the euler axis. For 0>theta>180, there is a standard
%   equation that is used to find the euler axis.

angle = acos((trace(A)-1)/2); % limit to 0<theta<pi

if angle > pi
    
    angle = angle - 2*pi;
    
end

if angle == 0
    
    error('Rotation angle equals zero!')
    
elseif angle == pi
    
    e_matrix = (A+eye(3))/2;
    e_column3 = e_matrix(:,1);
    
    e_column_sums = sum(e_matrix);
    [a,b] = max(e_column_sums);
    e_max_column = e_matrix(:,b);
    e_column_norm = norm(e_max_column);
    
    e = e_column3./e_column_norm;
    
else

    e = (1/(2*sin(angle))).*[A(2,3)-A(3,2);A(3,1)-A(1,3);A(1,2)-A(2,1)];

end

end

