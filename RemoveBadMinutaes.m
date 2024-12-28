function [BifCentrs2,TermCentrs2] = RemoveBadMinutaes(BifCentrs,TermCentrs, D)

%1. Remove bifurcations and terminations at a distance smaller than D
distance = DistEuclidian(BifCentrs, TermCentrs);
fakeMinutaes = distance<D;
[i,j] = find(fakeMinutaes);
BifCentrs(i,:) = [];
TermCentrs(j,:) = [];

%2. Remove bifurcations at a distance smaller than D from other
%bifurcations

distance=DistEuclidian(BifCentrs);
fakeMinutae=distance<D;
[i,j]=find(fakeMinutae);
BifCentrs(i,:)=[];

%3. Remove terminations at a distance smaller than D from other
%bifurcations
distance=DistEuclidian(TermCentrs);
fakeMinutae=distance<D;
[i,j]=find(fakeMinutae);
TermCentrs(i,:)=[];

%Return result
BifCentrs2 = BifCentrs;
TermCentrs2 = TermCentrs;


end

