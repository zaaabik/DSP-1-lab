function main
%input data
f1 = 24;
f2 = 2577;
dt = 10^(-3);
T = pi;
a = -T/2;
b = T/2;
%functions
u1 = @(t) sin(2*pi*f1*t);
u2 = @(t) sin(2*pi*f2*t);
%
subplot(1,2,1);
plot(u1(a:dt:b));
subplot(1,2,2);
plot(u2(a:dt:b));
%scalar product 
dp = dotProduct(u1,u2,a,b);
disp(dp);
%nor
n1 = funcNorm(u2,a,b);
n2 = funcNorm(u1,a,b);
disp(n1);
disp(n2);
%ort
if(dp == 0)
    disp("ortogonal");
else
    disp("not ortogonal");
end
       
