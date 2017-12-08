
v1 = zeros(5,1);

v2 = ones(5,2);
v2(2,1) = 5;
v2(3,1) = 5;

res = triDistEuclidienne(v1, v2)