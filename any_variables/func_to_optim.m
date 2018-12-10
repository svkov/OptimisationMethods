function v = func_to_optim(x, alpha)
v = fx(x - alpha * norm(grad_fx(x)));
end

