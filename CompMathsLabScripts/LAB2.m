


%NOTE: Please comment your input variables. 
%I only want to see the answers returned by your functions. 

% As you could see, all my input variables are suppresed.


function main()
%% Question 1a

    A = [2 1 -1 2; 4 5 -3 6; -2 5 -2 6; 4 11 -4 8];
    b = [5 9 4 2 ]';    
    x = [0 0 0 0]';
    tol = 10^-6;
    %[x iterationCount] =  JacobiMethod(A,b,x,tol);
    %[x iterationCount] =  gaussSeidel(A,b,x,tol)
    
%% Question 1b
    A = [3 1 -1; 1 -4 2; -2 -1 5];
    b = [3 -1 2]';
    x = [0 0 0]';
    tol = 10^-6;

    [x iterationCount] =  JacobiMethod(A,b,x,tol)
    
    x = [0 0 0]';
    
    [x iterationCount] =  gaussSeidel(A,b,x,tol)
    
    disp('The second on is digonally dominant, which is the reason');
    disp('why it converges, unlike the first one');
    


%% Question 2a

disp('The metrix A is diagonally dominant');



end


function [x,iterationCount]=JacobiMethod(A,b,x_0,tol)
    %Decomposing the metrix into its U, P, and D components
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
        %Getting and checking the relative error
        err = max(abs((x-xold)./x));
        if err<=tol
            break;
        end
        xold = x;
    end 
end


function [x,iterationCount]= gaussSeidel(A,b,x_0,tol)
    %Decomposing the metrix into its U, P, and D components
    L = tril(A,-1);
    U = tril(A',-1)';
    D = diag(A);
    D = diag(D);
    
    iterationCount = 0;
    x = x_0;
    xold = x_0;
    while true
        y = b - U*x;
        x = (L+D)\y;
        iterationCount = iterationCount + 1;
        
        %Getting and checking the relative error
        err = max(abs((x-xold)./x));
        if err<=tol
            break;
        end
        xold = x;
    end
end