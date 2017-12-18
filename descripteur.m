
function D = descripteur(Img, angle, nbCoeffsAGarder)
    %angle = 0.25;
    %nbCoeffsAGarder = floor((2.0*pi/angle) * 0.5);
    
    [baryY, baryX] = barycentre(Img);
    V = vecteurDistanceAuBaricentre(Img, baryX, baryY, angle);
    
    F = fft(V);
    F = F(1:nbCoeffsAGarder); % garder les fréquences faibles
    f0 = abs(F(1)); % normaliser
    
    D = abs(F) ./ f0;
end