v1 = zeros(5,1);

v2 = ones(5,2);
v2(2,1) = 5;
v2(3,1) = 5;

Im = logical(imread('dbq/bottle-01.gif'));
D = descripteur(Im);

Im2 = logical(imread('db/bottle-02.gif'));
A = descripteur(Im2);

figure;
plot(D);
drawnow();

figure;
plot(A);
drawnow();

%m =[A; A];

res = triDistEuclidienne(D, [A; A])
%% 