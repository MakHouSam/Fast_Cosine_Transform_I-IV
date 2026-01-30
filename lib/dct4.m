function y = dct4(x) % input row vector with size 2^n
N2 = length(x);
n2 = N2/2;
if N2 == 2
    y = sqrt(2)*[cos(pi/8),sin(pi/8);sin(pi/8),-cos(pi/8)]* x';
else
    u2 = A_n(x);
    z3 = dct2((u2(1:n2))');
    z4 = dct2((u2(n2+1:N2))');
     w = TA_n([z3', z4']');
     y = PT_n(w);
end
end