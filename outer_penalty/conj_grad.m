function xMin = conj_grad(x0, i, eps)
d = -func_to_optim_grad(x0, i);
xk = x0;
n = size(x0, 2);
k = 1;
b = 0;
while norm(func_to_optim_grad(x0, i)) > eps
    alpha = fminbnd(@(alpha)func_to_optim_conj(xk, alpha, d, i), -1, 1);
    xk = xk + alpha*d;
    if rem(n, k + 1) == 0
        b = 0;
    else
        b = norm(func_to_optim_grad(xk, i)) ^ 2 / norm(func_to_optim_grad(x0, i)) ^ 2;
    end
    
    d = -func_to_optim_grad(xk, i) + b*d;
    x0 = xk
    k = k + 1;
end
xMin = xk;
end

