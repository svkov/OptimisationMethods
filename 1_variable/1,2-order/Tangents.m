a = 3;
b = 3.5;
e = 0.02;
delta = 0.001;
a1 = fxprime(a);
b1 = fxprime(b);
if a1 < 0
    xMin = a;
elseif b1 > 0
    xMin = b;
end
c = (fx(b) - fx(a) + a1 * a - b1 * b) / (a1 - b1);
while abs(fxprime(c)) > e
    if fxprime(c)  > 0
        b = c;
    elseif fxprime(c) < 0
        a = c;
    else
        break;
    end
    a1 = fxprime(a);
    b1 = fxprime(b);
    c = (fx(b) - fx(a) + a1 * a - b1 * b) / (a1 - b1);
end
xMin = c;
fprintf(" Tangents \n Min at %f\n", xMin);