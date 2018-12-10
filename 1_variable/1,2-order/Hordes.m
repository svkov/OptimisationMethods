a = 3;
b = 3.5;
e = 0.02;
xk1 = b;
xk2 = a;
while abs(fxprime(xk1)) > e
    xk = xk1 - (fxprime(xk1) * (xk2 - xk1))/(fxprime(xk2) - fxprime(xk1));
    xk2 = xk1;
    xk1 = xk;
end
xMin = xk;
fprintf("Hordes method \nMin at %f\n", xMin);