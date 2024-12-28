function [translatedImage] = imageTranslation(translatedCenter,imageToTranslate)
sim=size(imageToTranslate);
tx=round((sim(1)/2))-translatedCenter(1);
ty=round((sim(1)/3))-translatedCenter(2);
translatedImage=imtranslate(imageToTranslate,[tx,ty]);
end

