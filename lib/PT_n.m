function PTx = PT_n(x) % transpose of even-odd permutation matrix
    N = length(x);
    PTx = zeros(N, 1);
    if mod(N, 2) == 0
        % For even N: [x0, x2, ..., xN-2, x1, x3, ..., xN-1]
        PTx(1:2:N) = x(1:N/2);
        PTx(2:2:N) = x(N/2+1:N);
    else
        % For odd N: [x0, x2, ..., xN-1, x1, x3, ..., xN-2]
        PTx(1:2:N) = x(1:(N+1)/2);
        PTx(2:2:N-1) = x(((N+1)/2)+1:N);
    end
end
% output is column vector