a = 3;
b = 3.5;
e = 0.02;
xMin = b;
while abs(fxprime(xMin)) > e
    xMin = xMin - fxprime(xMin)/fx2prime(xMin);
end
fprintf(" Newton method \n Min at %f\n", xMin)