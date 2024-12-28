function [result] = minutie(region)
if region(2,2)==0
    result=0;
else
    result=sum(region(:))-1;
end

