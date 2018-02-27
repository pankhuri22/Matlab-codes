file = importdata('/home/pankhuri22/Documents/machine.data');
yo = file.data;
A = yo( 1:146 , 1:6);
y = yo( 1:146 , 7);
k = 5;
xout = ompfunc(y,A,k);
hillo = yo( 147:209 , 1:6);
yout = hillo*xout;
hulla = yo(147:209 , 7);

RMSE = sqrt(mean((hulla-yout).^2));
display(RMSE);


