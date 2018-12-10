function xMin = conj_grad(f, x0, eps)
d = -grad_fx(x0);
xk = x0;
n = size(x0, 2);
k = 1;
b = 0;
while norm(grad_fx(x0)) > eps
    alpha = fminbnd(@(alpha)func_to_optim_conj(xk, alpha, d), -1, 1);
    xk = xk + alpha*d;
    if rem(n, k + 1) == 0
        b = 0;
    else
        b = norm(grad_fx(xk)) ^ 2 / norm(grad_fx(x0));
    end
    
    d = -grad_fx(xk) + b*d;
    x0 = xk;
    k = k + 1;
end
fprintf('Iter: %d\n', k - 1);
xMin = xk;
end

