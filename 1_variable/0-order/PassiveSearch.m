e = 0.02;
d = 0.001;
a = 3;
b = 3.5;
n = (b - a) / e;
m = fx(a);
xMin = a;
for i = 0:n
    v = fx(a + i* e);
    if v < m
        m = v;
        xMin = a + i * e;
    end
end
calls = n;
fprintf('Passive search method\nMin at %f\nFunc calls %d\n', xMin, calls);