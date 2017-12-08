
%ligne de mDescr = 1 descripteur d'une image

%vReq = descripteur de l'img requete


function res = triDistEuclidienne(vReq, mDescr)

[yDescr, xDescr] = size(mDescr);

for i = 1 : yDescr
    distEucl(i,1) = norm (vReq - mDescr(i, :));
end

res = sort(distEucl);

end