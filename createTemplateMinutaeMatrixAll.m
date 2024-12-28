function [minMat_templ_all] = createTemplateMinutaeMatrixAll(minMat_templ,theta_max,theta_delta)
%Creates a 3-d matrix in which every matrix is the template minutae matrix for each
%rotation
    %minMat_templ:minutaeMatrix of the template fingerprint
    %theta_max: +- max different angle between fingerprints [rad]
    %theta_delta: angle increasing that you want to do every iteration [rad]
    %minMat_templ_all: 3-D minutaeMatrix of the template fingerprint with all
    %possible rotations
    smat=size(minMat_templ);
    n_iter=(theta_max/theta_delta)*2;
    minMat_templ_all=zeros(smat(1),smat(2),n_iter);
    actual_minMat=minMat_templ;
    minMat_templ_all(:,:,1)=minMat_templ;
    for k = 2:n_iter/2
        minMat_templ_all(:,:,k)=rotateMinutaes(actual_minMat,theta_delta);
    end
    actual_minMat=minMat_templ;
    for k = n_iter/2:n_iter
        minMat_templ_all(:,:,k)=rotateMinutaes(actual_minMat,-theta_delta);
    end
end

