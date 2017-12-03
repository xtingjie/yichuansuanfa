function y = f4(x)

t1 = length(x);

t3 = 0;
for i = 1:(t1-1)
    
    t2 = 100*(x(i+1)-(x(i))^2)^2+(x(i)-1)^2;
    
    t3 = t3+t2;
end

y = t3;