function xMin = gradient_step_const(f, x0, eps) % not work
n = size(x0, 2);
delta = 0.5;
alpha = (1 - delta) / 99;
xk = x0;
x = x0;
k = 0;
while norm(grad_fx(xk)) > eps
    x = x0 - alpha * grad_fx(x0);
    if f(x) - f(x0) <= -alpha * delta * (norm(grad_fx(x0)) ^ 2)
        x0 = xk;
        xk = x;
    end
    k = k + 1;
end
fprintf('Iter: %d\n', k)
xMin = xk;
end




