
clear
a = -600; %ȡֵ����
b = 600; %ȡֵ����
m = 50; %��Ⱥ��С
n = 10; %��������
f = @f9; %Ŀ�꺯��

% ���ɳ�ʼ��Ⱥ
group = genChrom(a, b, m, n); % ����m����ʼ���壬 ��n������

bestFit = []; %�洢������õ���Ӧ��ֵ�������ǲ������½�

for i = 1:1000   %����100��
    
    fitValue = myFit(f, group, a, n); %�ĺ���
    
    groupCross = myCross(group, 0.8);
    
    groupMut = myMutation(group, 0.8);
    
    groupRep = myReplication(group, fitValue, m);
    
    group = [groupCross; groupMut; groupRep];
    
    fitValue2 = myFit(f, group, a, n); %�ĺ���
    
    group = myReplication(group, fitValue2, m);
    
    bestFit = [bestFit, max(fitValue2)];
    
    x = myDecode(group, a, n);
    
    fprintf('%d\n', i);
end

plot(bestFit)
