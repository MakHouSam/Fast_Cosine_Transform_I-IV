function y = H_n(x) % orthogonal matrix, it's sqrt(2)*H_n
    N = length(x);
    y = zeros(N,1);
    if mod(N, 2) == 0
        % For even N
        y(1) = x(1) + x(N);
        y(2:N/2) = x(2:N/2) + x(N-1:-1:(N/2)+1);
        y(N/2+1) = x(1) - x(N);
        y(N/2+2:N) = x(2:N/2) - x(N-1:-1:(N/2)+1);
        %y = 1/sqrt(2).*y;
    else
        % For odd N
        y(1) = x(1) + x(N);
        y(2:(N-1)/2) = x(2:(N-1)/2) + x(N-1:-1:((N-1)/2)+2);
        y((N+1)/2) = sqrt(2)*x((N+1)/2);
        y((N+1)/2+1) = x(1) - x(N);
        y((N+1)/2+2:N) = x(2:(N-1)/2) - x(N-1:-1:((N-1)/2)+2);
        %y = 1/sqrt(2).*y;
    end
end
% output is column vector
