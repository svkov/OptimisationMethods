function xMin = penaltyMethod(x0, eps)
k = 1;
while H(x0) > eps
    x0 = conj_grad(x0, k, eps / 10);
    k = k * 100;
end
xMin = x0;
end