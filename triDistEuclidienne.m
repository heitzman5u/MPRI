
%ligne de mDescr = 1 descripteur d'une image



function res = triDistEuclidienne(vReq, mDescr)

[xDescr, yDescr] = size(mDescr);

for i = 1 : yDescr
    distEucl(i,1) = norm (vReq - mDescr(:, i));
end

res = sort(distEucl);

end