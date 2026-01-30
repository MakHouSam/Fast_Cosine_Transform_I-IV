function y = dct3(x) % input vector with size 2^n
N1 = length(x);
n1 = N1/2;
if N1 == 2
    y = [1,1;1,-1]* x';
else
    u1 = P_n(x);
    z1 = dct3((u1(1:n1))'); 
    z2 = dct4((u1(n1+1:N1))');
     y = HT_n([z1', z2']');
end
end
% output is column vector