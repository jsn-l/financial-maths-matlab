function price = BS_Model(S,K,sigma,d,r,T);
 
phi = @(x) 0.5*erfc(-x/sqrt(2));
d1 = (log(S./K)+(r-d+sigma.^2/2)*T)/(sigma.*sqrt(T));
d2 = (log(S./K)+(r-d-sigma.^2/2)*T)/(sigma.*sqrt(T));
 
price = S.*exp(-d*T).*phi(d1)-K.*exp(-r*T).*phi(d2)
 
end