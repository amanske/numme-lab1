function func3b()
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here


y = [91 121 152 182 213 244];
A = [ones(6,1) y' power(y',2) power(y',3) power(y',4) power(y',5)];
b = [13.2 15.8 18 18.4 16.6 14.1];
c = A\(b');
x = 80:1:265;

ekv(x) = c(1)+c(2)*x+c(3)*power(x,2)+c(4)*power(x,3)+c(5)*power(x,4)+c(6)*power(x,5);
plot(x,ekv(x));
hold on

plot(y,b, 'o');
hold off

end

