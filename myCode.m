function y = myCode(x, a, b)
% ���ڽ�һ����������Ϊһ���������ַ�����Ҳ����Ⱦɫ��
% [a, b]������Ԫ��ȡֵ��Χ
t1 = ceil(log2(b-a+1)); %ÿ����ת��֮����ַ���λ��
t2 = dec2bin(x-a, t1);
[t3, t4] = size(t2);
y = reshape(t2', [1, t3*t4]);
