% Skew-symmetric cross-product matrix
function vX = X(v)

vX = [0,-v(3),v(2);
      v(3),0,-v(1);
     -v(2),v(1),0];

end