function y = f8(x)

t3 = length(x);

t1 = -0.2*sqrt(sum(x.*x)/t3);

t2 = sum(cos(2*pi*x))/t3;

y = -20*exp(t1)-exp(t2)+20+exp(1);