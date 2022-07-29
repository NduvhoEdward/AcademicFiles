
% prompt = 'Enter your name: ';
% answer = input(prompt, 's')
% greeting = "hello " + answer;
% 
% disp(greeting);
% 
% prompt = 'Enter hours: '; 
% hours = input(prompt);
% prompt = 'Enter rate: ';
% rate = input(prompt);
% 
% disp('Pay');
% disp(hours*rate);

function Main()
    %[er1 er2] = AE(65.02,65)
    sum1 = multiples(15)
end


function [error1, error2 ] = AE (A,B)
    error1 = abs(A - B);
    error2 = error1/A;
end

function sum1 = multiples(x)
    sum1 = 0;
    for i = 0:1:(x-1)
        if mod(i,3) == 0 | mod(i,5)==0
            sum1 = sum1 + i;
        end
    end
end




