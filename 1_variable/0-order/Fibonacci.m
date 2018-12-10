e = 0.001;
delta = 0.001;
a = 3;
b = 3.5;
fib = zeros(1, 100);
fib(1) = 1;
fib(2) = 1;
n = 100;
for i=3:100
    fib(i) = fib(i - 1) + fib(i - 2);
    if fib(i) >= (11/20) * (b - a) / e
        n = i - 1;
    end
end
c = a + (b - a) * fib(n - 1) / fib(n + 1);
d = a + (b - a) * fib(n) / fib(n + 1);
f1 = fx(c);
f2 = fx(d);
calls = 2;
while c ~= d
    n = n - 1;
    if f1 > f2
        new_a = c;
        new_b = b;
        new_c = d;
        new_d = a + (b - a) * fib(n) / fib(n + 1);
        new_f1 = f2;
        new_f2 = fx(d);
        calls = calls + 1;
    else
        new_b = d;
        new_d = c;
        new_c = a + (b - a) * fib(n - 1) / fib(n + 1);
        new_f2 = f1;
        new_f1 = fx(c);
        calls  = calls + 1;
    end
    if new_c == new_d
        break;
    else
        a = new_a;
        b = new_b;
        c = new_c;
        d = new_d;
        f1 = new_f1;
        f2 = new_f2;
    end
end
if fx(newc + delta) > f2
    min = (new_a + new_c + delta) / 2;
else
    min = (new_c + new_b) / 2;
end
fprintf('Fibonacci method\nMin at %f\nFunc calls %d\n', min, calls);