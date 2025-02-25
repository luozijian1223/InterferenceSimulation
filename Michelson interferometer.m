clear all;
xmax=100;
ymax=100; %�趨��Ļ��Χ
lambda=632.8e-6;
f=200; %�趨����Ⲩ��
n=1.0;
N=150;
x=linspace(-xmax,xmax,N);
y=linspace(-ymax,ymax,N);
for k=0:15
  d=0.39-0.00005*k; %M1��M2'����Ĥ���
  for i=1:N
    for j=1:N
      r(i,j)=sqrt(x(i)*x(i)+y(j)*y(j));
      B(i,j)=cos(pi*(2*n*d*cos(asin(n*sin(atan(r(i,j)/f)))))/lambda).^2; %��������
    end
  end
figure(gcf);
NClevels=255; %�趨�Ҷ�
Br=2.5*B*NClevels;
image(x,y,Br); %������ͼ��
colormap(gray(NClevels));
set(gca,'Xtick',[]);
set(gca,'Ytick',[]);
drawnow
pause
end
