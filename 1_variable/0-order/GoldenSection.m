e = 0.02;
delta = 0.001;
a = 3;
b = 3.5;
phi = (sqrt(5) - 1) / 2;
phi_prime = (3 - sqrt(5)) / 2;
c = a + (b - a) * phi_prime;
d = a + (b - a) * phi;
v1 = fx(c);
v2 = fx(d);
calls = 2;
while b - a > e
    if v1 > v2
        a = c;
        c = d;
        d = a + (b - a) * phi;
        v1 = v2;
        v2 = fx(d);
    else
        b = d;
        d = c;
        c = a + (b - a) * phi_prime;
        v2 = v1;
        v1 = fx(c);
    end
    calls = calls + 1;
end
xMin = (a + b) / 2;
vMin = fx(xMin);
calls = calls + 1;
fprintf('Golden section\nMin at %f\nFunc calls %d\n', xMin, calls);