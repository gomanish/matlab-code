%%linear convolution of discrete signal

clc;
close all;
clear all;
xn=input('enter the range of x[n] : ');
x=input('enter x[n] : ');
hn=input('enter the range of h[n] : ');
h=input('enter h[n] : ');
yn=min(xn)+min(hn):max(xn)+max(hn);
k=length(yn);
y=zeros(1,k);
l=length(x);
m=length(h);
for i=1:k;
    for j=1:l;
        p=i-j+1;
        if ((p>0)&&(p<m+1));
            y(1,i)=y(1,i)+x(1,j)*h(1,p);
        end
    end
end
subplot(221);
stem(xn,x);grid on;
title('x[n]');
xlabel('time');
ylabel('magnitude');
subplot(222)
stem(hn,h);grid on;
title('h[n]');
xlabel('time');
ylabel('magnitude');
subplot(223);
stem(yn,y);grid on;
title('y[n]');
xlabel('time');
ylabel('magnitude');
