function y = f9(x)

t1 = length(x);

t3 = 1;
for i = 1:t1
    t2 = cos(x(i)/sqrt(i));
    t3 = t3*t2;
end

y = sum(x.*x)/4000-t3+1;