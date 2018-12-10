function y = H(x)
s1 = max(0, g1(x))^2 ;
s2 = max(0, g2(x))^2;
s3 = max(0, g3(x))^2 ;
s4 = max(0, g4(x))^2 ;
s5 = max(0, g5(x))^2 ;
y = s1 + s2 + s3 + s4 + s5;
end