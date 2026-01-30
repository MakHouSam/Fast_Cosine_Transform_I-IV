function y = dct2(x) % input vector with size 2^n
N1 = length(x);
n1 = N1/2;
if N1 == 2
    y = [1,1;1,-1]* x';
else
    u1 = H_n(x);
    z1 = dct2((u1(1:n1))'); 
    z2 = dct4((u1(n1+1:N1))');
     y = PT_n([z1', z2']');
end
end
% output is column vector