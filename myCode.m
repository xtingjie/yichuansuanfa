function y = myCode(x, a, b)
% 用于将一个数组编码成为一个二进制字符串，也就是染色体
% [a, b]是数组元素取值范围
t1 = ceil(log2(b-a+1)); %每个数转换之后的字符串位数
t2 = dec2bin(x-a, t1);
[t3, t4] = size(t2);
y = reshape(t2', [1, t3*t4]);
