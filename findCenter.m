function [centerPosition] = findCenter(MinutaeMatrixComplex)
smmc=size(MinutaeMatrixComplex);
for i=1:smmc(1)
    if MinutaeMatrixComplex(i,3)==5
        centerPosition=[MinutaeMatrixComplex(i,1) MinutaeMatrixComplex(i,2)];
    end
end
end 

