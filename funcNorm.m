function [res] = funcNorm(u,a,b)
f = @(t) u(t).^2;
res = sqrt((1/a-b)*integral(f,a,b));