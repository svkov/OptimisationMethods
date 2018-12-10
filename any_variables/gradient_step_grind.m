function xMin = gradient_step_grind(f, x0, eps, alpha0, lambda)
n = size(x0, 2);
delta = 0.5;
xk = x0;
x = x0;
alpha = alpha0;
k = 1;
while norm(grad_fx(xk)) > eps
    x = x0 - alpha * grad_fx(x0);
    if f(x) - f(x0) <= -alpha * delta * (norm(grad_fx(x0)) ^ 2)
        x0 = xk;
        xk = x;
    else
        alpha = alpha * lambda;
    end
    k = k + 1;
end
fprintf('Iter: %d\n', k)
xMin = xk;
end


