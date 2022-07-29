%1490804 Lab5

function main()
%% Question 1a

    f=@(x,y)( (1-(4/3)*x)*y  );
    x0 = 0;
    y0 = 1;
    xf = 3;
    
    N  = 10;
    [x,y] = Euler(f,x0,y0,N,xf);
    plot(x,y); grid on; hold on
    
    N  = 50;
    [x,y] = Euler(f,x0,y0,N,xf);
    plot(x,y); grid on; hold on
    
    N  = 100;
    [x,y] = Euler(f,x0,y0,N,xf);
    plot(x,y); grid on; 
  
    legend('N=10','N=50', 'N=100');
    hold off;

%% Question 1b


    f=@(x,y)( (1-(4/3)*x)*y  );
    x0 = 0;
    y0 = 1;
    xf = 3;
    N  = 300;
    
    [x,y] = Euler(f,x0,y0,N,xf);
    plot(x,y); grid on; hold on
    
    [x,y] = Heun(f,x0,y0,N,xf);
    plot(x,y); grid on; hold on

    [x,y] = Midpoint(f,x0,y0,N,xf);
    plot(x,y); grid on; hold on
    
    [x,y] = rk4(f,x0,y0,N,xf);
    plot(x,y); grid on;
    
    legend('Euler','Heun', 'Midpoint','rk4'); 
    hold off;

%% Question 3 
    

%% Question 4 



end

% Euler’s Method for solving initial value problems for an ordinary differential equation
function [x,y] = Euler(f,x0,y0,N,xf)
    
    h = (3-0)/N;
    x = zeros(size(N+1)); 
    y = zeros(size(N+1)); 
    
    x(1) = x0;
    y(1) = y0;
    
    for i=1:N
        x(i+1) = x(i) + h;
        y(i+1) = y(i)+ h*f(x(i), y(i)); 
    end
    %plot(x,y); grid on;
    
end

% improved Euler’s Method for solving initial value problems for an ordinary differential equation
function [x,y] = Heun(f,x0,y0,N,xf)
    h = 0.1;
    x = zeros(size(N+1)); 
    y = zeros(size(N+1)); 
    
    x(1) = x0;
    y(1) = y0;
    
    for i=1:N
        x(i+1) = x(i) + h;
        y(i+1) = y(i)+ 0.5*h*( f(x(i),y(i)) + f(x(i)+h,y(i)+h*f(x(i),y(i))) ); 
    end
    %plot(x,y); grid on;
end

% Midpoint Method for solving initial value problems for an ordinary differential equation
function [x,y] = Midpoint(f,x0,y0,N,xf)
    h = 0.1;
    x = zeros(size(N+1)); 
    y = zeros(size(N+1)); 
    
    x(1) = x0;
    y(1) = y0;
    
    for i=1:N
        x(i+1) = x(i) + h;
        y(i+1) = y(i)+ h*f(x(i)+0.5*h, y(i)+0.5*h*f(x(i),y(i))); 
    end
    %plot(x,y); grid on;
end

% Runge-Kutta 4th order Method for solving initial value problems for an ordinary differential equation

function [x,y] = rk4(f,x0,y0,N,xf)
    h = 0.1;
    x = zeros(size(N+1)); 
    y = zeros(size(N+1)); 
    
    x(1) = x0;
    y(1) = y0;
    
    for i=1:N
        x(i+1) = x(i) + h;
        k1 = h*f(x(i),y(i));
        k2 = h*f(x(i)+0.5*h ,y(i)+0.5*k1);
        k3 = h*f(x(i)+0.5*h, y(i)+0.5*k2);
        k4 = h*f(x(i)+h, y(i)+k3);
        y(i+1) = y(i)+ (1/6)*( k1 + 2*k2 + 2*k3 + k4); 
    end
    %plot(x,y); grid on;
end

