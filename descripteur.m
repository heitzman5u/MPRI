
function D = descripteur(Img)
    angle = 0.5;
    nbCoeffsAGarder = 70;
    
    [baryY, baryX] = barycentre(Img);
    V = vecteurDistanceAuBaricentre(Img, baryX, baryY, angle);
    
    F = fft(V);
    F = F(1:nbCoeffsAGarder); % garder les fréquences faibles
    f0 = abs(F(1)); % normaliser
    
    D = abs(F) ./ f0;
end