clear;%ţ�ٻ��������
lam=500e-9;%�趨����lam��500����)
A1=1;%����Դ��Ϊ��λ����
A2=A1;%Ĭ��Ϊ���
h=0.001;%͹͸�����˾������������h
R=0.1;%͹͸���뾶R
n=1;%Ш��������n
xm=5e-4;
ym=xm;               %�������ķ�Χxm��ym
n=1001;
xs=linspace(-xm,xm,n);%�����Բ�������������һλ����xs,ys��nΪ�ܵ�����
ys=linspace(-ym,ym,n);
[xs, ys] = meshgrid(xs, ys);%���ɸ���ǿ������ʱע�ʹ˾�
deta=h+R-sqrt(R^2-xs.^2-ys.^2)+lam/2;%��̲�
phi=2*pi*deta/lam;      %��λ��
E1=A1;%ƽ�沨1�ڽ������ϸ����E1
E2=A2.*exp(-1i*phi);%ƽ�沨2�ڽ������ϸ����E2
E=E1+E2;              %���������
I=abs(E).^2;%��ǿ
figure;
pcolor(xs,ys,I);%���ɸ���ͼ��
shading flat;
colormap gray;
% hold on;
% figure;
% plot(I);%���ɸ���ǿ������