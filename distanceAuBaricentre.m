
% Renvoie la distance d'un point limite de l'objet par rapport au
% baricentre
function d = distanceAuBaricentre(Img, x, y, angle)
    trouve = false;
    unitaireX = cos(angle);
    unitaireY = sin(angle);
    posX = x;
    posY = y;
    
    [tailleY, tailleX] = size(Img);
    
    while (~ trouve)
        posX = posX + unitaireX;
        posY = posY + unitaireY;
        if posX <= 1 || posY <= 1 || posX >= tailleX || posY >= tailleY
            trouve = true;
        end
        if ~trouve && ~Img(floor(posY), floor(posX))
            trouve = true;
        end
    end
    
    d = sqrt( (posX - x)^2 + (posY - y)^2 );
    
end
 

    
    