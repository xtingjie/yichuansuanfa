function y = myMutation(x, prob)
% 用于基因变异，x是很多个染色体，一行是一条染色体（01字符串）
% n表示变异产生的染色体个数
% 采用单点变异

[t1, t2] = size(x);

t7 = [];
for i = 1:t1
    t4 = x(i, :);
    if rand<prob
        t3 = randi([1, t2]); %变异的位置
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
