function xMin = newton(f, x0, eps)
k = 0;
while norm(grad_fx(x0)) > eps
    x0 = x0 - inv(second_deriv_matrix(x0))*grad_fx(x0)';
    k = k + 1;
end
fprintf('Iter: %d\n', k);
xMin = x0(:, 1)';
end

