function [V] = NewtonRaphson(data)
%Newton-Raphson
%global data;

theNextV = data.q(data.ind_v); %ALLER CHERCHER LE GLOBAL
theNewV = [1 ;1 ;1 ;1];

n=0;
while max(abs(theNextV - theNewV)) > 10^(-9) && n<10
    theNewV=theNextV;
    data.q(data.ind_v) = theNextV;
    [ theNewH,Jac ] = mbs_cons_hJ(data);
    
    theNewJv = Jac(:,data.ind_v);
    theNextV = theNewV - (theNewJv\theNewH);
    n=n+1;
end
V = theNextV;
%data.q(ind_v)=theNextV;
end

