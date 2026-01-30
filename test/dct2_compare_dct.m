%% setup a random vector
m=10;
N=2^m;
x=rand(1,N);

%% time the calculation of dct2
tic
b1=dct2(x)'/sqrt(N);
time1 = toc
b1 = b1';

%% time the calculation of matlab built-in dct (should be faster)
tic
b2=dct(x);
time2 = toc
b2=b2';

%% check if dct2 and dct produce the same results
a=b1-b2;
d=max(a)

