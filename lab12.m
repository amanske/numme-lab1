function lab12(n)

    if n < 5 || n > 10 %deluppgift 1
        error('N must satisfy 5 <= n <= 10');
    end
    [A,b] = illposed(n); %deluppgift 2
    x = A\b; %deluppgift 3
    old = b; %ursprungligt högerled
    q = [];
    
    for i = 1:n; %deluppgift 4
        b(i) = old(i) + 0.005; % 0.005 är störningen i HL
        y = A\b; %notera störning i x
 
        abs(y-x); %skillnaden i x efter störning
        rIn = ((norm(b - old))/norm(old));
        rOut = ((norm(y - x))/norm(x));
        q = [q rOut/rIn];
    end
    
    disp('Kondition enl matlab: ')
    disp(cond(A))
    disp('Våra konditionsvärden: ')
    disp(q')
    
    