function y = myReplication(x, fitValue, n)
% ���ڴ�ԭ������Ⱥѡ��һЩ���������һ����Ⱥ���õ������̶�
% n��ʾҪѡ������ٸ�����



[fitValue, t11] = unique(fitValue);
x = x(t11, :);




t1 = min(fitValue);
t2 = fitValue-t1+1; %��fitValue����ɷǸ���
t3 = double(t2)/sum(t2); %���̶ĵ�ÿ���ֵĸ���

t4 = length(fitValue);

t5 = []; %��ʾ��Χ
for i = 1:t4
    if i == 1
        t6 = 0;
        t7 = t3(i);
    else
        t6 = sum(t3(1:(i-1)));
        t7 = t6+t3(i);
    end
    
    t5 = [t5; [t6, t7]];
end

%��������������ж������ĸ�����
t10 = '';
for i = 1:n
    t8 = rand;
    t9 = whichRegion(t5, t8);
    t10(i, :) = x(t9, :);
end
y = t10;

% 
% function y = whichRegion(region, x)
% t1 = size(region, 1);
% 
% for i = 1:t1
%     if x>=region(i, 1)&&x<=region(i, 2)
%         y = i;
%         return;
%     end
% end




