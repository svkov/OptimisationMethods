function y = H_grad(x)
s1 = g1_grad(x) * max(0, g1(x));
s2 = g2_grad(x) * max(0, g2(x));
s3 = g3_grad(x) * max(0,  g3(x)) ;
s4 = g4_grad(x) * max(0, g4(x)) ;
s5 = g5_grad(x) * max(0, g5(x));
y = 2*(s1 + s2 + s3 + s4 + s5);
end

