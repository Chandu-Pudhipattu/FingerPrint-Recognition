function [coinc] = matching(minMat_templ,minMat_curr,coinc_thresh)
%minMat_templ_all: minutaeMatrix of the template fingerprint
%minMat_curr:minutaeMatrix of the current fingerprint
%coinc_thresh: threshold of the error you want to have (number of coincidences)
%coinc: 0 --> Not coincident // 1 --> Coincident
minMat_templ_all=createTemplateMinutaeMatrixAll(minMat_templ,1,0.001);
smat_templ_all=size(minMat_templ_all);
s_max=0;
coinc=0;
for k=1:smat_templ_all(3)
    s=compareMinutaes(minMat_templ_all(:,:,k),minMat_curr,10);
    if s>s_max
       s_max=s; 
    end
    if s_max>coinc_thresh
        coinc=1;
        break
    end
end
end

