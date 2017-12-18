
%ligne de mDescr = 1 descripteur d'une image

%vReq = descripteur de l'img requete

%vLabel = vecteur des labels des images de mDescr


function resDescr = triDistEuclidienne(vReq, mDescr)

[yDescr, xDescr] = size(mDescr);

for i = 1 : yDescr
    distEucl(i,1) = norm (vReq - mDescr(i, :));
end

resDescr = sort(distEucl);
%[resDescr, Indices] = sort(distEucl);
%resLabel = vLabel(Indices);
end