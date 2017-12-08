
% Renvoie un vecteur de distance: celle des limites de l'objet
function D = vecteurDistanceAuBaricentre(Img, x, y, angle)
    Pas = [0:angle:2*pi];
    taille = size(Pas, 2);
    
    D = [];
    
    for i=1 : taille
        D = [D, distanceAuBaricentre(Img, x, y, Pas(i))];
    end
end