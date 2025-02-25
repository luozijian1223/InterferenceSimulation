clear;%牛顿环现象仿真
lam=500e-9;%设定波长lam（500纳米)
A1=1;%两光源均为单位幅度
A2=A1;%默认为相等
h=0.001;%凸透镜顶端距离接收屏距离h
R=0.1;%凸透镜半径R
n=1;%楔板折射率n
xm=5e-4;
ym=xm;               %接受屏的范围xm，ym
n=1001;
xs=linspace(-xm,xm,n);%用线性采样法生成两个一位数组xs,ys（n为总点数）
ys=linspace(-ym,ym,n);
[xs, ys] = meshgrid(xs, ys);%生成干涉强度曲线时注释此句
deta=h+R-sqrt(R^2-xs.^2-ys.^2)+lam/2;%光程差
phi=2*pi*deta/lam;      %相位差
E1=A1;%平面波1在接受屏上复振幅E1
E2=A2.*exp(-1i*phi);%平面波2在接受屏上复振幅E2
E=E1+E2;              %复振幅叠加
I=abs(E).^2;%光强
figure;
pcolor(xs,ys,I);%生成干涉图样
shading flat;
colormap gray;
% hold on;
% figure;
% plot(I);%生成干涉强度曲线