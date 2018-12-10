function v = func_to_optim_conj(x, alpha, d, k)
v = func_to_optim_penalty(x+alpha*d, k);
end

