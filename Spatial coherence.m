clear; 
d=0.05;   
D=1; 
A1=1; 
A2=1;
E=zeros(3000);
x=linspace(-0.0001,0.0001,3000);
y=linspace(-0.0001,0.0001,3000);
[x,y]=meshgrid(x,y);
r1=sqrt((x-d/2).^2+D^2);
r2=sqrt((x+d/2).^2+D^2);
for  n=1:20
    l=(100+50*n)*10^(-9);
    E1=A1./(sqrt(r1)).*exp(1i*r1*2*pi/l);
    E2=A2./(sqrt(r2)).*exp(1i*r2*2*pi/l);
    E=E+E1+E2;
end
I=abs(E).^2;
figure;
pcolor(x,y,I);
shading flat;
colormap (gray);
hold on;
figure;
shading interp
colormap(hsv);
mesh(x,y,I);