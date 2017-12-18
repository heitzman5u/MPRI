
%ligne de mDescr = 1 descripteur d'une image

%vReq = descripteur de l'img requete

%vLabel = vecteur des labels des images de mDescr


function [resDescr, resLabel] = triDistEuclidienne(vReq, mDescr, vLabel)

[yDescr, xDescr] = size(mDescr);

for i = 1 : yDescr
    distEucl(i,1) = norm (vReq - mDescr(i, :));
end

resDescr = sort(distEucl);
[resDescr, Indices] = sort(distEucl);


%resLabel = cell(1);
%for i = 1 : yDescr
%    resLabel{i} = vLabel{Indices(i)};
%end
resLabel = Indices;

end

