function y = f6(x)

t1 = length(x);

t2 = 0;

for i = 1:t1
    t3 = -x(i)*sin(sqrt(abs(x(i))));
    t2 = t2+t3;
end

y = t2;