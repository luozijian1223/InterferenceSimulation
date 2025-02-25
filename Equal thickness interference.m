clear;
lambda=632.8e-9; %����Ⲩ��
theta=0.1; %����Ш��?
n=1.33; %����������
N=900; %N��ʾ����ȡ�����������Ըı�
x=linspace(0,600,N); %xΪ���ⳤ��,��λmm
y=linspace(0,300,N/2); %yΪ�����ȣ���λmm
h=x*tan(theta);
Phi=2*n*h./lambda;
I=4*cos(Phi/2).^2;
graylevel=255;
Ir=(I/4)*graylevel;
subplot(2,1,1),image(x,y,Ir);
colormap(gray(graylevel)),
xlabel('���ⳤ��/mm'),ylabel('������/mm'),title('����ͼ')
subplot(2,1,2),plot(x,I),title('���ⳤ�ȷ���Ĺ�ǿ�ֲ�')