function y = f7(x)

x = x/100;

t1 = length(x);
y=0;
for i = 1:t1
    t2 = x(i)^2-10*cos(2*pi*x(i))+10;
    y = y+t2;
end