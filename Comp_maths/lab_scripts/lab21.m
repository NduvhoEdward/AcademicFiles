

function main()
    A = [3 1 -1 1; 1 -4 2 3; -2 -1 5 5];
    b = [3 -1 2 9]';
    x = [0 0 0]';
    tol = 10^-6
    
    %% Question 2b
    [x iterationCount] = JacobiMethod(A,b,x,tol)
    
end


function [x,iterationCount]=JacobiMethod(A,b,x_0,tol)

    L = tril(A,-1);
    U = tril(A',-1)';
    D = diag(A);
    D = diag(D);
    
    iterationCount = 0;
    x = x_0;
    xold = x_0;
    while true
        y = b - (L+U)*x;
        x = D\y;
        iterationCount = iterationCount + 1;
        
        err = max(abs((x-xold)./x));
        if err<=tol
            break;
        end
        xold = x;
    end
    
end