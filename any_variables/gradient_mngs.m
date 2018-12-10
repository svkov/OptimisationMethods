function [xMin] = gradient_mngs(f, x0, eps)
xk = x0;
k = 0;
while norm(grad_fx(xk)) > eps
    alpha = fminbnd(@(alpha)func_to_optim(xk, alpha), 0, 1);
    xk = x0 - alpha * grad_fx(x0);
    x0 = xk;
    k = k + 1;
end
fprintf('Iter: %d\n', k)
xMin = xk;
end

