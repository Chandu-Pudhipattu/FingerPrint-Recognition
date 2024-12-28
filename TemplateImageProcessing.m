function [minMat_templ, Ithin, BifCentr, TermCentr] = TemplateImageProcessing(imagePath)
%Get image
im=imread(imagePath);


%Preprocessing
[Ithin, MinutaeMatrixComplex] = ext_finger(im,1);


%Processing
%Translating and Getting Minutiaes from original image
center=findCenter(MinutaeMatrixComplex);
Ithin=imageTranslation(center,Ithin);
[Bifurcations,Terminations,BifCentr,TermCentr]=GetMinutaes(Ithin);
minMat_templ=[BifCentr;TermCentr];
end