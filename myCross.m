function y = myCross(x, r)
% ���ѡ����������н���
% ���������һ�ν������һ���¸���, r���Ӵ������븸�������ı�ֵ

[t1, t2] = size(x);
n = t1*r;

y = '';
for i = 1:n
    t3 = randperm(t1);
    t4 = t3(1:2);
    t5 = x(t4, :); % t5����ѡ�������н��������
    
    t6 = randperm(t2-1);
    t7 = t6(1); %���ѡ�����Ľ����
    t8 = t5(1, :);
    t9 = t5(2, :);
    
    t10 = t8(1:t7);
    t11 = t9((t7+1):end);
    y(i, :) = [t10, t11];
end