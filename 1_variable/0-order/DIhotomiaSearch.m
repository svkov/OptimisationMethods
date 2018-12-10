e = 0.02;
delta = 0.001;
a = 3;
b = 3.5;
c = (b + a) / 2 - delta / 2;
d = (b + a) / 2 + delta / 2;
calls = 2;
while b - a >= e
    v1 = fx(c);
    v2 = fx(d);
    calls = calls + 2;
    if v1 < v2
        b = d;
    else
        a = c;
    end
    c = (b + a) / 2 - delta / 2;
    d = (b + a) / 2 + delta / 2;
end
xMin = (b + a) / 2;
vMin = fx(xMin);
calls = calls + 1;
fprintf('Dichotomy method\nMin at %f\nFunc calls %d\n', xMin, calls);