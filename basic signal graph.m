clc;
close all;
clear all;
%%stpe function
n=-5:5;
e=[zeros(1,5) ones(1,6)];
subplot(321);
stem(n,e); grid on;
title('step function');
xlabel('time');
ylabel('magnitude');

%%impulse function
e=[zeros(1,5) ones(1,1) zeros(1,5)];
subplot(322);
stem(n,e); grid on;
title('impulse function');
xlabel('time');
ylabel('magnitude');

%%ramp function
e=[zeros(1,5) ones(1,6)];
u=n.*e;
subplot(323);
stem(n,u); grid on;
title('ramp function');
xlabel('time');
ylabel('magnitude');

%%sin function
n=-5:0.5:5;
u=sin(n);
subplot(324);
stem(n,u);
title('sin function');
xlabel('time');
ylabel('magnitude');
%%cosine function
n=-5:0.5:5;
u=cos(n);
subplot(325);
stem(n,u);
title('cosine function');
xlabel('time');
ylabel('magnitude');

%%exponential function
n=-5:0.5:5;
u=exp(n);
subplot(326);
stem(n,u);grid on;
title('exponential function');
xlabel('time');
ylabel('magnitude');
