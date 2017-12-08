
Img = logical(imread('dbq/apple-1.gif'));

V = vecteurDistanceAuBaricentre(Img, bariX, bariY, 0.1);

X = [0:0.1:2*pi];
figure;
imshow(Img);
drawnow();

figure;
plot(X, V);
drawnow();

