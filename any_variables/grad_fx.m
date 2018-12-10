function [grad] = grad_fx(x)
grad = [0 0];
grad(1) = exp(x(1) + x(2)) + 2 * x(1);
grad(2) = exp(x(1) + x(2)) + 4 * x(2);
end

