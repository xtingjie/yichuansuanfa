
clear
a = -600; %取值下限
b = 600; %取值上限
m = 50; %种群大小
n = 10; %变量个数
f = @f9; %目标函数

% 生成初始种群
group = genChrom(a, b, m, n); % 生成m个初始个体， 有n个变量

bestFit = []; %存储各代最好的适应度值，看他是不是在下降

for i = 1:1000   %进化100代
    
    fitValue = myFit(f, group, a, n); %改函数
    
    groupCross = myCross(group, 0.8);
    
    groupMut = myMutation(group, 0.8);
    
    groupRep = myReplication(group, fitValue, m);
    
    group = [groupCross; groupMut; groupRep];
    
    fitValue2 = myFit(f, group, a, n); %改函数
    
    group = myReplication(group, fitValue2, m);
    
    bestFit = [bestFit, max(fitValue2)];
    
    x = myDecode(group, a, n);
    
    fprintf('%d\n', i);
end

plot(bestFit)
