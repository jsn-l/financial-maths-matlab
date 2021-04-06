function T = SimpsonRule(f,a,b,n)
% SimpsonRule(f,a,b,n) n = # subintervals in [a,b]
if mod(n,2)~=0
    disp('number of subintervals n has to be even');
else
h = (b-a)/n;
T = 0;
for i = 0:(n/2 - 1)
    T = T + h*(f(a+2*i*h)+4*f(a+(2*i+1)*h)+f(a+(2*i+2)*h))/3;
end
% ALTERNATIVE CODE
% x = linspace(a,b,n+1);
% y = f(x);
% T = h*(4*sum(y(2:2:end))+2*sum(y(3:2:(end-2)))+y(1)+y(end))/3
end