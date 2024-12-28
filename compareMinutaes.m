function [s] = compareMinutaes(minMatr_templ,minMatr_curr,r0)
%minMatr_templ: minutaeMatrix from template fingerprint
%minMatr_templ: minutaeMatrix from current fingerprint
%r0 = threshold of the error you want to have (distance between minutaes)
%s=score (number of minutaes that are correct)
    smat_templ=size(minMatr_templ);
    smat_curr=size(minMatr_curr);
    s=0;
    for i = 1:smat_templ(1)
        for j = 1:smat_curr(1)
            x_templ=minMatr_templ(i,1);
            y_templ=minMatr_templ(i,2);
            x_curr=minMatr_curr(j,1);
            y_curr=minMatr_curr(j,2);
            r=sqrt((x_templ-x_curr)^2+(y_templ-y_curr)^2);
            if r<r0
                s=s+1;
            end
        end
    end

end

