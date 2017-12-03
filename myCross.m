function y = myCross(x, r)
% 随机选两个个体进行交叉
% 交叉次数，一次交叉产生一个新个体, r是子代个数与父代个数的比值

[t1, t2] = size(x);
n = t1*r;

y = '';
for i = 1:n
    t3 = randperm(t1);
    t4 = t3(1:2);
    t5 = x(t4, :); % t5就是选出来进行交叉的样本
    
    t6 = randperm(t2-1);
    t7 = t6(1); %随机选出来的交叉点
    t8 = t5(1, :);
    t9 = t5(2, :);
    
    t10 = t8(1:t7);
    t11 = t9((t7+1):end);
    y(i, :) = [t10, t11];
end
