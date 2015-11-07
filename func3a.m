function func3a()
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here


y = [91 121 152 182 213 244];
A = [ones(6,1) y' power(y',2)];
x = 80:1:265;
b = [13.2 15.8 18 18.4 16.6 14.1];
c = A\(b');

ekv(x) = c(1)+c(2)*x+c(3)*power(x,2);
plot(x,ekv(x));
ekv(170) %solens timmar dag 170
hold on

plot(y,b, 'o');
plot(171,ekv(171), 'ro');
hold off

end

