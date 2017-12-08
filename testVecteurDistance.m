
Img = logical(imread('dbq/Bone-1.gif'));

angle = 0.05;
[baryY, baryX] = barycentre(Img);
V = vecteurDistanceAuBaricentre(Img, baryX, baryY, angle);


X = [0:angle:2*pi];
figure;
imshow(Img);
drawnow();

figure;
plot(X, V);
drawnow();

