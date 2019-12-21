%% Circular Convolution of discrete signal
clc;
clear all;
close all;
%% Taking input signal
x=input('enter x(n): ');
h=input('enter h(n): ');
n=length(x);
w=exp(-2i*pi/n);
%% Finding DFT of input signal
for k=1:n
    X(k)=0;
    H(k)=0;
    
    for j=1:n
        X(k)=x(j)*w^((j-1)*(k-1))+X(k);
        H(k)=h(j)*w^((j-1)*(k-1))+H(k);
    end
end
for k=1:n
    
    Y(k)=X(k)*H(k);
end
%% Finding IDFT
for m=1:n
    y(m)=0;
    for k=1:n
        y(m)=Y(k)*w^(-(m-1)*(k-1))+y(m);
    end
    y(m)=y(m)/n;
end

subplot(3,2,1)
stem(1:n,abs(X));grid on;
xlabel('n');
ylabel('x');
subplot(3,2,2)
stem(1:n,abs(h));grid on;
xlabel('n');
ylabel('h');
subplot(3,2,3)
stem(1:n,abs(y));
xlabel('n');
ylabel('y');
display(abs(y));
