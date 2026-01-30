function y = HT_n(x) % transpose of orthogonal matrix, it's sqrt(2)*HT_n
    N = length(x);
    y = zeros(N,1);
    if mod(N, 2) == 0
        % For even N
        y(1:N/2) = x(1:N/2) + x(N/2+1:1:N);
        y(N/2+1:N) = x(N/2:-1:1) - x(N:-1:N/2+1);
        %y = 1/sqrt(2).*y;
    else
        % For odd N
        y(1:(N-1)/2) = x(1:(N-1)/2) + x((N+1)/2+1:1:N);
        y((N+1)/2) = sqrt(2)*x((N+1)/2);
        y((N+1)/2+1:N) = x((N-1)/2:-1:1) - x(N:-1:(N+1)/2+1);
        %y = 1/sqrt(2).*y;
    end
end
% output is column vector
