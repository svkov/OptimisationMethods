function y= func_to_optim_grad(x, k)
y = f_grad(x) + k * H_grad(x);
end

