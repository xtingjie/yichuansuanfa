function [ y ] = myFit(f, x, a, n)

% 计算一个种群的所有样本的适应度值，如果求函数的最小值，求适应度值的时候就加个负号

% [a, b]是变量取值范围， n是变量个数

t1 = myDecode(x, a, n); %先对x种群进行解码，变成十进制

[t2, t3] = size(t1);

for i = 1:t2
    
    y(i) = -f(t1(i, :));
    
end


