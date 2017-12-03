function y = whichRegion(region, x)
t1 = size(region, 1);

for i = 1:t1
    if x>=region(i, 1)&&x<=region(i, 2)
        y = i;
        return;
    end
end