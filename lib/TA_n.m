function TAx = TA_n(x) % input vector
    N = length(x);
    y = zeros(N,1);
    y(1:N/2) = x(1:N/2);
    y((N/2)+1:N) = x(N:-1:(N/2)+1);
    y((N/2)+2:2:N) = -y((N/2)+2:2:N);
    z = zeros(N,1);
    z(1) = sqrt(2)*y(1);
    z(2:N/2) = y(2:N/2) + y((N/2)+1:N-1);
    z((N/2)+1:N-1) = y(2:N/2) - y((N/2)+1:N-1);
    z(N) = -sqrt(2)*y(N);
    TAx = z;
end
% output is column vector