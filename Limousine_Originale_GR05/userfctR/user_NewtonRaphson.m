function [q] = user_NewtonRaphson( MBS_data, tsim, tolerance, max_iterations)
% Solve linear and non linear systems F(X)=0 using the Newton-Raphson
% method
% -------Inputs------------
%   - data: the data structure of the problem
%   - tolerance: needed tolerance
%   - max_iterations: maximum number of iterations

usrfun = 0;
q = MBS_data.q;
qv = MBS_data.qv;

i=1;
qvold = q(qv)+1*ones(size(q(qv)));

while (norm(q(qv)-qvold)>=tolerance && i<=max_iterations)
    qvold = q(qv);
    
    MBS_data.q(qv) = qvold;
    [h, Jac] = mbs_cons_hJ_Limousine_Originale_GR05( MBS_data, tsim, usrfun);
    Jacv = Jac( :, qv);
    
    q(qv)=qvold-Jacv\h;
    i=i+1;
    if( i == max_iterations )
        display('The maximum number of iterations in Newton_Raphson has been reached')
    end
    
end

end