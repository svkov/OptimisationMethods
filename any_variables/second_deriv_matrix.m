function A = second_deriv_matrix(x)
A = [0 0; 0 0];
A(1, 1)  = exp(x(1) + x(2)) + 2;
A(1, 2) = exp(x(1) + x(2));
A(2, 1) = A(1, 2);
A(2, 2) = exp(x(1) + x(2)) + 4;
end

