clear all;
xmax=100;
ymax=100; %设定屏幕范围
lambda=632.8e-6;
f=200; %设定入射光波长
n=1.0;
N=150;
x=linspace(-xmax,xmax,N);
y=linspace(-ymax,ymax,N);
for k=0:15
  d=0.39-0.00005*k; %M1和M2'空气膜厚度
  for i=1:N
    for j=1:N
      r(i,j)=sqrt(x(i)*x(i)+y(j)*y(j));
      B(i,j)=cos(pi*(2*n*d*cos(asin(n*sin(atan(r(i,j)/f)))))/lambda).^2; %干涉条纹
    end
  end
figure(gcf);
NClevels=255; %设定灰度
Br=2.5*B*NClevels;
image(x,y,Br); %画干涉图像
colormap(gray(NClevels));
set(gca,'Xtick',[]);
set(gca,'Ytick',[]);
drawnow
pause
end
