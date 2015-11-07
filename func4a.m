function func4a()




z = [-2 -1 2];% -1 1 3]; %givna punkter
w = [2 5 4];% 0 0 1]; %givna punkter

b = (z.*z+w.*w)';

A = [ones(length(z),1) z' w'];
c = A\b;
x = -2.3:0.01:3.3;


ekv1 = 0.5*(c(3)-sqrt(4*c(1)+power(c(3), 2)+4*c(2)*x-4*power(x,2)));
ekv2 = 0.5*(c(3)+sqrt(4*c(1)+power(c(3),2)+4*c(2)*x-4*power(x,2)));
plot(x,ekv1);
hold on
plot(x, ekv2);
axis([-2.5 6 -1 6]);

plot(z,w,'o');
hold off