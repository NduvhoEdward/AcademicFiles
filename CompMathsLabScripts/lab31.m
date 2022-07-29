%1490804 Lab3

function main()
%% Question 1a(I)

    tol = 10^(-5);
   
    I0 = [1 2];
    f=@(x)(exp(x) + 2^(-x) + 2*cos(x) - 6);
    fprime=@(x)(exp(x) - log(2)*2*(-x) -2*sin(x) );
    x0 = 1.5;
    
    disp("Method     Root    Iteration count");
    
    BisectionRoot = bisectionSearch(f,tol,I0)
    RegulaFalsiRoot = RegularfalsiSearch(f,tol,I0)
    NewtonsRoot = Newtonmethodscaler(f,fprime,x0,tol)

%% Question 1a(II)

    tol = 10^(-5);
   
    I0 = [-1 1];
    f=@(x)(1 - (2/(x^2 -2*x +2)) );
    fprime=@(x)( (4*x-4)/((x^2 -2*x +2)^2) );
    x0 = 0;
    
    disp("Method     Root    Iteration count");
    
    BisectionRoot = bisectionSearch(f,tol,I0)
    RegulaFalsiRoot = RegularfalsiSearch(f,tol,I0)
    NewtonsRoot = Newtonmethodscaler(f,fprime,x0,tol)

end

function root  = bisectionSearch(f,tol,I0)
    a = I0(1);
    b = I0(2);
    iterationCount = 0;
    c=(a+b)/2;
    c0 = 0;
    error = abs(c-c0)/abs(c);
    
    while error >= tol
        if f(c)<0 && f(a)<0
            a=c;
        else
            b=c;
        end
    c0 = c;
    c=(a+b)/2;
    error = abs(c-c0)/abs(c);
    iterationCount = iterationCount + 1;
    end
    root = c;
    iterationCount
end

function root = RegularfalsiSearch(f,tol,I0)
    a = I0(1);
    b = I0(2);
    iterationCount2 = 0;
    c=(a+b)/2;
    c0 = 0;
    error = abs(c-c0)/abs(c);
    
    while error >= tol
        if f(c)<0 && f(a)<0
            a=c;
        else
            b=c;
        end
    c0 = c;
    
    c=( a*f(b)-b*f(a) ) / ( f(b)-f(a) );
    error = abs(c-c0)/abs(c);
    iterationCount2 = iterationCount2 + 1;
    end
    root = c;
    iterationCount2
end

function x = Newtonmethodscaler(f,fprime,x0,tol)

    iterationCount3 = 0;
    xn = x0;
    xn0 = 0;
    error = abs(xn-xn0)/abs(xn);
    
    while error >= tol
        xn0 = xn;
        xn = xn - f(xn)/fprime(xn);
        error = abs(xn-xn0)/abs(xn);
        iterationCount3 = iterationCount3 + 1;
    end
    x = xn;
    iterationCount3
end

function x = Newtonmethodsystem(F,J,x0,tol)
    xn0=x0;
    xn=x0-J(x0)\(f(x0));
    while norm(xn-xn0)>tol
        xn0=xn;
        xn=xn0-J(xn0)\f(xn0);
    end
    x=xn;
end

