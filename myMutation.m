function y = myMutation(x, prob)
% ���ڻ�����죬x�Ǻܶ��Ⱦɫ�壬һ����һ��Ⱦɫ�壨01�ַ�����
% n��ʾ���������Ⱦɫ�����
% ���õ������

[t1, t2] = size(x);

t7 = [];
for i = 1:t1
    t4 = x(i, :);
    if rand<prob
        t3 = randi([1, t2]); %�����λ��
        t5 = t4(t3);
        if t5=='0'
            t6 = '1';
        else
            t6 = '0';
        end
        t4(t3) = t6;
        t7 = [t7; t4];
    end
end

y = t7;
