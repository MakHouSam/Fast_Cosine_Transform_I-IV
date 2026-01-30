function y = dct1(x) % input vector with size 2^ n + 1
N1 = length(x);
N2 = N1 - 1;
n1 = N2 /2;
if N1 == 3
    y = sqrt(2)*1/2*[1 ,1 ,0;0 ,0 , sqrt(2) ;1 , -1 ,0] *[1 ,0 ,1;0 , sqrt(2) ,0;1 ,0 , -1]* x';
else
   u1 = H_n(x);
   z1 = dct1((u1(1:n1 +1))'); % column vector
   z2 = dct3((u1(n1+2:N1))'); % column vector
    y = PT_n([ z1',z2']');
end
end
% output is column vector