function func3c()
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here



w = 2*pi/365; %constant
x = 1:1:365; %interval
y = [1 32 60 91 121 152 182 213 244 274 305 335]; %our days

A = [ones(12, 1) cos(w*y)' sin(w*y)']; %create a to fit ekv
b = [6.1 8 10.4 13.2 15.8 18 18.4 16.6 14.1 11.4 8.7 6.6]'; %sun hours
c = A\(b); %least sqaure method gives c

residual = b-A*c;
plot(y,residual, 'r');
hold on
ekv(x) = c(1) + c(2)*cos(w*x) + c(3)*sin(w*x);
plot(x,ekv(x)); %plot equation


plot(y,b, 'o'); %plot given values
hold off

disp('Felkvadratsumma:')
disp(residual'*residual)
disp('Midsommardagssol:')
disp(ekv(171))
langstadag = 0;
for i = 1:365
    soltimmar = ekv(i);
    if soltimmar > langstadag
        langstadag = soltimmar;
        dagnummer = i;
    end

end
disp('Längsta dag:')
disp(dagnummer)

