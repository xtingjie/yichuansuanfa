function y = genChrom(a, b, m, n)
% �����������Ⱦɫ�壬n�Ǳ���������m����Ⱥ��С��[a, b]�Ǳ���ȡֵ��Χ
t2 = [];
for i = 1:m
    t1 = randi([a, b], [1, n]);
    t3 = myCode(t1, a, b);
    t2  = [t2; t3];
end
y = t2;