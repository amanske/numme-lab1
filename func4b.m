function func4b()

grid
hold on
[z,w] = ginput(10);
plot(z,w);
hold off


b = (z.*z+w.*w);

A = [ones(length(z),1) z w];
c = A\b;
x = -2:0.01:2;


ekv1 = 0.5*(c(3)-sqrt(4*c(1)+power(c(3), 2)+4*c(2)*x-4*power(x,2)));
ekv2 = 0.5*(c(3)+sqrt(4*c(1)+power(c(3),2)+4*c(2)*x-4*power(x,2)));
plot(x,ekv1);
hold on
plot(x, ekv2);
axis([-2.5 6 -1 6]);

plot(z,w,'o');
hold off