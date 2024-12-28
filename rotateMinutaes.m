function [minutaeMatrix_rot] = rotateMinutaes(minutaeMatrix,theta_delta)
%minutaeMatrix: minutaeMatrix of the current fingerprint, the one that you
%are rotating
%theta_delta: angle increasing that you want to do every iteration
%minutaeMatrix_rot: minutaeMatrix of the current fingerprint rotated
smat=size(minutaeMatrix);
minutaeMatrix_rot=zeros(smat(1),smat(2));
for i = 1:smat(1)
    x=minutaeMatrix(i,1);
    y=minutaeMatrix(i,2);
    theta=atan(y/x);
    theta2=theta+theta_delta;
    x2=sqrt(x^2+y^2)*cos(theta2);
    y2=sqrt(x^2+y^2)*sin(theta2);
    minutaeMatrix_rot(i,:)=[x2,y2];
end
end

