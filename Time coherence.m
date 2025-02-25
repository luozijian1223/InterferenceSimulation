clear all
lam=521*10.^(-9);
l=0.1;
D=0.1;
d=0.0001;
b=0.0001;%光源大小，可调0.01对比
x=linspace(-0.001,0.001,1000);
y=linspace(-0.000001,0.000001,1000);
I=2*(1+sin(pi*b*d/(l*lam))/(pi*b*d/(l*lam))*cos(2*pi*d*x/(lam*D)));
nc=255;
br=I/4*nc;
figure;
subplot(2,1,1);
image(x,y,br);
colormap(gray(nc));
subplot(2,1,2);
plot(x,I);
hold on;
%
% figure;
% [x,y]=meshgrid(x,y);
% shading interp
% colormap(hsv);
% plot3(x,y,I);