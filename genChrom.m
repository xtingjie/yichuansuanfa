function y = genChrom(a, b, m, n)
% 用于随机生成染色体，n是变量个数，m是种群大小，[a, b]是变量取值范围
t2 = [];
for i = 1:m
    t1 = randi([a, b], [1, n]);
    t3 = myCode(t1, a, b);
    t2  = [t2; t3];
end
y = t2;