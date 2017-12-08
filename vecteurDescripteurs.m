
% M: matrice dont chaque ligne correspond au descripteur d'une image
function M = vecteurDescripteurs(VecteurImages)
    M = zeros(size(VecteurImages));
    for i=0:size(VecteurImages, 1)
        M(i) = descripteur(VecteurImages(i, :, :));
    end
end