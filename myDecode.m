function y = myDecode(x, a, n)
% x�Ǵ��������Ⱥ��n�Ǳ�������
% [a, b]��ȡֵ��Χ

[t4, t5] = size(x);
t1 = t5/n;
t3 = []; %����װ������ʮ������

for ii = 1:t4
    t7 = x(ii, :);
    for i = 1:n
        t2 = t7(((i-1)*t1+1):(i*t1));
        t6(ii, i) = bin2dec(t2)+a;
    end
end


y = t6;