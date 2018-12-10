function xMin = pocoord1(f, x0, eps, alpha0)
alpha = alpha0;
n = size(x0, 2);
k = 0;
x = x0;
while f(x) - f(x0) > eps  || k < 5
    x0 = x;
    t = 0;
    for i=1:n
        t = x;
        t(i) = x(i) + alpha;
        if f(t) < f(x)
            x(i) = x(i) + alpha;
        end
        t(i) = x(i) - alpha;
        if f(t) < f(x)
            x(i) = x(i) - alpha;
        end
    end
    if x == x0
        k = k + 1;
        alpha = alpha / 2;
    else
        alpha = alpha0;
    end
end
xMin = x;
fxMin = fx(x);
end

