function [scProduct] = dotPruduct(u1,u2,a,b)
resFunc = @(t) u1(t) .* u2(t);
scProduct =1/(a-b)*integral(resFunc,a,b);