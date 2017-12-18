
%ligne de mDescr = 1 descripteur d'une image

%vReq = descripteur de l'img requete

%vLabel = vecteur des labels des images de mDescr


function [resDescr, resLabel, nomLabel] = triDistEuclidienne(vReq, mDescr, vLabel)

[yDescr, xDescr] = size(mDescr);

for i = 1 : yDescr
    distEucl(i,1) = norm (vReq - mDescr(i, :));
end

resDescr = sort(distEucl);
[resDescr, Indices] = sort(distEucl);


nomLabel = cell(1);
for i = 1 : yDescr
    nomLabel{i} = vLabel{Indices(i, :)};
end



resLabel = Indices;

end

