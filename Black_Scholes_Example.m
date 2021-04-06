function T = TrapezoidRule(f,a,b,n)
% TrapezoidRule(f,a,b,n) n = # subintervals in [a,b]
h = (b-a)/n;
T = 0;
for i = 0:(n-1)
    T = T + h*(f(a+i*h)+f(a+(i+1)*h))/2;
end
%disp([T pi/4])