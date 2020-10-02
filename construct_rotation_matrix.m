function R_mat = construct_rotation_matrix(angles)
%Construct the rotation matrix from the euler angles
% Input: angles is a vector of (omega, phi, kappa), the unit is rad
% Output: Matrix M, which is R3(kappa)*R2(phi)*R1(omega)

R_mat = [cos(angles(2))*cos(angles(3)), sin(angles(1))*sin(angles(2))*cos(angles(3))-cos(angles(1))*sin(angles(3)), sin(angles(1))*sin(angles(3))+cos(angles(1))*sin(angles(2))*cos(angles(3));
         cos(angles(2))+sin(angles(3)), cos(angles(1))*cos(angles(3))+sin(angles(1))*sin(angles(2))*sin(angles(3)), cos(angles(1))*sin(angles(2))*sin(angles(3))-sin(angles(1))*cos(angles(3));
         -sin(angles(2)),           sin(angles(1))*cos(angles(2)),                                  cos(angles(1))*cos(angles(2))];



end

