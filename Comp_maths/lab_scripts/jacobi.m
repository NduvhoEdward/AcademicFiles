

function main()
    A = [3 1 -1; 1 -4 2; -2 -1 5];
    b = [3 -1 2]';
    
    %x = A\b;
    
    x = [0 0 0]';
    
    L = tril(A,-1);
    U = tril(A',-1)';
    D = diag(A);
    D = diag(D);
    
    for i=1:5
        y = b - (L+U)*x(:,i);
        x(:,i+1) = D\y;
        %y = b - (L+U)*x;
        %x = D\y;
    end
    
    [x iterationCount] = JacobiMethod(A,b,x,0.0005)
    
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