function Px = P_n(x) % even-odd permutation matrix
    N = length(x);
    Px = zeros(N, 1);
    if mod(N, 2) == 0
        % For even N: [x0, x2, ..., xN-2, x1, x3, ..., xN-1]
        Px(1:N/2) = x(1:2:N);
        Px(N/2+1:N) = x(2:2:N);
    else
        % For odd N: [x0, x2, ..., xN-1, x1, x3, ..., xN-2]
        Px(1:(N+1)/2) = x(1:2:N);
        Px(((N+1)/2)+1:N) = x(2:2:N-1); 
    end
end
% output is column vector