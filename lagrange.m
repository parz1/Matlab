function yy=lagrange(x,y,xi)
m=length(x);
n=length(y);
if m ~= n , error('����x��y�ĳ��ȱ���һ��'); end;
s=0;
for i=1 : n
z=ones(1,length(xi));
for j=1 : n
if j ~= i
z=z.*(xi-x(j))./(x(i)-x(j));
end
end
s=s+z*y(i);
end
yy=s;