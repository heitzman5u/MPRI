% recall et precision sont des matrices  de tailles identiques num_ref X 19 
% où num_ref est le nombre d'objets de référence (le nombre d'images requêtes) 
% et 19 est le nombre d'images à retrouver pour chaque requête

function [recall, precision] = tests()
img_db_path = './db/';
img_db_list = glob([img_db_path, '*.gif']);
img_db = cell(1);
label_db = cell(1);
fd_db = cell(1);

% mDescr descripteurs des images ; vReq : descripteur de l'img requête
angle = 0.25;
coeffs = floor((2.0*pi/angle) * 0.5);

%mDescr = zeros(numel(img_db_list), coeffs);
mDescr = zeros(10, coeffs);

%figure();
%for im = 1:numel(img_db_list)
for im = 1:10
    img_db{im} = logical(imread(img_db_list{im}));
    label_db{im} = get_label(img_db_list{im});
    %clf;imshow(img_db{im});
    disp(label_db{im}); 
    %drawnow();
    
    mDescr(im, :) = descripteur(img_db{im}, angle, coeffs);
end



% travail pour une image requête
imReq = logical(imread('./dbq/Bone-1.gif'));
labelReq = get_label('./dbq/Bone-1.gif');
vReq = descripteur(imReq, angle, coeffs);


[resDescr, resLabel] = triDistEuclidienne(vReq, mDescr, label_db)


figure();
subplot(2, 5, 1);
imshow(imReq);
title('Image requête');
for i = 6 : 10
    subplot(2, 5, i);
    imshow(img_db{resLabel(i-5)});
    title(label_db{resLabel(i-5)});
end
drawnow();
