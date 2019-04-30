clear,clc
x0=[-5:0.1:5];
y0=[];
for i=-1:0.1:1
  y0 = f1(x0)
end
x1=[-5:0.1:5];
 
%分段线性插值
y2=interp1(x0,y0,x1);
figure
plot(x0,y0,x1,y2,'r')
title('分段线性插值')
%三次样条插值
y3=interp1(x0,y0,x1,'spline');
figure
plot(x0,y0,x1,y3,'r')
title('三次样条插值')
%拉格朗日插值
y1=lagrange(x0,y0,x1)
figure
plot(x0,y0,x1,y1,'r')
title('拉格朗日插值')