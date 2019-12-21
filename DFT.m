clc;
clear;
close all;
N=input('Enter the range of x[n]');
x=input('enter the value of x[n]');
n=length(N);
w=exp(-2*i*pi/n);
for k=1:n
    X_k(k)=0;
    for j=1:n
        X_k(k)=x(j)*w^((j-1)*(k-1))+ X_k(k);
    end
end
p=abs(X_k);
subplot(221)
stem(N,x)
xlabel('Time')
ylabel('Amplitude')
title('x[n]')
subplot(222)
stem(N,p)
title('spectrum of x[n]')
display(p)
