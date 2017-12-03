function y = myDecode(x, a, n)
% x是待解码的种群，n是变量个数
% [a, b]是取值范围

[t4, t5] = size(x);
t1 = t5/n;
t3 = []; %用来装解码后的十进制数

for ii = 1:t4
    t7 = x(ii, :);
    for i = 1:n
        t2 = t7(((i-1)*t1+1):(i*t1));
        t6(ii, i) = bin2dec(t2)+a;
    end
end


y = t6;