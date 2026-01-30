function Ax = A_n(x) % input row vector
N = length(x);
Ax(1:(N/2)) = cos((1:2:N-1)*pi/(4*N)).*x(1:N/2) + sin((1:2:N-1)*pi/(4*N)).*x(N:-1:(N/2)+1);
Ax((N/2)+1:N) = -sin((N-1:-2:1)*pi/(4*N)).*x(N/2:-1:1) + cos((N-1:-2:1)*pi/(4*N)).*x((N/2)+1:1:N);  
Ax(N/2+2:2:N) = -Ax(N/2+2:2:N);
Ax = Ax';
end
% output is column vector