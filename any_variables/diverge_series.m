function xMin = diverge_series(f, x0, eps)
xk = x0;
k = 0;
while norm(grad_fx(xk)) > eps
    xk = xk - grad_fx(xk)/(k + 1);
    k = k + 1;
end
fprintf('Iter: %d\n', k)
xMin = xk;
end

