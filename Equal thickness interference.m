clear;
lambda=632.8e-9; %入射光波长
theta=0.1; %劈尖楔角?
n=1.33; %介质折射率
N=900; %N表示均匀取样个数，可以改变
x=linspace(0,600,N); %x为劈尖长度,单位mm
y=linspace(0,300,N/2); %y为劈尖宽度，单位mm
h=x*tan(theta);
Phi=2*n*h./lambda;
I=4*cos(Phi/2).^2;
graylevel=255;
Ir=(I/4)*graylevel;
subplot(2,1,1),image(x,y,Ir);
colormap(gray(graylevel)),
xlabel('劈尖长度/mm'),ylabel('劈尖宽度/mm'),title('条纹图')
subplot(2,1,2),plot(x,I),title('劈尖长度方向的光强分布')