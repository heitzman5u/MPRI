clear;

Im = logical(imread('dbq/Bone-1.gif'));
imshow(Im);
drawnow();

[height, width] = size(Im);

[barY, barX] = barycentre(Im);