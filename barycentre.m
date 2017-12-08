
% Fonction qui calcule le barycentre d'une matrice comportant des 0 et des
% 1.

function [y, x] = barycentre(matrice)

[height, width] = size(matrice);
cpt = 0;
for w = 1 : width
    for h = 1 : height
       if matrice(h, w) == 1
           cpt = cpt +1;
           m2(cpt, 1) = h;
           m2(cpt, 2) = w;
       end
    end
end

y = mean(m2(:,1));
x = mean(m2(:,2));


end